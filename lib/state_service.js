module.exports = function StateService(db, _defer) {
    
    return {

        read: function(stateId) {

            var d = _defer();

            db.get('SELECT * FROM States WHERE id = ?', stateId, function(err, row) {
                if (err) d.reject(err);
                d.resolve(row);
            });
            return d.promise;

        },
        getAll: function() {

            var d = _defer();

            db.all('SELECT * FROM States', function(err, rows) {
                if (err) d.reject(err);
                d.resolve(rows);
            });
            return d.promise;

        }

    };
}