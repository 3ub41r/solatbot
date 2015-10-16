module.exports = function api_req(url, request, _defer) {
    return {
        callback: function(defer) {
            return function(err, res, body) {
                var a;
                if (err) {
                    defer.reject(err)
                } else {
                    // Since the response is not always JSON,
                    // we need to have some checking in the resolved callbacks.
                    try {
                        a = JSON.parse(body);
                    } catch(err) {
                        a = body;
                    }
                    defer.resolve(a)
                }
            }
        },
        solat: function(location) {
            
            var q = _defer(), _this = this;

            // Cache for 30 minutes
            request.set('limit', 1800000);

            request(url + '?filter=1&code=' + location, _this.callback(q));
            return q.promise;

        }
    }
}