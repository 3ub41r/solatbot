module.exports = function LocationService(db) {
    
    return {

        create: function (location) {

            db.run('INSERT INTO Locations (code, name, state) VALUES (?, ?, ?)', 
                location.code,
                location.name,
                location.state
            );

        },
        read: function (locationCode) {

            db.get('SELECT * FROM Locations WHERE code = ?', locationCode);

        },
        update: function (location) {

            db.run('UPDATE Locations SET name = ?, state = ? WHERE code = ?',                 
                location.name,
                location.state,
                location.code
            );

        },
        delete: function (locationCode) {

            db.run('DELETE FROM Locations WHERE code = ?', locationCode);

        }


    };
}