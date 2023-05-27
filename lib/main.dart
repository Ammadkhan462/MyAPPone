import 'package:flutter/material.dart';
import 'package:recipie/categories_screen.dart';
import 'package:recipie/category_meal_screen.dart';
import 'package:recipie/mealdeal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          colorScheme: ColorScheme.light(
              brightness: Brightness.light, shadow: Colors.amber),
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Railway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: TextStyle(color: Color.fromARGB(23, 52, 52, 1)),
              bodyMedium: TextStyle(color: Color.fromARGB(23, 52, 52, 1)),
              titleLarge: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
              ))),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealscreen.routename: (ctx) => CategoryMealscreen(),
        MealDeal.routename: (context) => MealDeal(),
      },
      // onGenerateRoute: (settings) {
      //   print(settings.arguments);

      //   if(settings.name=='/meal-details'){
      //     return ...;
      //   }
      //   else(settings.name =='/something-else'){
      //     return ...;
      //   }
      // }
    );
  }
}
