<%-- 
    Document   : team
    Created on : 31 oct. 2021, 17:27:13
    Author     : Home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="table_files/css/bootstrap.min.css">

    <!-- CSS -->
    <link href="table_files/css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="team_files/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.2/css/all.css">

    <title>Equipo</title>
</head>

<body>
    <!-- Responsive navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container px-lg-5">
            <a class="navbar-brand text" href="index.html">EduPlat</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0 text">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="#!">Equipo</a></li>
                    <!--<li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>-->
                </ul>
            </div>
        </div>
    </nav>

    <section style="padding-top: 6rem !important;" id="team">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                  <h2>Proyecto Final - Programación II</h2>
                  <h3>Grupo No. 5</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-3 col-md-6">
                    <div class="member">
                      <div class="member-img">
                          <img src="team_files/assets/t1.png" class="img-fluid" alt="">
                      </div>
                        <div class="member-info">
                            <h4>Douglas Gonzalez</h4>
                            <span>7690-20-8340</span><br>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="member">
                      <div class="member-img">
                          <img src="team_files/assets/t2.png" class="img-fluid" alt="">
                      </div>
                        <div class="member-info">
                            <h4>Mireyda Siquibache</h4>
                            <span>7690-20-7824</span><br>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="member">
                      <div class="member-img">
                          <img src="team_files/assets/t3.png" class="img-fluid" alt="">
                      </div>
                        <div class="member-info">
                            <h4>Raúl Guerra</h4>
                            <span>7690-20-9003</span><br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-1"></div>
            </div>
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-3 col-md-6">
                    <div class="member">
                      <div class="member-img">
                          <img src="team_files/assets/T4.png" class="img-fluid" alt="">
                      </div>
                        <div class="member-info">
                            <h4>Rannel Obdulio</h4>
                            <span>7690-11-8859</span><br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="member">
                      <div class="member-img">
                          <img src="team_files/assets/t5.png" class="img-fluid" alt="">
                      </div>
                        <div class="member-info">
                            <h4>Kevin Herrera</h4>
                            <span>7690-20-8093</span><br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3"></div>
            </div>
        </div>
    </section>

    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white text">Copyright &copy; EduPlat 2021</p>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="table_files/js/jquery-3.3.1.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- Script JS -->
    <script src="table_files/js/scripts.js"></script>
</body>

</html>
