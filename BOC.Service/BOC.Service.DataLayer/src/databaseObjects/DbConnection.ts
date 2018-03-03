import * as conn from "./ConnectionObject";
/**
 * Database connection interface
 */
export interface IDbConnection {

        /**
         * Connection string
         */
       ConnectionObjects: conn.ConnectionObject;

       /**
        * Connection timeout property
        */
       ConnectionTimeout: number;
   }
