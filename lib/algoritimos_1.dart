import 'dart:io';

main() {
  //*Lógica de perguntar se a pessoa é maior de 18 ou não
  //se a idade for maior que 18
  //    ela é maior de idade;
  //se não for
  //    ela é menor de idade;

  print(' === Digite sua idade === ');
  var input = stdin.readLineSync();
  var idade = int.tryParse(input!) ?? 0;

  if (idade >= 18) {
    print('Maior de idade');
  } else if (idade == 0) {
    print('Por favor digite uma idade correta');
  } else {
    print('Menor de idade');
  }
}
