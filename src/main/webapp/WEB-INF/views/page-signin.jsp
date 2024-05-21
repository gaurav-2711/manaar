<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
    <!-- Required meta tags -->
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Meta -->
    <meta name="description" content="Manaar" />
    <meta name="author" content="Manaar" />

    <title>Manaar | Admin</title>

    <!-- vendor css -->
    <link href="../../lib/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <link href="../../lib/ionicons/css/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../lib/typicons.font/typicons.css" rel="stylesheet" type="text/css"/>
    <link href="../../lib/spectrum-colorpicker/spectrum.css" rel="stylesheet" type="text/css"/>
    <!-- Manaar CSS -->
    <link rel="stylesheet"  href="static/css/style.css"type="text/css" />

  </head>
  <body class="az-body">
    <div class="az-signin-wrapper">
      <div class="az-card-signin">
        <h1 class="az-logo" style="color: #0f589e">Manaar<span></span></h1>
        <div class="az-signin-header">
          <form method="POST" action="/authlogin" modelAttribute="loginForm" >
            <div class="form-group">
              <label>Email</label>
              <input type="text" name="userName" class="form-control" placeholder="Enter your email"  />
            </div>
            <!-- form-group -->
            <div class="form-group">
              <label>Password</label>
              <input type="password" name="password" class="form-control" placeholder="Enter your password" />
            </div>
            <!-- form-group -->
            <input type="hidden"
                    name="${_csrf.parameterName}"
                    value="${_csrf.token}"/>
            <button type="submit" class="btn btn-az-primary btn-block">Sign In</button>
             ${message}
          </form>
        </div>
        <!-- az-signin-header -->
        <div class="az-signin-footer">
          <p><a href="/register">Register</a></p>
        </div>
        <!-- az-signin-footer -->
      </div>
      <!-- az-card-signin -->
    </div>
    <!-- az-signin-wrapper -->
 <script type="text/javascript"
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
      integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer">
 </script>

    <script src="../../lib/jquery-ui/ui/widgets/datepicker.js" type="text/javascript"></script>
    <script src="../../lib/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
    <script src="../../lib/ionicons/ionicons.js" type="text/javascript"></script>
    <script src="../../lib/jquery.maskedinput/jquery.maskedinput.js" type="text/javascript"></script>
    <script src="../../js/cookie.js" type="text/javascript"></script>
    <script src="../../js/bhuth.js" type="text/javascript"></script>
    <script>
      $(function () {
        "use strict";
      });
    </script>

  </body>
</html>
