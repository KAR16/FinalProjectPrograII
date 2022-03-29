<%-- 
    Document   : index
    Created on : 27/10/2021, 21:18:14
    Author     : alumno
--%>

<%@page import="java.sql.*"%>
<%@page import="Estudiante.Conectar_Mostrar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="Grup No. 5 - Programation II" />
        <title>EduPlat</title>        
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="home_files/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="home_files/css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container px-lg-5">
                <a class="navbar-brand" href="#!">EduPlat</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Inicio</a></li>
                        <li class="nav-item"><a class="nav-link" href="team.jsp">Equipo</a></li>
                        <!--<li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>-->
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="py-5">
            <div class="container px-lg-5">
                <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
                    <div class="m-4 m-lg-5">
                        <h1 class="display-5 fw-bold">¡Bienvenido a EduPlat!</h1>
                        <p class="fs-4">Una plataforma educativa creada para que las instituciones tengan un mejor control de su personal, materias y asignaturas así como de sus estudiates para así brindarles el mejor servicio.</p>
                        <a class="btn btn-primary btn-lg" href="#scroll">¡Vamos a ello!</a>
                    </div>
                    <section id="scroll"></section>
                </div>
            </div>
        </header>
        <!-- Page Content-->
        <section class="pt-4">
            <div class="container px-lg-5">
                <!-- Page Features-->
                <div class="row gx-lg-5">
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-person-workspace"></i></div>
                                <h2 class="fs-4 fw-bold">Estudiantes</h2>
                                <p class="mb-0">En esta sección podrá administrar y gestionar a todos sus estudiantes.</p>
                                <br><a class="btn btn-primary btn-sm" href="table_estudiantes.jsp">Iniciar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-person-video2"></i></div>
                                <h2 class="fs-4 fw-bold">Catedráticos</h2>
                                <p class="mb-0">En esta sección podrá administrar y gestionar a todos sus catedráticos.</p>
                                <br><a class="btn btn-primary btn-sm" href="table_catedraticos.jsp">Iniciar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-person-lines-fill"></i></div>
                                <h2 class="fs-4 fw-bold">Directores</h2>
                                <p class="mb-0">En esta sección podrá administrar y gestionar a todos sus directores.</p>
                                <br><a class="btn btn-primary btn-sm" href="table_directores.jsp">Iniciar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-geo-alt-fill"></i></div>
                                <h2 class="fs-4 fw-bold">Instituciones</h2>
                                <p class="mb-0">En esta sección podrá administrar y gestionar a todas sus instituciones.</p>
                                <br><a class="btn btn-primary btn-sm" href="table_instituciones.jsp">Iniciar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-pin-map-fill"></i></div>
                                <h2 class="fs-4 fw-bold">Sedes</h2>
                                <p class="mb-0">En esta sección podrá administrar y gestionar a todas sus sedes.</p>
                                <br><a class="btn btn-primary btn-sm" href="table_sedes_2.jsp">Iniciar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-layout-text-sidebar"></i></div>
                                <h2 class="fs-4 fw-bold">Facultades</h2>
                                <p class="mb-0">En esta sección podrá administrar y gestionar a todas sus facultades.</p>
                                <br><a class="btn btn-primary btn-sm" href="table_facultades.jsp">Iniciar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-journal-text"></i></div>
                                <h2 class="fs-4 fw-bold">Cursos</h2>
                                <p class="mb-0">En esta sección podrá administrar y gestionar a todos sus cursos.</p>
                                <br><a class="btn btn-primary btn-sm" href="table_cursos.jsp">Iniciar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-laptop"></i></div>
                                <h2 class="fs-4 fw-bold">Laboratorios</h2>
                                <p class="mb-0">En esta sección podrá administrar y gestionar a todos sus laboratorios.</p>
                                <br><a class="btn btn-primary btn-sm" href="table_laboratorios.jsp">Iniciar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-clock-history"></i></div>
                                <h2 class="fs-4 fw-bold">Historial</h2>
                                <p class="mb-0">En esta sección podrá tener mayor visibilidad de todos los cambios realizados en la plataforma.</p>
                                <br><a class="btn btn-primary btn-sm" href="table_historial.jsp">Iniciar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; EduPlat 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="home_files/js/scripts.js"></script>
    </body>
</html>

