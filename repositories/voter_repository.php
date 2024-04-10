<?php

    require_once 'default_repository.php';
    
    class VoterRepository extends DefaultRepository
    {   
        function getVoterByIdNumber($id_number){
            $result = $this->get_conn()->query("SELECT voters_id, status, account, password FROM voters WHERE id_number = '$id_number'");
            if ($result !== false && $result->num_rows > 0) {
                return $result->fetch_assoc();
            } else {
                return null;
            }
        }
        
        function __construct()
        {
            parent::__construct();
        }

        //Login_query : 7
        function login($id_number, $password)
        {
            return $this->get_conn()->query("SELECT voters_id, status, account, password FROM voters WHERE id_number = '$id_number' ") or die('Unknown User.');
        }

        //side_bar : 16
        public function get_by_id($voter_id){
            return $this->get_conn()->query("SELECT * FROM voters WHERE voters_id = '$voter_id'");
        }

        //submit : 20
        public function set_voted($voters_id, $voted){
            $value = "Voted";
            if(!$voted){
                $value = "UnVoted";
            }
            return $this->get_conn()->query("UPDATE `voters` SET `status` = '$value' WHERE `voters_id` = '$voters_id'");
        }

    }
?>