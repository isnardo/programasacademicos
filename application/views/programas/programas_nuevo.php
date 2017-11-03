<body>
<div id="wrapper">
<!-- Navigation -->
<?=$this->menu->render_user_menu( $this->session->userdata['menu'] );?>
<!-- ./ Navigation -->


<div id="page-wrapper">
  <div class="row">
    <div class="col-lg-12">
      <br>
      <h1>Nuevo programa académico</h1>
      <h3><?="Licenciatura en Matemática Educativa";?></h3>
      <hr>

      <form role="form" id="form-nombre">
      <div class="form-group">
      <label>Nombre del programa</label>
      <input class="form-control" id="programName" type="text" placeholder="Nombre del programa" required>

      </div>
        </form>

        <div class="panel panel-default">
          <div class="panel-body">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs">
              <li class="active"><a href="#datos-basicos" data-toggle="tab"><b> Datos básicos</b></a>
              </li>
              <li><a href="#objetivos" data-toggle="tab"><b>Objetivos</b></a>
              </li>
              <li><a href="#contenidos" data-toggle="tab"><b>Contenidos y métodos</b></a>
              </li>
              <li><a href="#estrategias" data-toggle="tab"><b>Estrategias de enseñanza</b></a>
              </li>
              <li><a href="#evaluacion" data-toggle="tab"><b>Evaluación y acreditación</b></a>
              </li>
              <li><a href="#bibliografia" data-toggle="tab"><b>Bibliografía y otros recursos</b></a>
              </li>
            </ul>
            <!--/. Nav tabs -->

            <div class="tab-content">

              <!-- TAB datos-basicos -->
              <div class="tab-pane fade in active" id="datos-basicos">
                <div class="panel panel-default">
                <div class="panel-body">
                  <form role="form" id="form-datos-basicos">
                    <table style="text-align:center;">
                      <tr>
                        <td width="20%"><label>Semestre</label></td>
                        <td width="20%"><label>Horas de teoría por semana</label></td>
                        <td width="20%"><label>Horas práctica por semana</label></td>
                        <td width="20%"><label>Horas trabajo adicional estudiante</label></td>
                        <td width="20%"><label>Creditos</label></td>
                      </tr>
                      <tr>
                        <td  align="center">
                          <select class="form-control" id="inputSemestre" style="width:60px;">
                            <option selected>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                            <option>8</option>
                            <option>9</option>
                            <option>10</option>
                          </select>
                        </td>
                        <td  align="center">
                          <input class="form-control" id="inputHrsTeoria" type="text"
                          placeholder="#" style="width:40px;" maxlength="1" required>
                        </td>
                        <td  align="center">
                          <input class="form-control" id="inputHrsPractica" type="text"
                          placeholder="#" style="width:40px;" maxlength="1" required>
                        </td>
                        <td  align="center">
                          <input class="form-control" id="inputHrsAdicional" type="text"
                          placeholder="#" style="width:40px;" maxlength="1" required>
                        </td>
                        <td align="center">
                          <input class="form-control" id="inputCreditos" type="text"
                          placeholder="#" style="width:40px;" maxlength="1" disabled>
                        </td>
                      </tr>
                    </table>
                    <hr>
                    <div class="form-group">
                      <label>Línea del conocimiento</label><br/><br/>
                      <select class="form-control" id="inputLinea" >
                        <option selected>Matemática Educatuiva</option>
                        <option>Matemáticas</option>
                        <option>Educación</option>
                        <option>Geometría/Física</option>
                        <option>Integración</option>
                      </select>
                    </div>

                    <hr>
                    <div class="form-group">
                      <label>Tipo de materia </label>
                      <br/><br/>
                      <label class="radio-inline">
                      <input name="inputTipoMateria" value="0" type="radio" checked> Obligatoria
                      </label>
                      <label class="radio-inline">
                      <input name="inputTipoMateria" value="1" type="radio"> Optativa
                      </label>
                      <label class="radio-inline">
                      <input name="inputTipoMateria" value="2" type="radio"> Otra
                      </label>
                    </div>

                    <fieldset disabled="">
                    <hr>
                    <div class="form-group">
                      <label>Tipo de propuesta </label>
                      <br/><br/>
                      <label class="radio-inline">
                      <input name="inputTipoPropuesta" value="0" type="radio" checked> Nueva creación
                      </label>
                      <label class="radio-inline">
                      <input name="inputTipoPropuesta" value="1" type="radio"> Reestructuración
                      </label>
                      <label class="radio-inline">
                      <input name="inputTipoPropuesta" value="2" type="radio"> Ajuste
                      </label>
                    </div>

                    <hr>
                    <div class="form-group">
                      <label>Materia seriada </label>
                      <br/><br/>
                      <label class="radio-inline">
                      <input name="inputSeriada" value="1" type="radio"> Si
                      </label>
                      <label class="radio-inline">
                      <input name="inputSeriada" value="0" type="radio" checked> No
                      </label>
                    </div>

                    <hr>
                    <div class="form-group">
                      <label>Materia compartida con otro plan de estudios </label>
                      <br/><br/>
                      <label class="radio-inline">
                      <input name="inputCompartida" value="1" type="radio"> Si
                      </label>
                      <label class="radio-inline">
                      <input name="inputCompartida" value="0" type="radio" checked> No
                      </label>
                    </div>
                  </fieldset>

                  </form>
                  <!--/.form datos-básicos-->

                </div>
                <!--/.panel-body -->
                </div>
                <!--/.panel -->

              </div>
              <!--/.TAB datos-basicos-->

              <!-- TAB objetivos -->
              <div class="tab-pane" id="objetivos">
                <div class="panel panel-default">
                <div class="panel-body">

                  <form role="form" id="form-objetivos">
                    <div class="form-group">
                      <label>Objetivo general</label>
                       <textarea class="form-control" id="inputObjetivoGeneral"
                       placeholder="Objetivo general" rows="3" required></textarea>
                    </div>
                  </form>
                  <!--/.form objetivos -->

                  <div class="panel-group" id="panel-competencias">
                      <div class="panel panel-info">
                          <div class="panel-heading">
                              <h4 class="panel-title">
                                  <a data-toggle="collapse" data-parent="#panel-competencias" href="#panel-competencias-transversales"><b>Competencias transversales</b></a>
                              </h4>
                          </div>
                          <div id="panel-competencias-transversales" class="panel-collapse collapse">
                              <div class="panel-body">
                                <form role="form" id="form-comp-transv">
                                  <label>Competencias</label>
                                  <div class="form-group input-group">
                                    <select class="form-control" id="compTransvSelect">
                                      <option selected>Dimención científico-tecnológica</option>
                                      <option>Dimención cognitiva y emprendedora</option>
                                      <option>Dimención de responsabilidad social y sustentabilidad</option>
                                      <option>Dimención ético-valoral</option>
                                      <option>Dimención de comunicación e información</option>
                                    </select>
                                    <span class="input-group-btn">
                                    <button type="button" id="btn-del-compTransv" class="btn btn-primary">Agregar</button>
                                    </span>
                                  </div>
                                  <div class="form-group">
                                    <label>Descripción</label>
                                    <textarea class="form-control" rows="3" disabled>Capacidad de razonar a través del establecimiento de relacione coherentes y sistematizables entre la información derivada de la experiencia y los marcos conceptuales y modelos explicativos derivados de los campos científicos y tecnológicos propios de la profesión.</textarea>
                                  </div>
                                  <hr>
                                  <label>Competencias transversales que contribuye a desarrollar la materia</label>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="competencia1"
                                    placeholder="Competencia" disabled value="Dimención de comunicación e información">
                                    <span class="input-group-btn">
                                    <button type="button" id="btn-del-competencia1" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="competencia1"
                                    placeholder="Competencia" disabled value="Dimención cognitiva y emprendedora">
                                    <span class="input-group-btn">
                                    <button type="button" id="btn-del-competencia1" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                </form>
                                <!--/. form-comp-transv-->
                              </div>
                          </div>
                      </div>
                      <!--/.panel competencias transversales-->
                      <div class="panel panel-info">
                          <div class="panel-heading">
                              <h4 class="panel-title">
                                  <a data-toggle="collapse" data-parent="#panel-competencias" href="#panel-competencias-profesionales"><b>Competencias profesionales</b></a>
                              </h4>
                          </div>
                          <div id="panel-competencias-profesionales" class="panel-collapse collapse">
                              <div class="panel-body">
                                <form role="form" id="form-comp-prof">
                                  <label>Competencias</label>
                                  <div class="form-group input-group">
                                    <select class="form-control" id="compProfSelect">
                                      <option selected>Aplicar las tecnologías</option>
                                      <option>Planear e implementar</option>
                                      <option>Desarrollar y gestionar</option>>
                                    </select>
                                    <span class="input-group-btn">
                                    <button type="button" id="btn-del-compProf" class="btn btn-primary">Agregar</button>
                                    </span>
                                  </div>
                                  <div class="form-group">
                                    <label>Descripción</label>
                                    <textarea class="form-control" rows="3" disabled>Descripción de la conmpetencia profesional.</textarea>
                                  </div>
                                  <hr>
                                  <label>Competencias profesionales que contribuye a desarrollar la materia</label>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="competencia1"
                                    placeholder="Competencia" disabled value="Planear e implementar">
                                    <span class="input-group-btn">
                                    <button type="button" id="btn-del-competencia1" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="competencia2"
                                    placeholder="Competencia" disabled value="Aplicar las tecnologías">
                                    <span class="input-group-btn">
                                    <button type="button" id="btn-del-competencia1" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                </form>
                                <!--/. form-comp-prof-->
                              </div>
                          </div>
                      </div>
                      <!--/.panel competencias profesionales-->
                  </div>
                  <!--/.panel-group cmpetencias-->

                </div>
                <!--/.panel-body-->
                </div>
                <!--/.panel-->

              </div>
              <!--/.TAB objetivos-->


              <!-- TAB Contenidos -->
              <div class="tab-pane" id="contenidos">
                <div class="panel panel-default">
                <div class="panel-body">

                  <form role="form" id="form-contenidos">
                    <div class="form-group">
                      <label>Unidades</label>
                      <div class="form-group input-group">
                       <input type="text" class="form-control" id="inputNueva Unidad"
                       placeholder="Nombre de la unidad" required>
                       <span class="input-group-btn">
                       <button type="button" id="btn-add-unidad" class="btn btn-success">Agregar</button>
                       </span>
                      </div>
                    </div>
                  </form>
                  <!--/.form objetivos -->

              <div class="panel-group" id="panel-unidades">

                  <div class="panel panel-success">
                      <div class="panel-heading" >
                        <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#panel-unidades" href="#panel-unidad1" aria-expanded="false" class="collapsed"><b>1. Sistemas de ecuaciones lineales y matrices</b></a>
                        <div id="hrs-unidad1" style="float:right;"><b>25 hrs</b></div>
                        </h4>
                      </div>
                      <div id="panel-unidad1" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                        <div class="panel-body">
                        <form role="form" id="form-unidad1">
                          <div class="form-group" style="float:right;">
                            <button type="button" id="btn-del-compProf" class="btn btn-danger">Eliminar unidad</button>
                          </div>
                          <div class="form-group">
                            <label>Objetivo específico</label>
                            <textarea class="form-control" id="unidad1Objetivo" rows="2" placeholder="Objetivo específico"></textarea>
                          </div>
                          <div class="form-group">
                            <label for="inputNuevoTema">Temas</label>
                            <div class="form-group input-group">
                            <input type="text" class="form-control" id="inputUnidad1NuevoTema"
                            placeholder="Nombre del tema" required>
                            <span class="input-group-btn">
                            <button type="button" id="btn-add-tema" class="btn btn-primary">Agregar</button>
                            </span>
                            </div>
                          </div>
                        </form>
                        <!--/. form-unidad1-->

                        <div class="panel-group" id="panel-unidad1-temas">

                          <div class="panel panel-info">
                            <div class="panel-heading">
                              <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#panel-unidad1-temas" href="#panel-unidad1-tema1" aria-expanded="false" class="collapsed"><b>1.1 Álgebra de matrices</b></a>
                              <div id="hrs-unidad1" style="float:right;"><b>10 hrs</b></div>
                              </h4>
                            </div>
                            <!--/.panel-heading-->
                            <div id="panel-unidad1-tema1" class="panel-collapse collapse">
                              <div class="panel-body">
                                <form role="form" id="form-unidad1tema1">
                                  <div class="form-group" style="float:right;">
                                    <button type="button" id="btn-del-compProf" class="btn btn-danger">Eliminar tema</button>
                                  </div>

                                  <div class="form-group form-inline">
                                    <label for="inputUnidad1HrsTema1">Horas </label>
                                    <input type="text" class="form-control" id="inputUnidad1HrsTema1" placeholder="#" required  style="width:50px;text-align:center;" maxlength="2">
                                  </div>

                                  <!-- subtemas-->
                                  <div class="form-group">
                                    <label for="inputNuevoTema">Subtemas</label>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoTema" placeholder="Nombre del subtema" required>
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                      </span>
                                    </div>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="a) Deficiniciones de matriz y notación">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="b) Vectores y escalares">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="c) Operaciones con matrices">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <!--./subtemas-->
                                    <hr>
                                    <!--Estrategias didácticas-->
                                    <div class="form-group">
                                      <label for="inputNuevoTema">Métodos y actividades (estratégias) didácticas</label>
                                      <div class="form-group input-group">
                                        <input type="text" class="form-control" id="inputUnidad1NuevoTema" placeholder="Nombre de la estratégia didáctica" required>
                                        <span class="input-group-btn">
                                          <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                        </span>
                                      </div>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Método expositivo">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Estudio de casos">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Resolución de ejercicios y problemas">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <!--/.Estrategias didácticas-->
                                    <hr>
                                    <!--Lecturas-->
                                    <div class="form-group">
                                      <label for="inputNuevoTema">Lecturas y otros recursos</label>
                                      <div class="form-group input-group">
                                        <input type="text" class="form-control" id="inputUnidad1NuevoTema" placeholder="Nombre del recurso" required>
                                        <span class="input-group-btn">
                                          <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                        </span>
                                      </div>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="DATE, C.J. Introducción a los sistemas de bases de datos. México: Pearson Education de México, 2001.">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="GÓMEZ VIETES, A. Sistemas de información: herramientas prácticas para la gestión. México: Alfaomega, 2010.">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="ORBEGOZO ARANA, Borja. Gestión de bases de datos con SQL y MySQL y Access: Curso práctico. México: Alfaomega, 2013.">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <!--/.Lecturas-->

                                </form>
                                <!--/. form-tema-->
                              </div>
                              <!--/.panel-body-->
                            </div>
                            <!--/.panel-collapsed-->
                          </div>
                          <!--/.panel tema 1.1-->

                          <div class="panel panel-info">
                            <div class="panel-heading">
                              <h4 class="panel-title">
                              <a data-toggle="collapse" data-parent="#panel-unidad1-temas" href="#panel-unidad1-tema2" aria-expanded="false" class="collapsed"><b>1.2 Sistemas de ecuaciones lineales</b></a>
                              <div id="hrs-unidad1" style="float:right;"><b>15 hrs</b></div>
                              </h4>
                            </div>
                            <!--/.panel-heading-->
                            <div id="panel-unidad1-tema2" class="panel-collapse collapse">
                              <div class="panel-body">
                                <form role="form" id="form-unidad1tema2">
                                  <div class="form-group" style="float:right;">
                                    <button type="button" id="btn-del-compProf" class="btn btn-danger">Eliminar tema</button>
                                  </div>

                                  <div class="form-group form-inline">
                                    <label for="inputUnidad1HrsTema2">Horas </label>
                                    <input type="text" class="form-control" id="inputUnidad1HrsTema2" placeholder="#" required  style="width:50px;text-align:center;" maxlength="2">
                                  </div>

                                  <!-- subtemas-->
                                  <div class="form-group">
                                    <label for="inputNuevoTema">Subtemas</label>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoTema" placeholder="Nombre del subtema" required>
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                      </span>
                                    </div>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema2" placeholder="Nombre del subtema" disabled value="a) Deficiniciones de matriz y notación">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema2" placeholder="Nombre del subtema" disabled value="b) Vectores y escalares">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="c) Operaciones con matrices">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <!--./subtemas-->
                                    <hr>
                                    <!--Estrategias didácticas-->
                                    <div class="form-group">
                                      <label for="inputNuevoTema">Métodos y actividades (estratégias) didácticas</label>
                                      <div class="form-group input-group">
                                        <input type="text" class="form-control" id="inputUnidad1NuevoTema" placeholder="Nombre de la estratégia didáctica" required>
                                        <span class="input-group-btn">
                                          <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                        </span>
                                      </div>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema2" placeholder="Nombre del subtema" disabled value="Método expositivo">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema2" placeholder="Nombre del subtema" disabled value="Estudio de casos">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Resolución de ejercicios y problemas">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <!--/.Estrategias didácticas-->
                                    <hr>
                                    <!--Lecturas-->
                                    <div class="form-group">
                                      <label for="inputNuevoTema">Lecturas y otros recursos</label>
                                      <div class="form-group input-group">
                                        <input type="text" class="form-control" id="inputUnidad1NuevoTema" placeholder="Nombre del recurso" required>
                                        <span class="input-group-btn">
                                          <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                        </span>
                                      </div>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="DATE, C.J. Introducción a los sistemas de bases de datos. México: Pearson Education de México, 2001.">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema2" placeholder="Nombre del subtema" disabled value="GÓMEZ VIETES, A. Sistemas de información: herramientas prácticas para la gestión. México: Alfaomega, 2010.">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad1NuevoSubTema1" placeholder="Nombre del subtema" disabled value="ORBEGOZO ARANA, Borja. Gestión de bases de datos con SQL y MySQL y Access: Curso práctico. México: Alfaomega, 2013.">
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                      </span>
                                    </div>
                                    <!--/.Lecturas-->
                                </form>
                                <!--/. form-tema-->
                              </div>
                              <!--/.panel-body-->
                            </div>
                            <!--/.panel-collapsed-->
                          </div>
                          <!--/.panel tema 1.2-->

                        </div>
                        <!--/.panel-group temas unidad 1-->

                      </div>
                      <!--/.panel-body-->
                    </div>
                    <!--/.panel-collapse-->
                  </div>
                  <!--/.Unidad 1-->

                  <div class="panel panel-success">
                    <div class="panel-heading" >
                      <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#panel-unidades" href="#panel-unidad2" aria-expanded="false" class="collapsed"><b>2. Determinantes</b></a>
                      <div id="hrs-unidad2" style="float:right;"><b>10 hrs</b></div>
                      </h4>
                    </div>
                    <div id="panel-unidad2" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                      <div class="panel-body">
                      <form role="form" id="form-unidad2">
                        <div class="form-group" style="float:right;">
                          <button type="button" id="btn-del-compProf" class="btn btn-danger">Eliminar unidad</button>
                        </div>
                        <div class="form-group">
                          <label>Objetivo específico</label>
                          <textarea class="form-control" id="unidad2Objetivo" rows="2" placeholder="Objetivo específico"></textarea>
                        </div>
                        <div class="form-group">
                          <label for="inputNuevoTema">Temas</label>
                          <div class="form-group input-group">
                          <input type="text" class="form-control" id="inputUnidad2NuevoTema"
                          placeholder="Nombre del tema" required>
                          <span class="input-group-btn">
                          <button type="button" id="btn-add-tema" class="btn btn-primary">Agregar</button>
                          </span>
                          </div>
                        </div>
                      </form>
                      <!--/. form-unidad2-->

                      <div class="panel-group" id="panel-unidad2-temas">

                        <div class="panel panel-info">
                          <div class="panel-heading">
                            <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#panel-unidad2-temas" href="#panel-unidad2-tema1" aria-expanded="false" class="collapsed"><b>2.1 Definición y propiedades de los determinantes</b></a>
                            <div id="hrs-unidad2" style="float:right;"><b>5 hrs</b></div>
                            </h4>
                          </div>
                          <!--/.panel-heading-->
                          <div id="panel-unidad2-tema1" class="panel-collapse collapse">
                            <div class="panel-body">
                              <form role="form" id="form-unidad1tema1">
                                <div class="form-group" style="float:right;">
                                  <button type="button" id="btn-del-compProf" class="btn btn-danger">Eliminar tema</button>
                                </div>

                                <div class="form-group form-inline">
                                  <label for="inputUnidad2HrsTema1">Horas </label>
                                  <input type="text" class="form-control" id="inputUnidad2HrsTema1" placeholder="#" required  style="width:50px;text-align:center;" maxlength="2">
                                </div>

                                <!-- subtemas-->
                                <div class="form-group">
                                  <label for="inputNuevoTema">Subtemas</label>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoTema" placeholder="Nombre del subtema" required>
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                    </span>
                                  </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="a) Definición de función determinante">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="b) Cálculo de determinantes y propiedades">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="c) Cofactores y determinantes">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--./subtemas-->
                                  <hr>
                                  <!--Estrategias didácticas-->
                                  <div class="form-group">
                                    <label for="inputNuevoTema">Métodos y actividades (estratégias) didácticas</label>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad2NuevoTema" placeholder="Nombre de la estratégia didáctica" required>
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                      </span>
                                    </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Método expositivo">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Estudio de casos">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Resolución de ejercicios y problemas">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--/.Estrategias didácticas-->
                                  <hr>
                                  <!--Lecturas-->
                                  <div class="form-group">
                                    <label for="inputNuevoTema">Lecturas y otros recursos</label>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad2NuevoTema" placeholder="Nombre del recurso" required>
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                      </span>
                                    </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="DATE, C.J. Introducción a los sistemas de bases de datos. México: Pearson Education de México, 2001.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="GÓMEZ VIETES, A. Sistemas de información: herramientas prácticas para la gestión. México: Alfaomega, 2010.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="ORBEGOZO ARANA, Borja. Gestión de bases de datos con SQL y MySQL y Access: Curso práctico. México: Alfaomega, 2013.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--/.Lecturas-->

                              </form>
                              <!--/. form-tema-->
                            </div>
                            <!--/.panel-body-->
                          </div>
                          <!--/.panel-collapsed-->
                        </div>
                        <!--/.panel tema 2.1-->

                        <div class="panel panel-info">
                          <div class="panel-heading">
                            <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#panel-unidad2-temas" href="#panel-unidad2-tema2" aria-expanded="false" class="collapsed"><b>2.2 Aplciaciones de los determinantes</b></a>
                            <div id="hrs-unidad1" style="float:right;"><b>5 hrs</b></div>
                            </h4>
                          </div>
                          <!--/.panel-heading-->
                          <div id="panel-unidad2-tema2" class="panel-collapse collapse">
                            <div class="panel-body">
                              <form role="form" id="form-unidad2tema2">
                                <div class="form-group" style="float:right;">
                                  <button type="button" id="btn-del-compProf" class="btn btn-danger">Eliminar tema</button>
                                </div>

                                <div class="form-group form-inline">
                                  <label for="inputUnidad2HrsTema2">Horas </label>
                                  <input type="text" class="form-control" id="inputUnidad2HrsTema2" placeholder="#" required  style="width:50px;text-align:center;" maxlength="2">
                                </div>

                                <!-- subtemas-->
                                <div class="form-group">
                                  <label for="inputNuevoTema">Subtemas</label>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoTema" placeholder="Nombre del subtema" required>
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                    </span>
                                  </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema2" placeholder="Nombre del subtema" disabled value="a) Matriz inversa por medio de la matriz adjunta">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema2" placeholder="Nombre del subtema" disabled value="b) Regla de clamer">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--./subtemas-->
                                  <hr>
                                  <!--Estrategias didácticas-->
                                  <div class="form-group">
                                    <label for="inputNuevoTema">Métodos y actividades (estratégias) didácticas</label>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad2NuevoTema" placeholder="Nombre de la estratégia didáctica" required>
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                      </span>
                                    </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema2" placeholder="Nombre del subtema" disabled value="Método expositivo">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema2" placeholder="Nombre del subtema" disabled value="Estudio de casos">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Resolución de ejercicios y problemas">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--/.Estrategias didácticas-->
                                  <hr>
                                  <!--Lecturas-->
                                  <div class="form-group">
                                    <label for="inputNuevoTema">Lecturas y otros recursos</label>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad2NuevoTema" placeholder="Nombre del recurso" required>
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                      </span>
                                    </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="DATE, C.J. Introducción a los sistemas de bases de datos. México: Pearson Education de México, 2001.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema2" placeholder="Nombre del subtema" disabled value="GÓMEZ VIETES, A. Sistemas de información: herramientas prácticas para la gestión. México: Alfaomega, 2010.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="ORBEGOZO ARANA, Borja. Gestión de bases de datos con SQL y MySQL y Access: Curso práctico. México: Alfaomega, 2013.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--/.Lecturas-->
                              </form>
                              <!--/. form-tema-->
                            </div>
                            <!--/.panel-body-->
                          </div>
                          <!--/.panel-collapsed-->
                        </div>
                        <!--/.panel tema 2.2-->

                      </div>
                      <!--/.panel-group temas unidad 2-->

                    </div>
                    <!--/.panel-body-->
                  </div>
                  <!--/.panel-collapse-->
                  </div>
                  <!--/.Unidad 2-->

                <div class="panel panel-success">
                    <div class="panel-heading" >
                      <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#panel-unidades" href="#panel-unidad3" aria-expanded="false" class="collapsed"><b>3. Vectores en R2 y R3</b></a>
                      <div id="hrs-unidad3" style="float:right;"><b>23 hrs</b></div>
                      </h4>
                    </div>
                    <div id="panel-unidad3" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
                      <div class="panel-body">
                      <form role="form" id="form-unidad3">
                        <div class="form-group" style="float:right;">
                          <button type="button" id="btn-del-compProf" class="btn btn-danger">Eliminar unidad</button>
                        </div>
                        <div class="form-group">
                          <label>Objetivo específico</label>
                          <textarea class="form-control" id="unidad3Objetivo" rows="2" placeholder="Objetivo específico"></textarea>
                        </div>
                        <div class="form-group">
                          <label for="inputNuevoTema">Temas</label>
                          <div class="form-group input-group">
                          <input type="text" class="form-control" id="inputUnidad3NuevoTema"
                          placeholder="Nombre del tema" required>
                          <span class="input-group-btn">
                          <button type="button" id="btn-add-tema" class="btn btn-primary">Agregar</button>
                          </span>
                          </div>
                        </div>
                      </form>
                      <!--/. form-unidad3-->

                      <div class="panel-group" id="panel-unidad3-temas">

                        <div class="panel panel-info">
                          <div class="panel-heading">
                            <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#panel-unidad3-temas" href="#panel-unidad3-tema1" aria-expanded="false" class="collapsed"><b>3.1 Definición, operaciones y propiedades de los vectores</b></a>
                            <div id="hrs-unidad3" style="float:right;"><b>13 hrs</b></div>
                            </h4>
                          </div>
                          <!--/.panel-heading-->
                          <div id="panel-unidad3-tema1" class="panel-collapse collapse">
                            <div class="panel-body">
                              <form role="form" id="form-unidad3tema1">
                                <div class="form-group" style="float:right;">
                                  <button type="button" id="btn-del-compProf" class="btn btn-danger">Eliminar tema</button>
                                </div>

                                <div class="form-group form-inline">
                                  <label for="inputUnidad3HrsTema1">Horas </label>
                                  <input type="text" class="form-control" id="inputUnidad3HrsTema1" placeholder="#" required  style="width:50px;text-align:center;" maxlength="2">
                                </div>

                                <!-- subtemas-->
                                <div class="form-group">
                                  <label for="inputNuevoTema">Subtemas</label>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoTema" placeholder="Nombre del subtema" required>
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                    </span>
                                  </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema1" placeholder="Nombre del subtema" disabled value="a) Definición de vectores">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema1" placeholder="Nombre del subtema" disabled value="b) Representación geométrica">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema1" placeholder="Nombre del subtema" disabled value="c) Combinación lineal">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--./subtemas-->
                                  <hr>
                                  <!--Estrategias didácticas-->
                                  <div class="form-group">
                                    <label for="inputNuevoTema">Métodos y actividades (estratégias) didácticas</label>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad3NuevoTema" placeholder="Nombre de la estratégia didáctica" required>
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                      </span>
                                    </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Método expositivo">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Estudio de casos">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Resolución de ejercicios y problemas">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--/.Estrategias didácticas-->
                                  <hr>
                                  <!--Lecturas-->
                                  <div class="form-group">
                                    <label for="inputNuevoTema">Lecturas y otros recursos</label>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad3NuevoTema" placeholder="Nombre del recurso" required>
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                      </span>
                                    </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema1" placeholder="Nombre del subtema" disabled value="DATE, C.J. Introducción a los sistemas de bases de datos. México: Pearson Education de México, 2001.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema1" placeholder="Nombre del subtema" disabled value="GÓMEZ VIETES, A. Sistemas de información: herramientas prácticas para la gestión. México: Alfaomega, 2010.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema1" placeholder="Nombre del subtema" disabled value="ORBEGOZO ARANA, Borja. Gestión de bases de datos con SQL y MySQL y Access: Curso práctico. México: Alfaomega, 2013.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--/.Lecturas-->

                              </form>
                              <!--/. form-tema-->
                            </div>
                            <!--/.panel-body-->
                          </div>
                          <!--/.panel-collapsed-->
                        </div>
                        <!--/.panel tema 3.1-->

                        <div class="panel panel-info">
                          <div class="panel-heading">
                            <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#panel-unidad3-temas" href="#panel-unidad3-tema2" aria-expanded="false" class="collapsed"><b>3.2 Ecuaciones vectoriales</b></a>
                            <div id="hrs-unidad3" style="float:right;"><b>10 hrs</b></div>
                            </h4>
                          </div>
                          <!--/.panel-heading-->
                          <div id="panel-unidad3-tema2" class="panel-collapse collapse">
                            <div class="panel-body">
                              <form role="form" id="form-unidad3tema2">
                                <div class="form-group" style="float:right;">
                                  <button type="button" id="btn-del-compProf" class="btn btn-danger">Eliminar tema</button>
                                </div>

                                <div class="form-group form-inline">
                                  <label for="inputUnidad3HrsTema2">Horas </label>
                                  <input type="text" class="form-control" id="inputUnidad3HrsTema2" placeholder="#" required  style="width:50px;text-align:center;" maxlength="2">
                                </div>

                                <!-- subtemas-->
                                <div class="form-group">
                                  <label for="inputNuevoTema">Subtemas</label>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoTema" placeholder="Nombre del subtema" required>
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                    </span>
                                  </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema2" placeholder="Nombre del subtema" disabled value="a) Ecuacuiones vectoriales y paramétricas en rectas R3">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema2" placeholder="Nombre del subtema" disabled value="b) Ecuaciones de planos">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema2" placeholder="Nombre del subtema" disabled value="c) Independencia lineal">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema2" placeholder="Nombre del subtema" disabled value="d) Matrices ortogonales">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--./subtemas-->
                                  <hr>
                                  <!--Estrategias didácticas-->
                                  <div class="form-group">
                                    <label for="inputNuevoTema">Métodos y actividades (estratégias) didácticas</label>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad3NuevoTema" placeholder="Nombre de la estratégia didáctica" required>
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                      </span>
                                    </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema2" placeholder="Nombre del subtema" disabled value="Método expositivo">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema2" placeholder="Nombre del subtema" disabled value="Estudio de casos">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema1" placeholder="Nombre del subtema" disabled value="Resolución de ejercicios y problemas">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--/.Estrategias didácticas-->
                                  <hr>
                                  <!--Lecturas-->
                                  <div class="form-group">
                                    <label for="inputNuevoTema">Lecturas y otros recursos</label>
                                    <div class="form-group input-group">
                                      <input type="text" class="form-control" id="inputUnidad3NuevoTema" placeholder="Nombre del recurso" required>
                                      <span class="input-group-btn">
                                        <button type="button" id="btn-add-tema" class="btn btn-info">Agregar</button>
                                      </span>
                                    </div>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" placeholder="Nombre del subtema" disabled value="DATE, C.J. Introducción a los sistemas de bases de datos. México: Pearson Education de México, 2001.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema2" placeholder="Nombre del subtema" disabled value="GÓMEZ VIETES, A. Sistemas de información: herramientas prácticas para la gestión. México: Alfaomega, 2010.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <div class="form-group input-group">
                                    <input type="text" class="form-control" id="inputUnidad3NuevoSubTema1" placeholder="Nombre del subtema" disabled value="ORBEGOZO ARANA, Borja. Gestión de bases de datos con SQL y MySQL y Access: Curso práctico. México: Alfaomega, 2013.">
                                    <span class="input-group-btn">
                                      <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                                    </span>
                                  </div>
                                  <!--/.Lecturas-->
                              </form>
                              <!--/. form-tema-->
                            </div>
                            <!--/.panel-body-->
                          </div>
                          <!--/.panel-collapsed-->
                        </div>
                        <!--/.panel tema 3.2-->

                      </div>
                      <!--/.panel-group temas unidad 3-->

                    </div>
                    <!--/.panel-body-->
                  </div>
                  <!--/.panel-collapse-->
                </div>
                <!--/.Unidad 3-->

              </div> <!--/.Panel-group Unidades-->

                </div>
                <!--/.panel-body -->
                </div>
                <!--/.panel -->
              </div>
              <!--/.TAB Contenidos-->


              <!-- TAB Estrategias -->
              <div class="tab-pane" id="estrategias">
                <div class="panel panel-default">
                  <div class="panel-body">

                    <form role="form" id="form-estrategias">
                      <!--Estrategias didácticas-->
                      <div class="form-group">
                        <label for="inputNuevoTema">Estrategias de enseñanza y aprendizaje</label>
                        <div class="form-group input-group">
                          <input type="text" class="form-control" id="inputUnidad2NuevoTema" placeholder="Nombre de la estrategia de enseñanza" required>
                          <span class="input-group-btn">
                            <button type="button" id="btn-add-tema" class="btn btn-success">Agregar</button>
                          </span>
                        </div>
                      </div>
                      <div class="form-group input-group">
                        <input type="text" class="form-control" id="inputUnidad2NuevoSubTema2" disabled value="Método expositivo">
                        <span class="input-group-btn">
                          <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                        </span>
                      </div>
                      <div class="form-group input-group">
                        <input type="text" class="form-control" id="inputUnidad2NuevoSubTema2" disabled value="Estudio de casos">
                        <span class="input-group-btn">
                          <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                        </span>
                      </div>
                      <div class="form-group input-group">
                        <input type="text" class="form-control" id="inputUnidad2NuevoSubTema1" disabled value="Resolución de ejercicios y problemas">
                        <span class="input-group-btn">
                          <button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button>
                        </span>
                      </div>
                      <!--/.Estrategias didácticas-->
                    </form>
                    <!--/.form-estrategias-->

                  </div>
                  <!--/.panel-body-->
                </div>
                <!--/.panel-estrategias-->
              </div>
              <!--/.TAB estrategias-->

              <!-- TAB Evaluación -->
              <div class="tab-pane" id="evaluacion">
                <div class="panel panel-default">
                  <div class="panel-body">

                    <form role="form" id="form-estrategias">
                      <div class="table-responsive">
                        <table class="table">
                          <thead>
                            <tr>
                              <th width="45%">Elaboración y/o presentación de</th>
                              <th width="15%">Periodicidad</th>
                              <th width="15%">Abarca</th>
                              <th width="15%">Ponderación</th>
                              <th width="10%"></th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td><input type="text" class="form-control" id="evaluacionNombre" placeholder="Evaluación" ></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" placeholder="Periodicidad de la evaluación" ></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" placeholder="Unidades que abarca" ></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" placeholder="Ponderación" ></td>
                              <td><button type="button" id="btn-add-tema" class="btn btn-success">Agregar</button></td>
                            </tr>
                            <tr>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Primer examen parcial" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="1" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Unidad 1" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="15%" disabled></td>
                              <td><button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button></td>
                            </tr>
                            <tr>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Segundo examen parcial" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Mensual" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Unidad 2" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="15%" disabled></td>
                              <td><button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button></td>
                            </tr>
                            <tr>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Tercer examen parcial" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="1" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Unidad 3-4" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="30%" disabled></td>
                              <td><button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button></td>
                            </tr>
                            <tr>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Examen ordinario" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Semestral" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Unidades 1-5" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Promedio tres parciales" disabled></td>
                              <td><button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button></td>
                            </tr>
                            <tr>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Examen extraordinario" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Semestral" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="Unidades 1-5" disabled></td>
                              <td><input type="text" class="form-control" id="evaluacionPeriodicidad" value="100%" disabled></td>
                              <td><button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button></td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                      <!--/.table evaluaciones-->
                    </form>
                    <!--/.form-estrategias-->

                  </div>
                  <!--/.panel-body-->
                </div>
                <!--/.panel-estrategias-->
              </div>
              <!--/.TAB Evaluación-->

              <!-- TAB Estrategias -->
              <div class="tab-pane" id="bibliografia">
                <div class="panel panel-default">
                  <div class="panel-body">
                    <div class="table-responsive">

                      <form role="form" id="form-estrategias">
                        <table class="table" >
                          <thead>
                            <tr>
                              <th width="70%">Recurso</th>
                              <th width="20%">Tipo</th>
                              <th width="10%"></th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td><input type="text" class="form-control" id="evaluacionNombre" placeholder="Nombre del recurso" ></td>
                              <td>
                                <select class="form-control" id="inputSemestre">
                                  <option>Base de Datos</option>
                                  <option>Sitio de Internet</option>
                                  <option>Texto básico</option>
                                  <option>Texto complementario</option>
                                  <option>Otro</option>
                                </select>
                              </td>
                              <td><button type="button" id="btn-add-tema" class="btn btn-success">Agregar</button></td>
                            </tr>
                            <tr>
                              <td><input type="text" class="form-control" id="evaluacionNombre" value="Introducción al Álgebra Lineal. Howard Anton. Editorial Limusa, 2008." disabled ></td>
                              <td><input type="text" class="form-control" id="evaluacionNombre" value="Texto básico" disabled></td>
                              <td><button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button></td>
                            </tr>
                            <tr>
                              <td><input type="text" class="form-control" id="evaluacionNombre" value="Cálculo de varias Variables con Álgebra Lineal. Philip C. Curtis Jr. Editorial Limusa, 1997." disabled ></td>
                              <td><input type="text" class="form-control" id="evaluacionNombre" value="Texto básico" disabled></td>
                              <td><button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button></td>
                            </tr>
                            <tr>
                              <td><input type="text" class="form-control" id="evaluacionNombre" value="Página web de Octave: https://www.gnu.org/software/octave/" disabled ></td>
                              <td><input type="text" class="form-control" id="evaluacionNombre" value="Sitio de Internet" disabled></td>
                              <td><button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button></td>
                            </tr>
                            <tr>
                              <td><input type="text" class="form-control" id="evaluacionNombre" value="Página web de Scilab: http://www.scilab.org/" disabled ></td>
                              <td><input type="text" class="form-control" id="evaluacionNombre" value="Sitio de Internet" disabled></td>
                              <td><button type="button" id="btn-del-compProf" class="btn btn-danger"><i class="fa fa-minus"></i></button></td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                      <!--/.table evaluaciones-->
                    </table>
                    <!--/.form-bibliografia-->

                  </div>
                  <!--/.panel-body-->
                </div>
                <!--/.panel-estrategias-->
              </div>
              <!--/.TAB estrategias-->

            </div>
            <!--/.TABS-->


          </div>
          <!-- /.panel-body -->
        </div>
        <!-- /.panel -->

      </div>
      <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->

</div>
<!-- /#wrapper -->

</body>
