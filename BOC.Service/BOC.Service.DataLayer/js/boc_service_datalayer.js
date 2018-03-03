"use strict";
define("databaseObjects/ConnectionObject", ["require", "exports"], function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    /**
     * This class represents the connection object
     */
    var ConnectionObject = /** @class */ (function () {
        /**
         * Provide the values for database, server name to intialize the Connection object.
         */
        function ConnectionObject(servername, databaseName, port, username, password) {
            this.serverName = servername;
            this.databaseName = databaseName;
            this.port = port;
            this.username = username;
            this.password = password;
        }
        Object.defineProperty(ConnectionObject.prototype, "ServerName", {
            /**
             * Gets the server name property
             */
            get: function () {
                return this.serverName;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(ConnectionObject.prototype, "DatabaseName", {
            /**
             * Gets the database name
             */
            get: function () {
                return this.databaseName;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(ConnectionObject.prototype, "Port", {
            /**
             * Gets the port numbers
             */
            get: function () {
                return this.port;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(ConnectionObject.prototype, "Username", {
            /**
             * Gets the username
             */
            get: function () {
                return this.username;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(ConnectionObject.prototype, "Password", {
            /**
             * Gets the password
             */
            get: function () {
                return this.password;
            },
            enumerable: true,
            configurable: true
        });
        return ConnectionObject;
    }());
    exports.ConnectionObject = ConnectionObject;
});
define("databaseObjects/DbConnection", ["require", "exports"], function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
});
