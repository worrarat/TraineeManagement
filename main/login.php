<?php
    include("dbconfig.php");
    $sql = 'SELECT * FROM staff_tb WHERE stf_user ='."'$_POST[id]'"." and stf_pass = "."'$_POST[pass]'";
    if($res = $DB_con->query($sql)){
      if ($res->fetchColumn() > 0){
        foreach ($DB_con->query($sql) as $row){
              print $row['stf_name'] . "&nbsp";
              print $row['stf_surname'] . "</br>";
              header("Location: /TraineeManagement/main/blank.html");
        }
      }
      else {
              header("Location: /TraineeManagement/index-fail.html");
      }
    }
?>
