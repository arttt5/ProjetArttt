<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="../bootstrap.min.css">
  <link rel="stylesheet" href="admin.css">
  <title>ADMINISTRATION ROBISHOP</title>
</head>

<body>
  <div class="container-fluid">
    <header>

    </header>

    <div class="connect-admin row mx-auto justify-content-center">
      <img src="images/Robishop2.png" alt="logo" title="logo" width="60%">
      <div class="col-md-12 titre">
        <p><small>Admin Network</small></p>
        <h4>Veuillez vous connecter</h4>
      </div>
      <br>
      <form action="tableaudebord.php" method="POST">
        <div class="form-group">
          <label for="exampleInputEmail1">LOGIN</label>
          <input type="text" class="form-control" aria-describedby="emailHelp" placeholder="Enter Login">
          <small id="textHelp" class="form-text text-muted">Nous ne communiqueront pas votre email.</small>
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password</label>
          <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
        <div class="form-group form-check">
          <input type="checkbox" class="form-check-input" id="exampleCheck1">
          <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <br><br>
      </form>


    </div>

    <footer>

    </footer>
  </div>
</body>

</html>