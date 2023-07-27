import 'dart:io';

import 'functions.dart';

void main() {
  print('\n     Greeting from `Assam` and `Mohtashim`!');
  while (state) {
    print("""

        ~WELCOME TO SMIT RESTAURANT~
        ============================
        ____________________________
            press 1 for `Menu`  
            press 2 for `Feedback`  
            press q for `Exit` 
        ____________________________       
""");
    var userinput = stdin.readLineSync();
    if (userinput == "1") {
      menu();
    } else if (userinput == "2") {
      feedback();
    } else {
      print("Thank You, for coming!");
      state = false;
    }
  }
}

bool state = true;
