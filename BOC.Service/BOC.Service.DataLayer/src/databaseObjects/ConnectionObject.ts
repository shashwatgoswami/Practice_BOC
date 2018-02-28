module boc.service.datalayer.databaseObjects {
    /**
     * This class represents the connection object
     */
    export class ConnectionObject {
        private readonly _serverName : string;
        private readonly _databaseName : string;
        private readonly _port : number;
        private readonly _username : string;
        private readonly _password : string;

        /**
         * Provide the values for database, server name to intialize the Connection object.
         */
        constructor(servername : string, databaseName : string, port : number, username : string, password : string) {
            this._serverName = servername;
            this._databaseName = databaseName;
            this._port = port;
            this._username = username;
            this._password = password;
        }

        /**
         * Gets the server name property
         */
        get ServerName(): string {
            return this._serverName;
        }

        /**
         * Gets the database name
         */
        get DatabaseName(): string {
            return this._databaseName;
        }

        /**
         * Gets the port numbers
         */
        get Port(): number {
            return this._port;
        }

        /**
         * Gets the username
         */
        get Username(): string {
            return this._username;
        }

        /**
         * Gets the password
         */
        get Password(): string {
            return this._password;
        }

    }
}