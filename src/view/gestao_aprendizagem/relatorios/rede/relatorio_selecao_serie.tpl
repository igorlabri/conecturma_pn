%include('gestao_aprendizagem/header/header.tpl', title="Gestão Aprendizagem", css="relatorio_aluno.css")
%include('gestao_aprendizagem/menu/menu.tpl')

<style>
    footer{

        position:absolute;

    }
</style>

<div class="col-md-9 order-md-2" style="margin-top: 6px;">
    <div class="col-md text-rel" style="padding-left:0px;">
        <h2>Selecione a Série</h2>
    </div>

    <table class="table table-bordered" style="margin-top:0;">
    <thead style="background-color:#9ed0f6;">
      <tr  style="color:#fff;">
        <th scope="col" colspan="2">Série</th>
      </tr>
    </thead>

    <tbody style="background-color:#f3f3f3;">
        <tr class="hoover" style="cursor: pointer;" onclick="redirect_vizualizar_relatorio('1')">
            <td colspan="2">1º Ano</td>
        </tr>
        <tr class="hoover" style="cursor: pointer;" onclick="redirect_vizualizar_relatorio('2')">
            <td colspan="2">2º Ano</td>
        </tr>
        <tr class="hoover" style="cursor: pointer;" onclick="redirect_vizualizar_relatorio('3')">
            <td colspan="2">3º Ano</td>
        </tr>

    </tbody>
  </table>

</div>
<script>
    function redirect_vizualizar_relatorio(id, escola_id){
        window.location.replace("/relatorios/visualizar_relatorio_rede?serie="+id+"&rede="+{{rede}});
    }

</script>
    </div>
</div>

<!--<footer class="text-muted footer1">
    <div class="footer-font">Política de Privacidade | Copyright &copy; Aondê Educacional</div>
</footer>-->
<script type="text/javascript" src="../static/js/jquery-3.3.1-min.js"></script>
<script type="text/javascript" src="../static/js/Chart.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="../static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../static/js/graficoRelatorio.js"></script>

%include('gestao_aprendizagem/footer/footer.tpl')
