var request = require('request'),
    defer = require('deferred'),
    env = (!process.env.BOT_TOKEN) ? require('./env.js') : undefined,
    Botcommands = require('./lib/bot_command.js'),
    Api = require('./lib/api_req.js'),
    Chats = require('./lib/chat.js');

var solat_api_url = process.env.SOLAT_API_URL || 'http://mpt.i906.my/mpt.json',
    bot_username = process.env.BOT_USERNAME || 'SolatimeBot',
    chats_file = process.env.CHATS_FILE || 'chats.json';

var _bot = require('vow-telegram-bot'),
    bot = new _bot({
        token: process.env.BOT_TOKEN || null ,
        polling: {
            timeout: 3,
            limit: 100
        }
    });

var req = new Api(solat_api_url, request, defer),
    botcommands = new Botcommands(req, bot),
    chats = new Chats(chats_file);


chats.add('123123120');
chats.add('123123122');
chats.add('123123123');
chats.add('123123124');
chats.add('123123125');


console.log(chats.list);

chats.remove('123123123');
console.log(chats.list);


bot.on('message', function(data) {
    console.log(data)
    console.info('===========')
    console.log(data.from.id, data.chat.id)

    // Bot joined group / user chat
    if(data.new_chat_participant.username == bot_username) {
        chats.add(data.chat.id);
        console.log(chats.json);

    } else {

        if (data.text.charAt(0) === '/') {
            var a = data.text.split(' ');
            try {
                botcommands[a[0].slice(1)](data, a, request);
            } catch(error) {
                console.log(error);
                bot.sendMessage({
                    chat_id: data.from.id,
                    text: 'Belum reti la macam mana nak ' + a
                })
            }
        }

    }
});

// var interval = setInterval(function() {

// }, 1000);