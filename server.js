var request = require('request'),
    defer = require('deferred'),
    env = (!process.env.BOT_TOKEN) ? require('./env.js') : undefined;

var solat_api_url = process.env.SOLAT_API_URL || 'http://mpt.i906.my/mpt.json';

var _bot = require('vow-telegram-bot'),
    bot = new _bot({
        token: process.env.BOT_TOKEN || null ,
        polling: {
            timeout: 3,
            limit: 100
        }
    });

