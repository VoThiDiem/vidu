<?php
  include_once("../connect.php");
  $manl="";
  if(isset($_GET["ma"]))
  {
    $manl =$_GET["ma"] ;
  }
  $sql = "";
  if($conn->query("SELECT * FROM mon_an WHERE nguyen_lieu='$manl'")->num_rows>0)
  {
    $sql = "DELETE FROM mon_an WHERE nguyen_lieu='$manl';";
  }
  $sql.="DELETE FROM nguyen_lieu WHERE id='$manl';";
  if ($conn->multi_query($sql) === TRUE) {
    header("Location:nguyenlieu.php");
  } else {
    echo "Error deleting record: " . $conn->error;
  }
  $conn->close();
?>