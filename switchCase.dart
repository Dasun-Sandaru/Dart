

// switchCase.dart --- Switch Case Statement in Dart -- About Switch Case in Dart

// syntax: switch-case

  // switch(expression){
  //   case 1:
  //   //statement
  //   return;

  //   case 2:
  //   //statement
  //   return;

  //   case 3:
  //   //statement
  //   return;

  //   default:
  //   //statement
  // }


void main(List<String> args) {
  
  int date = 5;

  switch(date){

    case 1:
    print('Monday');
    break;

    case 2:
    print('Tuesday');
    break;

    case 3:
    print('Wednesday');
    break;

    case 4:
    print('Thursday');
    break;

    case 5:
    print('Friday');
    break;

    case 6:
    print('Saturday');
    break;

    case 7:
    print('Sunday');
    break;

    default:
    print('Invalid');

  }
}