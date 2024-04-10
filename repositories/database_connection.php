<?php

    class DatabaseConnection{
        public static $connexion = null;
        public function load_db (){
            if(is_null(self::$connexion)){
                // self::$connexion = new mysqli('remotemysql.com', 'Chu2uV1pit', 'JPWCBdTMWd', 'Chu2uV1pit');
                self::$connexion = new mysqli('localhost', 'root', '', 'initial_db');
            }
            return self::$connexion;
        }

        function __construct(){
        }
    }
?>