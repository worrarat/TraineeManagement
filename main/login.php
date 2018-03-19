<?php
    session_start();
    include("dbconfig.php");
    //staff login
    $sql_staff = 'SELECT * FROM staff_tb WHERE stf_user ='."'$_POST[id]'"." and stf_pass = "."'$_POST[pass]'";
    if($res = $DB_con->query($sql_staff )){
      if ($res->fetchColumn() > 0){
        foreach ($DB_con->query($sql_staff) as $row){
              $_SESSION['name'] = $row['stf_name'];
              $_SESSION['surname'] = $row['stf_surname'];
              $status = $row['login_status'];
              if($status == "1")
              {
                  echo "exist status";
                  exit();
              }
              else
              {
                  header("Location: /TraineeManagement/main/blank.html");
                  exit();
              }

        }
      }
      else
      {
              header("Location: /TraineeManagement/index-fail.html");
              exit();
      }
    }
?>
