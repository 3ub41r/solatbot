// Bot Command Modules
// -------------------------
module.exports = function BotCommands(req, bot) {
    return {
        waktu: function(data, txtarray, request) {
            var url = 'http://mpt.i906.my/mpt.json?code=jhr-2&filter=1';
            request(url, function(err, res, body) {                
                var w = ['subuh', 'syuruk', 'zuhur', 'asar', 'maghrib', 'isyak'], 
                    t = JSON.parse(body).response.times, 
                    msg = 'Waktu solat harini (Johor Bahru):\n', 
                    next,
                    cur = moment(),
                    closest;

                // Loop through solat times
                for (var i = 0; i < w.length; i++) {
                    // Skip syuruk - not a solat time
                    if (i == 1)
                        continue;

                    var unix = moment.unix(t[i]), 
                        time = unix.format('HH:mm');

                    // Get next solat time
                    if (unix.diff(cur, 'minutes') >= 0 && closest == undefined) {
                        closest = w[i];
                        // Friday
                        if (cur.day() == 5 && w[i] == 'zuhur') 
                            closest = 'Jumaat';

                        next = 'In sya Allah lepas ni solat ' + closest + ' pada jam ' + time + '\n\n';
                    }
                    msg += '/solat ' + w[i] + ' (' + time + ')\n';
                }
                // Prepend next solat time
                if (next != undefined)
                    msg = next + msg;

                msg += '\nSumber: ' + url + '\n';
                msg += '\n"Dan dirikanlah solat, tunaikanlah zakat dan ruku\'lah berserta orang-orang yang ruku\'"\nAl-Baqarah: 43';

                bot.sendMessage({
                    chat_id: data.chat.id,
                    text: msg
                })
            })
        }
    }
}