class Vacinacao {
  late int id;
  late String nome;
  late String cpf;
  late String email;
  late String local;
  late String dataNascimento;
  late String sexo;
  late String senha;
  late int numeroCartaoSus;
  late String localVac;
  late String diaVac;
  late String horario;

  Vacinacao(
      {required this.id,
      required this.nome,
      required this.cpf,
      required this.email,
      required this.local,
      required this.dataNascimento,
      required this.sexo,
      required this.senha,
      required this.numeroCartaoSus,
      required this.localVac,
      required this.diaVac,
      required this.horario});

  Vacinacao.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    cpf = json['cpf'];
    email = json['email'];
    local = json['local'];
    dataNascimento = json['data_nascimento'];
    sexo = json['sexo'];
    senha = json['senha'];
    numeroCartaoSus = json['numero_cartao_sus'];
    localVac = json['local_vac'];
    diaVac = json['dia_vac'];
    horario = json['horario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['cpf'] = this.cpf;
    data['email'] = this.email;
    data['local'] = this.local;
    data['data_nascimento'] = this.dataNascimento;
    data['sexo'] = this.sexo;
    data['senha'] = this.senha;
    data['numero_cartao_sus'] = this.numeroCartaoSus;
    data['local_vac'] = this.localVac;
    data['dia_vac'] = this.diaVac;
    data['horario'] = this.horario;
    return data;
  }
}
