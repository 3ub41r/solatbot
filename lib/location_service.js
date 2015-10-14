module.exports = function LocationService(db, _defer) {
    
    return {

        getAll: function() {

            var d = _defer();

            db.all('SELECT * FROM Locations', function(err, rows) {
                if (err) d.reject(err);
                d.resolve(rows);
            });
            return d.promise;

        },
        getByStateId: function(stateId) {

            var d = _defer();

            db.all('SELECT * FROM Locations WHERE states_id = ?', stateId, function(err, rows) {
                if (err) d.reject(err);
                d.resolve(rows);
            });
            return d.promise;

        }

    };
}