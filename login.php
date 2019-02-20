<?php
include_once("connection.php");
session_start();

$db = new dbObj();
$conn =  $db->getConnstring();
$username = isset($_REQUEST['username']) ? $_REQUEST['username']:'';
$password = isset($_REQUEST['password']) ? $_REQUEST['password']:'';
if(!empty($username) && !empty($password)){
    $sql = ("SELECT * FROM `users` WHERE username ='". $username ."' AND password = '". $password ."'" );
    $result = $conn->query($sql);
    if ($result->num_rows > 0) 
    {
        $results = mysqli_fetch_assoc($result);
        $_SESSION['user_id'] = $results['user_id'];
        header('Location: /tyroo/user_details.php');
        $_SESSION['auth'] = 1;
    }else{
        unset( $_SESSION['auth']);
        unset( $_SESSION['user_id']);
        header('Location: /tyroo/login.php');
    }
}
?>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<div class="container">
    <div class="row justify-content-center align-items-center" style="height:100vh">
        <div class="col-4">
            <div class="card">
                <div class="card-body">
                    <form action="login.php" method="post" autocomplete="off">
                        <div class="form-group">
                            <input type="email" class="form-control" name="username" placeholder="username" required>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="password" placeholder="password" required>
                        </div>
                        <input type="submit" id="sendlogin" value="Login" class="btn btn-primary"></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>