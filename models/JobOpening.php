<?php
class JobOpening{
    //db configs
    private $conn;
    private $table = 'job_opening';

    // JobOpening table attributes
    public $job_id;
    public $opened_on;
    public $is_open;
    public $job_title;
    public $job_type;
    public $qualification;
    public $exp;
    public $req;
    public $duty;
    public $salary;
    public $extra_constrain;

    // database connection initializing
    public function __construct($db)
    {
        $this->conn = $db;
    }

    // get currently opened job positions
    public function readCurrentlyOpenJob(){
        // read query
        $query = 'SELECT 
        t.jb_type as job_type,
        j.job_title,
        j.qualification,
        j.exp,
        j.req,
        j.duty,
        j.salary,
        j.extra_constrain,
        j.opened_on
        FROM 
        '.$this->table.' j
        LEFT JOIN
        job_type t ON j.is_open=TRUE AND t.jb_type_id = j.job_id
        ORDER BY j.created_on DESC';

        // prepare the query into a statement
        $stmt = $this->conn->prepare($query);

        // execute the statement
        $stmt->execute();

        // return the statement
        return $stmt;
    }
}
