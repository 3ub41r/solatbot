var jsonfile = require('jsonfile'),
    _file,
    _list = [];

function persist(l) {

    console.log('persist: ' + l);

    // Empty file
    jsonfile.writeFile(_file, '', function(err) {
        if (err) {
            console.error(err);
        }

        // Rewrite to file
        jsonfile.writeFile(_file, l, {spaces: 2}, function(err) {
            if (err) {
                console.error(err);
            }
        });
    });
}

module.exports = Chats;

function Chats(file) {
    
    _file = file;
    this.list = [];
    persist(this.list);

}

Chats.prototype.add = function(chatId) {
    
    this.list.push(chatId);
    persist(this.list);
    
};

Chats.prototype.remove = function(chatId) {

    // Remove chat id
    for(var i = this.list.length - 1; i--;){
        if (this.list[i] === chatId) this.list.splice(i, 1);
    }
    // Array is empty
    if (this.list.length == 1 && this.list[0] == chatId)
        this.list = [];

    persist(this.list);

};