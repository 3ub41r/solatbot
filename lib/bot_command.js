// Bot Command Modules
// -------------------------
module.exports = function BotCommands(req, bot, solat) {
    return {
        waktu: function(data) {
            
            var moment = require('moment');

            // Default location
            var location = 'jhr-2';

            // Get location from solat
            solat.getChatService().done(function(service) {

                service.read(data.chat.id).done(function(chat) {

                    location = chat.locations_code;

                    req.solat(location).done(function(res) {

                        var msg = 'Waktu solat harini:\n';

                        // Error in response
                        if (res.meta.code == 400) {

                            switch(res.meta.errorType) {
                                case 'ERROR_NO_PLACE':
                                    msg = 'Lokasi tidak dinyatakan dengan betul.\nSila kemaskini /lokasi.';
                                    break;
                                default:
                                    msg = 'Maaf berlaku ralat yang tidak dapat dikenalpasti.\nSila cuba lagi.';
                            }

                        } else {

                            var w = ['subuh', 'syuruk', 'zuhur', 'asar', 'maghrib', 'isyak'], 
                                t = res.response.times,  
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

                            msg += '\n"Dan dirikanlah solat, tunaikanlah zakat dan ruku\'lah berserta orang-orang yang ruku\'"\nAl-Baqarah: 43';

                        }

                        bot.sendMessage({
                            chat_id: data.chat.id,
                            text: msg
                        });
                    });
                    
                });
                
            });

        }
    }
}