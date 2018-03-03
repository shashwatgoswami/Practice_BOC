/**
 * This class represents the connection object
 */
export class ConnectionObject {
        private readonly serverName: string;
        private readonly databaseName: string;
        private readonly port: number;
        private readonly username: string;
        private readonly password: string;

        /**
         * Provide the values for database, server name to intialize the Connection object.
         */
        constructor(servername: string, databaseName: string, port: number, username: string, password: string) {
            this.serverName = servername;
            this.databaseName = databaseName;
            this.port = port;
            this.username = username;
            this.password = password;
        }

        /**
         * Gets the server name property
         */
        get ServerName(): string {
            return this.serverName;
        }

        /**
         * Gets the database name
         */
        get DatabaseName(): string {
            return this.databaseName;
        }

        /**
         * Gets the port numbers
         */
        get Port(): number {
            return this.port;
        }

        /**
         * Gets the username
         */
        get Username(): string {
            return this.username;
        }

        /**
         * Gets the password
         */
        get Password(): string {
            return this.password;
        }

}
