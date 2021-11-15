import 'dart:io';

//===================FUNC 1============================================
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

  //a função de retorno vai possibilitar com que colocarmos essa variavel dentro de uma funçao
  // var imc = peso / (altura * altura);

  double imc = calcImcExpres(peso, altura);
  imprimirResultadoImc(imc);
}
//=====================================================================

//===================FUNC 2============================================
double calcImcExpres(double peso, double altura) {
  return peso / (altura * altura);
}
//=====================================================================

//===================FUNC 3============================================
imprimirResultadoImc(imc) {
  print('========================================');
  print('Seu IMC é');
  if (imc <= 18.5) {
    print('Abaixo do peso');
  } else if (imc > 18.5 && imc <= 24.9) {
    print('Peso normal');
  } else if (imc >= 25.0 && imc <= 29.9) {
    print('Sobrepeso');
  } else if (imc >= 30.0 && imc <= 39.9) {
    print('Obesidade grau I');
  } else {
    print('Obsidade grau II');
  }
}
//=====================================================================

//===================FUNC MAIN=========================================
main() {
  calculoDeImc();
}
//=====================================================================
