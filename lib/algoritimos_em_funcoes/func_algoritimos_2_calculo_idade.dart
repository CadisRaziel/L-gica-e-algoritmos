import 'dart:io';

calculoDeImc() {
  //*Calculando imc
  //pegar o peso da pessoa
  //pegar a altura da pessoa
  //realizar calculo
  //retornar imc da pessoa

  print('=== Digite seu peso ===');
  var textPeso = stdin.readLineSync();
  var peso = double.parse(textPeso!);

  print('=== Digite sua altura ===');
  var textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura!);

  var calcImc = peso / (altura * altura);

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
