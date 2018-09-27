
<div style="cursor: pointer;"  class="col-md-12 item-tabela " data-toggle="collapse" data-target="#collapse{{i['id']}}" aria-expanded="true"
       aria-controls="collapse{{i['id']}}" id="id-nossa-escola" onclick="seta('id-nossa-escola')">
    {{i['nome']}}
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
                            <li class="nav-item">
                                <button class="nav-link" data-toggle="tab" href="#nossa-escola-prof"
                                        aria-controls="scola-do-rock-prof" aria-selected="false">Alunos
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- aqui começa o conteudo das guias  -->
                <div class="tab-content row-impar">
                    <div class="tab-pane container active" id="nossa-escola">
                        <form>
                            <input type="hidden" id="id_turma{{i['id']}}" value="{{i['id']}}">
                            <div class="row" style="margin-top: 30px">
                                <div class="col-md-12" style="height: 215px;">
                                     <span onclick="allow_edit({{i['id']}})" class="{{i['id']}}" id="icone_edit{{i['id']}}"
                                      style="cursor:pointer; position: absolute; right: 0;">
                                            <i class="fas fa-edit edit-ico" style="color: #969696;padding-right: 27px;"></i>
                                        </span>

                                    <div class="row distanciamento">
                                        <div class=" col-md-6" style="margin-left: 10px;">
                                            <label for="nome" style="background-color: inherit;">Nome:
                                                <span style="color:red">*
                                                </span>
                                            </label>
                                            <input type="text" placeholder="Escola do rock"
                                                   class="form-control disabled{{i['id']}}"
                                                   size="30" name="" id="nome{{i['id']}}" value="{{i['nome']}}"
                                                   style="width: 298px;"       disabled>
                                        </div>
                                        <div class="col-md-4" style="padding-left: 10px; right: 72px;">
                                            <label for="serie">serie</label>
                                            <br>
                                            <input type="text" size="24" class="form-control" name=""
                                                   id="serie{{i['id']}}" value="{{i['serie']}}" disabled>
                                        </div>
                                    </div>
                                    <div class="row distanciamento">
                                        <div class="col-md-10" style="margin-left: 10px;">
                                            <label for="professor">Professor:
                                                <span style="color:#ff0000"></span>
                                            </label>
                                            <input type="text" class="form-control" size="21" name=""
                                                   id="escola{{i['id']}}" value="{{i['vinculo_escola']}}"  style="width: 579px;" disabled>
                                        </div>
                                    <div class="row distanciamento">
                                        <div class="col-md-10" style="margin-left: 10px;">
                                            <label for="escola{{i['id']}}">escola:
                                                <span style="color:#ff0000">*</span>
                                            </label>
                                            <input type="text" class="form-control" size="21" name=""
                                                   id="escola{{i['id']}}" value="{{i['vinculo_escola']}}" style="width: 579px;" disabled>
                                        </div>
                                    </div>
                                    <!--fim da div dos dados ao lado da imagem-->
                                    <div id="dar_medalhas_todos">
                                        %include('gestao_aprendizagem/turma/medalha_aluno_todos.tpl')
                                    </div> <!--Fechando janela de dar medalhas -->
                                    <!--fim da div dos dados ao lado da imagem-->
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- aqui termina o conteudo da guia do dados de escola  -->
                    <div class="tab-pane fade aba-prof" id="nossa-escola-prof" role="tabpanel"
                         aria-labelledby="escola-do-rock-prof">
                        <div class="row" style="margin-top: 12px;">
                            <div class="container">
                                % for z in i['aluno']:
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="col-md-11">
                                                <div class="row row-par nome-prof" >
                                                    <div class="col-md-4" style="margin-top: 4px;">
                                                        Nome: {{z['nome']}}
                                                        <br>
                                                        Login :{{z['nome_login']}}
                                                    </div>
                                                    <div class="col-md-6 offset-md-2" style="padding:10px">
                                                        <span style="margin-left: 17px;"> &nbsp;senha :</span>
                                                        <img src="/static/img/{{z['senha'][0]}}.png"
                                                             style="padding-left:11px;width: 15%;margin-right:5px;">
                                                        <img src="/static/img/{{z['senha'][1]}}.png"
                                                             style="padding-left:11px;width: 15%;margin-right:5px;">
                                                        <img src="/static/img/{{z['senha'][2]}}.png"
                                                             style="padding-left:11px;width: 15%;margin-right:5px;">
                                                        <img src="/static/img/{{z['senha'][3]}}.png"
                                                             style="padding-left:11px;width: 15%;margin-right:5px;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-1 row-par nome-prof">
                                                <img src="/static/img/icone-medalha-do-aluno.png" data-toggle="modal" data-target="#medalha_janela{{z['id']}}" style="cursor: pointer;margin-top: 12px;margin-left: -5px;">
                                            </div>
                                            %include('gestao_aprendizagem/turma/medalha_aluno.tpl')
                                        </div>
                                    </div>
                                %end
                        </div>
                    </div>
                </div>
                <br>
            </div>
            <div class="row" style="margin-bottom: 10px">
                % if tipo != '2':
                <div class="col-md-1">
                  <span onclick="delete_estrutura({{i['id']}})" style="cursor:pointer;">
                    <i class="far fa-trash-alt" style="color:#969696;"></i>
                  </span>
                </div>
                % end
                <div class="offset-md-10 col-md-1">
                    <span onclick="allow_edit({{i['id']}})" class="{{i['id']}}" id="icone_edit{{i['id']}}"
                          style="cursor:pointer;">
                        <i class="fas fa-edit edit-ico" style="color: #969696;padding-right: 27px;"></i>
                    </span>
                    <span onclick="update_turma({{i['id']}})" id="edit{{i['id']}}"
                          style="cursor:pointer;display:none;">
                            <i class="far fa-save fa-lg" style="color: #969696;margin-left: -10px"></i>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>
