var request = require('request'),
    defer = require('deferred'),
    env = (!process.env.BOT_TOKEN) ? require('./env.js') : undefined,
    Botcommands = require('./lib/bot_command.js'),
    Api = require('./lib/api_req.js'),
    Solat = require('./lib/solat.js');

var solat_api_url = process.env.SOLAT_API_URL || 'http://mpt.i906.my/mpt.json',
    bot_username = process.env.BOT_USERNAME || 'SolatimeBot',
    solat_db = process.env.SOLAT_DB || 'solat.db';

var _bot = require('vow-telegram-bot'),
    bot = new _bot({
        token: process.env.BOT_TOKEN || null ,
        polling: {
            timeout: 3,
            limit: 100
        }
    });

var req = new Api(solat_api_url, request, defer),
    solat = new Solat(solat_db, defer),
    botcommands = new Botcommands(req, bot, solat);


bot.on('message', function(data) {
    console.log(data)
    console.info('===========')
    console.log(data.from.id, data.chat.id)

    solat.getChatService().done(function(service) {

        service.updateChatList(bot_username, data);

    });

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
});