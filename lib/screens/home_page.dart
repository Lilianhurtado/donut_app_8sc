import 'package:donut_app_8sc/tab/Donut_Tab.dart';
import 'package:donut_app_8sc/tab/burguer_Tab.dart';
import 'package:donut_app_8sc/tab/pancakes_Tab.dart';
import 'package:donut_app_8sc/tab/pizza_tab.dart';
import 'package:donut_app_8sc/tab/smoothies_tab.dart';
import 'package:donut_app_8sc/utils/my_tab.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //Donut
    const MyTab(iconPath: "lib/icons/donut.png", label: 'Donut'),
    //Burguer
    const MyTab(iconPath: "lib/icons/burger.png", label: 'Burger'),
    //smoothie
    const MyTab(iconPath: "lib/icons/smoothie.png", label: 'Smoothie'),
    //pancake
    const MyTab(iconPath: "lib/icons/pancakes.png", label: 'Pancakes'),
    //pizza
    const MyTab(iconPath: "lib/icons/pizza.png", label: 'Pizza'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          //Ícono de la izquierda
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          //Ícono de la derecha
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: DefaultTabController(
          length: myTabs.length,
          child: Column(
            children: [
              //Texto principal
              const Padding(
                padding: EdgeInsets.only(left: 24.0),
                child: Row(
                  children: [
                    Text("I wan to ", style: TextStyle(fontSize: 24)),
                    Text(
                      "eat",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,

                        //Subrayado
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),

              //Pestañas (TabBar)
              TabBar(tabs: myTabs),

              //Contenido de las pestañas (TabBarView)
              Expanded(
                child: TabBarView(
                  children: [
                  DonutTab(),
                  BurguerTab(),
                  SmoothieTab(),
                  PancakesTab(),
                  PizzaTab(),
                ]
                ),
              )

              //Carrrito de compras (Cart)
            ],
          ),
        ),
      ),
    );
  }
}
