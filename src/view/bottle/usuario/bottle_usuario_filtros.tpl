    %if int(observador_tipo) <=3:
        %if int(observador_tipo) <=1:
    <select id="filtro_rede" onChange="filtro_usuario()">
            %if observador_tipo is '0':
                <option value="0">---- Selecione rede ----</option>
                % for r in redes:
                    <option value="{{r['id']}}" >{{r['nome']}}</option>
                % end
            %elif redes == None or redes == '':
                <option value="0">---- Selecione rede ----</option>
            %else:
                <option value="{{redes['id']}}">{{redes['nome']}}</option>
            %end
    </select>
            %if int(observador_tipo) is not 3:
    <select id="filtro_escola" >
                %if observador_tipo is '0':
                    <option value="0" >---- Selecione escola ----</option>
                    % for e in escolas:
                        <option value="{{e['id']}}">{{e['nome']}}</option>
                    % end
                %elif escolas == None or escolas == '':
                    <option value="0">---- Selecione escola ----</option>
                %else:
                    <option value="{{escolas['id']}}">{{escolas['nome']}}</option>
                %end
    </select>
            %end
        %end
    %end

    <select id="filtro_turma">
        <option value="0">---- Selecione turma ----</option>
        % for t in turmas:
            <option value="{{t['id']}}">{{t['nome']}}</option>
        % end
        </div>
    </select>
    <select id="filtro_tipo_usuario">
        <option value="0">---- Selecione Tipo do usuário ----</option>
        <option value="1">Gestor</option>
        <option value="2">Diretor</option>
        <option value="3">Professor</option>
        <option value="6">Aluno</option>
    </select>
