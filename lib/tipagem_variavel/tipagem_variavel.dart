import 'dart:io';

calculoDeImc() {
  //*Calculando imc
  //pegar o peso da pessoa
  //pegar a altura da pessoa
  //realizar calculo
  //retornar imc da pessoa

  print('=== Digite seu peso ===');
  String? textPeso = stdin.readLineSync();
  double peso = double.parse(textPeso ?? '');

  print('=== Digite sua altura ===');
  String? textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura ?? '');

  double calcImc = peso / (altura * altura);

  //!Como calcImc esta fora do escopo da funcao 'imprimirResultadoImc' eu posso passar o 'calcImc' por parametro como nos exemplos abaixo
  imprimirResultadoImc(calcImc);
}

imprimirResultadoImc(double calcImc) {
  print('========================================');
  print('Seu IMC é');
  if (calcImc <= 18.5) {
    print('Abaixo do peso');
  } else if (calcImc > 18.5 && calcImc <= 24.9) {
    print('Peso normal');
  } else if (calcImc >= 25.0 && calcImc <= 29.9) {
    print('Sobrepeso');
  } else if (calcImc >= 30.0 && calcImc <= 39.9) {
    print('Obesidade grau I');
  } else {
    print('Obsidade grau II');
  }
}

main() {
  calculoDeImc();
}
