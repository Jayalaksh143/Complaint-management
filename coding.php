 <!-- coding for video upload in complaint-details -->

<table >  
  <tr>  
    <th>Image</th>  
  </tr>  
                <?php 
                $com_id =   $row['complaintNumber'];
                
                $query = "SELECT complaintFile FROM tblcomplaints where complaintNumber = '$com_id'";  
                $result = mysqli_query($con, $query);  
                if($row = mysqli_fetch_array($result))  
                {  

                  $path = $row['complaintFile'];
                  //echo  ('+++++++++++++'.$path );
                  
                     echo '  
                          <tr>  
                               <td>  

                                    <video height="200" width="400" controls>
  <source src="'.$path.'" type="video/mp4">
                               </td>  
                          </tr>  
                     ';  
                }  else
                {
                  echo "error";
                }
                ?>  
                </table>  

<!-- coding for video upload in complaint-details  -->

 <!-- coding for image upload in complaint-details -->

<table >  
  <tr>  
    <th>Image</th>  
  </tr>  
                <?php 
                $com_id =   $row['complaintNumber'];
                
                $query = "SELECT complaintFile FROM tblcomplaints where complaintNumber = '$com_id'";  
                $result = mysqli_query($con, $query);  
                if($row = mysqli_fetch_array($result))  
                {  

                  $path = $row['complaintFile'];
                  //echo  ('+++++++++++++'.$path );
                  // 
                     echo '  
                          <tr>  
                               <td>  

                                    <img src="'.$path.'" height="200" width="500"  /> 
                               </td>  
                          </tr>  
                     ';  
                }  else
                {
                  echo "error";
                }
                ?>  
                </table>  

<!-- coding for video upload in complaint-details  -->


<!-- DEPARTMENT EMAIL-->
<?php
if(isset($_POST['send']))
{
$compNo = $_POST['compliantNumber'];
$username = $_POST['username'];
$category = $_POST['category'];
$comptype = $_POST['comptype'];
$state = $_POST['state'];
$title = $_POST['title']; 
$compdetails = $_POST['compdetails']; (DESCIRPTION)
$address = $_POST['address'];
$date = $_POST['date'];

}
?>

<!-- DEPARTMENT EMAIL-->

<!-- PUBLIC USER EMAIL-->
<?
$uid=$_POST['id'];
$title = $_POST['title'];
$date = $_POST['date'];
$category = $_POST['category'];
$compdetails = $_POST['compdetails'];
?>

<!-- PUBLIC USER EMAIL-->