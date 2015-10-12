module.exports = function ChatService(db, _defer) {
    
    return {

        create: function(chat) {

            db.run('INSERT INTO Chats (id, locations_code) VALUES (?, ?)', 
                chat.id, 
                chat.locations_code
            );

        },
        read: function(chatId) {

            var d = _defer();

            db.get('SELECT * FROM Chats WHERE id = ?', chatId, function(err, row) {
                if (err) d.reject(err);
                d.resolve(row);
            });
            return d.promise;

        },
        update: function(chat) {

            db.run('UPDATE Chats SET locations_code = ? WHERE id = ?', 
                chat.locations_code, 
                chat.id
            );

        },
        delete: function(chatId) {

            db.run('DELETE FROM Chats WHERE id = ?', chatId);

        },
        updateChatList: function(botUsername, data) {

            var _this = this;

            // Bot left
            if (data.left_chat_participant && data.left_chat_participant.username == botUsername) {

                this.delete(data.chat.id);

            } else {

                // Look for chatId in list
                db.get('SELECT * FROM Chats WHERE id = ?', data.chat.id, function(err, row) {

                    if (row == undefined) {
                        // Add location
                        _this.create({ id: data.chat.id, locations_code: 'jhr-2'});
                    }

                });

            }

        }


    };
}