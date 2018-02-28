module boc.service.datalayer.databaseObjects {
    /**
     * Database connection interface
     */
    export interface IDbConnection {

        /**
         * Connection string
         */
        ConnectionObject: ConnectionObject;

        /**
         * Connection timeout property
         */
        ConnectionTimeout: number;
    }
}