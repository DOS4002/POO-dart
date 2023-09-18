void main(List<String> arguments) {
  String nome = "Salmão";
  String tipo = "Peixe";
  double peso = 250.5;

  Alimento alimento = Peixe(nome, tipo, peso);
  print(alimento.preparar());
}

class Alimento {
  String nome;
  String tipo;
  double peso;

  Alimento(this.nome, this.tipo, this.peso);

  String preparar() {
    return "Preparando $nome ($tipo) com $peso gramas.";
  }
}

class Peixe extends Alimento {
  Peixe(String nome, String tipo, double peso) : super(nome, tipo, peso);

  @override
  String preparar() {
    return "Cozinhando $nome ($tipo) com $peso gramas.";
  }
}

class Carne extends Alimento {
  Carne(String nome, String tipo, double peso) : super(nome, tipo, peso);

  @override
  String preparar() {
    return "Grelhando $nome ($tipo) com $peso gramas.";
  }
}

abstract class Preparacao {
  String preparar();
}

class Churrasco extends Preparacao {
  @override
  String preparar() {
    return "Preparando churrasco delicioso!";
  }
}

class Sushi extends Preparacao {
  @override
  String preparar() {
    return "Preparando sushi fresco!";
  }
}
