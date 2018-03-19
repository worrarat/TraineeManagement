<?php
    session_start();
    include("dbconfig.php");
    $sql = 'SELECT * FROM staff_tb WHERE stf_user ='."'$_POST[id]'"." and stf_pass = "."'$_POST[pass]'";
    if($res = $DB_con->query($sql)){
      if ($res->fetchColumn() > 0){
        foreach ($DB_con->query($sql) as $row){
              $_SESSION['name'] = $row['stf_name'];
              $_SESSION['surname'] = $row['stf_surname'];
              if($_SESSION['name'] == '' of $_SESSION['surname'] =='')
                  header("Location: /TraineeManagement/index-fail.html");
              else
                  header("Location: /TraineeManagement/main/blank.html");
        }
      }
      else {
              header("Location: /TraineeManagement/index-fail.html");
      }
    }
?>
