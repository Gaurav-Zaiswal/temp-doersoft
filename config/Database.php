<?php
class Database
{
    // db setup
    private $host = 'localhost';
    private $db_name = 'doersoft';
    private $username = 'root';
    private $pwd = '';
    private $conn;

    // db connection
    public function connect()
    {
        $this->conn = null;

        try{
            // try to connect the database 
            // syntax: PDO(database:host; dbname=(dbname, db_user, db_pwd))
            $this->conn = new PDO('mysql:host='.$this->host.';' .
            'dbname='.$this->db_name, $this->username, $this->pwd.';'                                                                         
            );

            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        }catch(PDOException $e){
            echo 'Connection error:'. $e->getMessage(); 
        }

        return $this->conn;
    }
}
