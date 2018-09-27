
<div style="cursor: pointer;" class="col-md-9 item-tabela" id="id-nossa-escola" data-toggle="collapse" data-target="#collapse{{i['id']}}" aria-expanded="true" aria-controls="collapse{{i['id']}}" id="a_setinha{{i['id']}}" onclick="seta('a_setinha{{i['id']}}')">
    {{i['nome']}}
</div>
<div style="cursor: pointer;" class="col-md-3 item-tabela" data-toggle="collapse" data-target="#collapse{{i['id']}}" aria-expanded="true" aria-controls="collapse{{i['id']}}" id="a_setinha{{i['id']}}" onclick="seta('a_setinha{{i['id']}}')">
    {{i['tipo']}}
</div>


<div class="container">
    <div class="row row-impar">
        <div id="collapse{{i['id']}}" class="collapse col-md-12 item-tabela" role="tabpanel" data-parent="#accordion">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs abas" role="tablist">
                            <li class="nav-item ">
                                <a class="nav-link active " data-toggle="tab" href="#nossa-escola" role="tab"
                                   aria-controls="escola-do-rock" aria-selected="true">Dados da Gerais</a>
                            </li>
                            <!--<li class="nav-item">-->
                            <!--<button class="nav-link" data-toggle="tab" href="#nossa-escola-prof" aria-controls="scola-do-rock-prof" aria-selected="false">Professores</button>-->
                            <!--</li>-->
                        </ul>
                    </div>
                </div>
                <!-- aqui começa o conteudo das guias  -->
                <div class="tab-content row-impar">
                    <div class="tab-pane container active" id="nossa-escola">
                        <form>
                            <input type="hidden" id="observador_id{{i['id']}}" value="{{i['id']}}">
                            <div class="row distanciamento" style="margin-top: 30px">
                                <div class="col-md-12">
                                    <div class="row distanciamneto" style="margin-left: 5px;">
                                        <div class=" col-md-">
                                            <label for="nome" style="background-color: inherit;">Nome:
                                                <span style="color:#ff0000">*</span>
                                            </label>
                                            <input type="text" class="form-control  disabledo{{i['id']}} input-height-30" size="30" name=""
                                                   id="nome_obs{{i['id']}}" value="{{i['nome']}}" disabled>
                                        </div>
                                        <div class="col-md-" style="padding-left: 10px">
                                            <label for="data">Data de nascimeto</label>
                                            <span style="color:#ff0000">*</span>
                                            <br>
                                            <input type="date" size="25" class="form-control input-height-30"
                                                   value="{{i['nascimento']}}" name="" id="aluno_nascimento"
                                                   onchange="document.getElementById('aluno_nascimento').style.boxShadow = 'none'" disabled>
                                        </div>
                                        <div class="col-md-" style="padding-left: 10px">
                                            <label for="aluno_sexo"
                                                   style="margin-bottom:-6px; height: 35px;">Sexo</label>
                                            <select id="aluno_sexo" class="custom-select custom-select-md "
                                                    style="height:35px" disabled>
                                                <option value="1">Masculino</option>
                                                <option value="2">Feminino</option>
                                            </select>
                                        </div>
                                    </div>
                                    <br>

                                </div>
                            </div>
                                <h5>Acesso</h5>

                                <div class="row distanciamento" style="margin-left: 5px;">

                                    <div class="col-md-">
                                        <label for="login">Email</label>
                                        <span style="color:#ff0000">*</span>
                                        <input type="email" size="25" class="form-control disabledo{{i['id']}}" name="" id="email{{i['id']}}"
                                               value="{{i['email']}}" disabled>
                                    </div>
                                </div>
                                <!--fim da div dos dados ao lado da imagem-->
                        </form>
                    </div>

                </div>
            </div>

            <!-- aqui termina o conteudo da guia do dados de escola  -->

            <div class="row" style="margin-bottom: 10px">
                    % if tipo < '2':
                    <div class="col-md-1">
              <span onclick="delete_estrutura({{i['id']}})" style="cursor:pointer;">
                <i class="far fa-trash-alt" style="color:#969696;"></i>
              </span>
                    </div>
                    % end
                    <div class="offset-md-10 col-md-1">
                        <span onclick="allow_edit_obs({{i['id']}})" class="{{i['id']}}" id="icone_edito{{i['id']}}"
                              style="cursor:pointer;display:block;">
                            <i class="fas fa-edit edit-ico" style="color: #969696;padding-right: 27px;"></i>
                        </span>
                        <span onclick="update_observador({{i['id']}})" id="edito{{i['id']}}"
                              style="cursor:pointer;display:none;">
                            <i class="far fa-save fa-lg" style="color: #969696;margin-left: -10px"></i>
                        </span>
                    </div>
                </div>
            <!--<div class="row">
              <div class="container">
                <div class="row">
                  <div class="container" style="margin-top: 20px">
                    <div class="offset-md-1 col-md-">
                      <p>Professor
                        <i class="far fa-question-circle"></i>
                      </p>
                    </div>

                  </div>
                </div>
              </div>
            </div>-->
        </div>

    </div>
    <!--<div class="row" style="margin-bottom: 10px">

        <div class="col-md-1">
          <span onclick="delete_estrutura({{i['id']}})" style="cursor:pointer;">
            <i class="far fa-trash-alt" style="color:#969696;"></i>
          </span>
        </div>
      <div class="offset-md-10 col-md-1">
        <span onclick="update_escola({{i['id']}})" style="cursor:pointer;">
          <i class="fas fa-edit edit-ico"></i>
        </span>
      </div>
    </div>-->
</div>
