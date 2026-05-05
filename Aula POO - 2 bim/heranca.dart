// Herança Simples
//-----------------
// 1 Classe Pai .. n classes filhas

// Herança Múltipla
//-----------------
// 1 Classe filha .. n classes Pai

// Homem
// - Nome
// - CPF
// - Aniversário
// + Falar()
// + Conversar()
// + Andar()

// Aranha
// - Veneno
// - Presas
// + soltarTeias ()
// + Picar ()
// + andar()

// HomemAranha: Homem, Aranha
// +soltarTeias() <- sobescrita de métodos @override

//            Diamante da Morte

//                    A
//                atributoX

//        B                       C
//    (atributoX)             (atributoX)
//    mudarX()                alterarX()

//                    D
//                B:atributoX
//                C:atributoX
//                mudarX()
//                alterarX()
//                somarX()

// INTERFACE
//-----------

// - Funciona como um contrato entre duas classes
// - Composta apenas por métodos abstratos
//      - Método sem implementação
//      - Somente a assinatura do método
// - OBRIGATORIAMENTE a classe precisa implementar os métodos

// - Utilizamos advérbios para dar Nome

//      EXEMPLOS
//     ----------

abstract interface class Imprimivel {
    void imprimir();
}

abstract interface class Auditavel {
    void imprimirLog(String mensagem);
}

abstract interface class Colorivel {
    void colorir(String cor);
}

// CLASSES ABSTRATAS
//-------------------
// - Não pode ser instanciada
// - Não permite a criação de objetos do tipo dela

//Conta (abstract)
// - saldo
// - titular
// + sacar()
// + depositar()
// + aplicarJuros() // método abstrato, sem implementação

//ContaCorrente extends Conta
// + aplicarJuros() +10%

//ContaPoupanca extends Conta
// + aplicarJuros() +25%

//ContaSalario extends Conta
// + aplicarJuros() +0%

abstract class Conta {

  late int saldo;
  late String titular;

  Conta(this.titular) :saldo = 0;

  depositar() {
    ...
  }

  sacar() {
    ...
  }

  void aplicarJuros(); // método abstrato, sem implementação
}