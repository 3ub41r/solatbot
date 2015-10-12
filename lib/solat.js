var sqlite3 = require('sqlite3').verbose(), 
    fs = require('fs'),
    ChatService = require('./chat_service'),
    LocationService = require('./location_service');

module.exports = function Solat(db, _defer) {
    return {

        getDB: function(db) {

            var d = _defer();

            install = 'install.sql';

            // Create db file
            fs.exists(db, function(exists) {

                if (!exists) {

                    // Create file
                    fs.open(db, 'w', function(err) {
                        if (err) {
                            d.reject(err);
                        }

                        var _db = new sqlite3.Database(db);

                        // Install
                        fs.readFile(install, 'utf8', function(err, data) {

                            if (err) {
                                throw err;
                            }

                            // Execute install.sql
                            _db.exec(data, function(err) {
                                if (err) {
                                    throw err;
                                }
                                d.resolve(_db);
                                
                            });

                        });

                    });

                } else {

                    d.resolve(new sqlite3.Database(db));

                }
                
            });
            return d.promise;

        },
        getChatService: function() {

            var d = _defer(), _this = this;

            _this.getDB(db).done(function(_db) {

                d.resolve(new ChatService(_db));

            }, function(err) {
                d.reject(err);
            });
            return d.promise;

        },
        getLocationService: function() {

            var d = _defer(), _this = this;

            _this.getDB(db).done(function(_db) {

                d.resolve(new LocationService(_db));

            }, function(err) {
                d.reject(err);
            });
            return d.promise;

        }

    }

}