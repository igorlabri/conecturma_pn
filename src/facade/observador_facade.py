from model.observador_model import DbObservador

class ObservadorFacade:

    def __init__(self):
        """
        método para utilização do banco de dados
        """
        self.observador = DbObservador()


    def create_observador_facade(self, nome, senha, telefone, email, tipo,escola, vinculo_turma=None,cpf=None, rede=None):
        return self.observador.create_observador(nome=nome, senha=senha, telefone=telefone, cpf=cpf, email=email,
                                                 tipo=tipo, rede=str(rede), escola=str(escola),vinculo_turma=str(vinculo_turma))
    def read_observador_facade(self):
        return self.observador.read_observador()

    def redefinir_senha_facade(self, id, senha):
        self.observador.redefinir_senha(id=id, senha=senha)

    def update_observador_facade(self, id, nome, telefone, cpf, email):
        return self.observador.update_observador(id, nome, telefone, cpf, email)

    def create_hash_login_facade(self,id, hash):
        self.observador.create_hash_login(id=id, hash=hash)

    def delete_observador_facade(self, deletar_ids):
        self.observador.delete_observador(deletar_ids=deletar_ids)

    def search_observador_id_facade(self, id):
        return self.observador.search_observador_id(id=id)

    def search_observador_email_facade(self, email):
        return self.observador.search_observador_email(email=email)

    def search_observador_facade(self, nome):
        return self.observador.search_observador(nome)

    def search_observador_tipo_facade(self, tipo):
        return self.observador.search_observador_tipo(tipo)

    def search_observador_professor_by_escola_facade(self, vinculo_escola):
        return self.observador.search_observador_professor_by_escola(vinculo_escola)

    def search_observador_escola_listagem_facade(self, login, vinculo_escola):
        return self.observador.search_observador_escola_listagem(login=login, vinculo_escola=vinculo_escola)

    def search_observador_escola_filtro_facade(self, vinculo_escola):
        return self.observador.search_observador_escola_filtro(vinculo_escola=vinculo_escola)

    def search_observador_turma(self,vinculo_turma):
        return self.observador.search_observador_turma(vinculo_turma=vinculo_turma)

    def search_observador_inativos_facade(self, nome):
        return self.observador.search_observador_inativos(nome)

    def login_date_facade(self, id, data):
        self.observador.login_date(id, data)


