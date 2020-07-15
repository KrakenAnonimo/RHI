<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login/Sing Up</title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Raleway:300,600" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel="stylesheet" href="Vista/Login/style.css">
      <!-- Favicons -->
    <link href="Vista/PgPrin/img/favicon.png" rel="icon">
    <link href="Vista/PgPrin/img/apple-touch-icon.png" rel="apple-touch-icon">
</head>
<body>
    <!-- partial:index.partial.html -->
    <div class="container">
        <section id="formHolder">

            <div class="row">

                <!-- Brand Box -->
                <div class="col-sm-6 brand">
                    <a href="index.aspx" class="logo">RHI <span>.</span></a>

                    <div class="heading">
                        <h2>Magnesita</h2>
                        <p>Company</p>
                    </div>

                    <div class="success-msg">
                        <p>Perfecto! Eres un nuevo miembro ahora.</p>
                        <a href="#" class="profile">Tu perfil/a>
                    </div>
                </div>


                <!-- Form Box -->
                <div class="col-sm-6 form">

                    <!-- Login Form -->
                    <div class="login form-peice switched">
                        <form class="login-form" action="#" method="post">
                            <div class="form-group">
                                <label for="loginemail">Email </label>
                                <input type="email" name="loginemail" id="loginemail" required>
                            </div>

                            <div class="form-group">
                                <label for="loginPassword">Contraseña</label>
                                <input type="password" name="loginPassword" id="loginPassword" required>
                            </div>

                            <div class="CTA">
                                <!--Boton ingresar -->
                                <input type="submit" value="Ingresar">
                                 <!--fin del cod boton -->
                                <a href="#" class="switch">Soy nuevo</a>
                            </div>
                        </form>
                    </div>
                    <!-- End Login Form -->


                    <!-- Signup Form -->
                    <div class="signup form-peice">
                        <form class="signup-form" action="#" method="post">

                            <div class="form-group">
                                <label for="name">Nombre </label>
                                <input type="text" name="username" id="name" class="name">
                                <span class="error"></span>
                            </div>

                            <div class="form-group">
                                <label for="email">Email </label>
                                <input type="email" name="emailAdress" id="email" class="email">
                                <span class="error"></span>
                            </div>

                            <div class="form-group">
                                <label for="phone">Numero Telefonico - <small>Opcional</small></label>
                                <input type="text" name="phone" id="phone">
                            </div>

                            <div class="form-group">
                                <label for="password">Contraseña</label>
                                <input type="password" name="password" id="password" class="pass">
                                <span class="error"></span>
                            </div>

                            <div class="form-group">
                                <label for="passwordCon">Confirmar Contraseña</label>
                                <input type="password" name="passwordCon" id="passwordCon" class="passConfirm">
                                <span class="error"></span>
                            </div>

                            <div class="CTA">
                                <!--Boton ingresar -->
                                <input type="submit" value="Registrar" id="submit">
                                <!--fin del cod boton -->
                                <a href="#" class="switch">Ya tengo una cuenta.</a>
                            </div>
                        </form>
                    </div>
                    <!-- End Signup Form -->
                </div>
            </div>

        </section>


        <footer>
            <p>
                Hecho por: <a href="" target="_blank">Grupo 2</a>
            </p>
        </footer>

    </div>
    <!-- partial -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
    <script src="Vista/Login/script.js"></script>

</body>
</html>
