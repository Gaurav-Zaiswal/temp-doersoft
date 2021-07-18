<?php
// headers for GET method
header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');

// import databse and jobopeningmodel
include_once '../../config/Database.php';
include_once '../../models/JobOpening.php';

// instantiate a database and establish the connection
$database = new Database();
$db = $database->connect(); // defined in config/Database.php

// instantiate new instance of JobOpening
$openJob = new JobOpening($db); // defined in models/JobOpening.php

// call the read method to get the jobs
$jobResult = $openJob->readCurrentlyOpenJob();

$count = $jobResult->rowCount();

if ($count > 0) {
    // array to store the details of each opened jobs
    $openJobs = array();
    $openJobs['jobs'] = array();

    while ($row = $jobResult->fetch(PDO::FETCH_ASSOC)) {
        extract($row);

        $job_item = array(
            'job_id' => $job_id,
            'job_type_id' => $jb_type_id,
            'title' => $job_title,
            'type' => $job_type,
            'qualification' => $qualification,
            'experience' => $exp,
            'requirement' => $req,
            'duty' => $duty,
            'salary' => $salary,
            'addition_detail' => $extra_constrain,
        );

        // now store the job into openJobs array
        array_push($openJobs, $job_item);
    }

    // typecast to json and return the object
    echo json_encode($openJobs);
} else {
    json_encode(
        array('message' => 'No current openings found')
    )
}
