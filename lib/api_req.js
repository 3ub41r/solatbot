module.exports = function api_req(url, request, _defer) {
    return {
        callback: function(defer) {
            return function(err, res, body) {
                
                var a;

                try {

                    a = JSON.parse(body);

                } catch(err) {

                    a = body;

                }

                if (err && err != 'Bad response code') {

                    // Resolve even if location code is invalid
                    defer.reject(err);
                    
                } else {
                    
                    defer.resolve(a)
                }

            }
        },
        solat: function(location) {
            
            var q = _defer(), _this = this;

            // Cache for 30 minutes
            request.set({
                limit: 1800000
            });

            request(url + '?filter=1&code=' + location, _this.callback(q));
            return q.promise;

        }
    }
}