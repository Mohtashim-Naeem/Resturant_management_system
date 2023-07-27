import 'dart:io';

import 'data.dart';
import 'resturant.dart';

Continue() {
  print('\n Do you want to continue?');
  var more = stdin.readLineSync()!;
  more = more.toLowerCase();
  if (more == 'no') {
    state = false;
  } else {
    menu();
  }
}

// =======================Menu========================
menu() {
  print("""

          ~SMIT RESTAURANT MENU~
          =======================
       ____________________________  
        press 1 for `Starters menu`
        press 2 for `Fast Food menu`
        press 3 for `BBQ menu`
        press 4 for `Rolls menu`
        press q for `back menu`
       ____________________________ 

""");

  var menuinput = stdin.readLineSync();

  if (menuinput == "1") {
    Starters();
    Continue();
  } else if (menuinput == "2") {
    FastFood();
    Continue();
  } else if (menuinput == "3") {
    BBQ();
    Continue();
  } else if (menuinput == "4") {
    Rolls();
    Continue();
  } else {
    main();
    // state = false;
  }
}

// =======================Fastfood========================
FastFood() {
  print('${fastfoods.keys} (1, 2, 3)? & q for exit.');
  var whichfastfood = stdin.readLineSync();
  if (whichfastfood == '1') {
    var user_wants = fastfoods['Burgers'];
    print('------BURGERS------');
    for (var burger in user_wants) {
      print("~$burger~");
    }
    order(user_wants); // taking order
    cart_func(); //showing order
  } else if (whichfastfood == '2') {
    var user_wants = fastfoods['Sandwiches'];
    print('------SANDWICHES------');

    for (var sandwitch in user_wants) {
      print("~$sandwitch~");
    }
    order(user_wants); // taking order
    cart_func(); //showing order
  } else if (whichfastfood == '3') {
    var user_wants = fastfoods['Pizzas'];
    print('------PIZZAS------');

    for (var pizza in user_wants) {
      print("~$pizza~");
    }
    order(user_wants); // taking order
    cart_func(); //showing order
  } else {
    state = false;
  }
}

// =======================BBQ========================
BBQ() {
  print('${barbeque.keys} (1, 2, 3)? & q for exit.');
  var whichBBQ = stdin.readLineSync();
  if (whichBBQ == '1') {
    var user_wants = barbeque['tikkas'];
    print('------TIKKAS------');

    for (var tikka in user_wants) {
      print("~$tikka~");
    }
    order(user_wants); // taking order
    cart_func(); //showing order
  } else if (whichBBQ == '2') {
    var user_wants = barbeque['kababs'];
    print('------KABABS------');

    for (var kebab in user_wants) {
      print("~$kebab~");
    }
    order(user_wants); // taking order
    cart_func(); //showing order
  } else if (whichBBQ == '3') {
    var user_wants = barbeque['botis'];
    print('------BOTIS------');

    for (var boti in user_wants) {
      print("~$boti~");
    }
    order(user_wants); // taking order
    cart_func(); //showing order
  } else {
    state = false;
  }
}

// =======================rolls========================
Rolls() {
  print('${rolls.keys} (1, 2, 3)? & q for exit.');
  var whichRolls = stdin.readLineSync();
  if (whichRolls == '1') {
    var user_wants = rolls['Chicken Rolls'];
    print('------CHICKEN ROLLS------');

    for (var chick_roll in user_wants) {
      print("~$chick_roll~");
    }
    order(user_wants); // taking order
    cart_func(); //showing order
  } else if (whichRolls == '2') {
    var user_wants = rolls['Beef Rolls'];
    print('------BEEF ROLLS------');

    for (var beef_roll in user_wants) {
      print("~$beef_roll~");
    }
    order(user_wants); // taking order
    cart_func(); //showing order
  } else if (whichRolls == '3') {
    var user_wants = rolls['kabab Rolls'];
    print('------KABAB ROLLS------');

    for (var kabab_roll in user_wants) {
      print("~$kabab_roll~");
    }
    order(user_wants); // taking order
    cart_func(); //showing order
  } else {
    state = false;
  }
}

// =======================Starters========================
Starters() {
  print('------STARTERS------');

  for (var starter in starters) {
    print("~$starter~");
  }
  order(starters);
  cart_func();
}

// =======================Feedback========================
feedback() {
  print("Enter your feedback, Here!");
  var feedBack = stdin.readLineSync();
  feedbacks.add(feedBack);
  print('Thanks for you precious time (:');
  state = false;
  // print('$feedBack');
}

order(data) {
  // List cart = [];
  print("""
\n-----------------What you want to eat? Just enter, It's number.-----------------
NOTE: for multiple items please enter comma seperated (1,2).            
            """);

  var item_no = stdin.readLineSync()!; // taking order
  List items = item_no.split(',');
  for (String item in items) {
    if (item.contains('1')) {
      cart.add(data[0]);
    } else if (item.contains('2')) {
      cart.add(data[1]);
    } else if (item.contains('3')) {
      cart.add(data[2]);
    } else if (item.contains('4')) {
      cart.add(data[3]);
    } else if (item.contains('5')) {
      cart.add(data[4]);
    }
    ;
  }
}

cart_func() {
  print("""
      ===========================
          your order til yet!
        ________________________
          """);
  for (var c in cart) {
    print("         ~$c");
  }
  print("         ________________________");
}
