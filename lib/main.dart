import 'package:flutter/material.dart';
import 'tasks.dart';
import 'package:firstproject/newtask.dart';

void main() {

runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHome());
  }
}

class MyHome  extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.all(18),
            child: Text(
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.normal,
                color: Colors.white,
              ),
              'Tarefas',
            ),
          ),
        ),
        body: ListView(
          children: [
            Task(
                'Aprender a Programar',
                'https://www.showmetech.com.br/wp-content/uploads/2018/11/java-760x428.jpg',
                5),
            Task(
                'Estudar',
                'https://i0.wp.com/labfinprovarfia.com.br/wp-content/uploads/2021/02/shutterstock_1676998303-scaled.jpg?resize=1080%2C675&ssl=1',
                5),
            Task(
                'Meditar',
                'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
                2),
            Task(
                'Jogar',
                'https://s2.glbimg.com/5vfFpObP0IKAyb328uCwln3AMlA=/e.glbimg.com/og/ed/f/original/2021/08/16/pexels-evg-culture-1174746.jpg',
                1),
            Task(
                'Cozinhar',
                'https://img.freepik.com/fotos-gratis/as-maos-do-chef-cortando-vegetais-em-sua-cozinha_155003-42435.jpg?w=900&t=st=1685993329~exp=1685993929~hmac=b222a8f1c7f8f3048811f88a54f8b746b5b3295081ddf07ef75e3d66f49f5b73',
                3),
            Task(
                'Lazer',
                'https://licere.com.br/wp-content/uploads/2020/12/ferias-720x320@2x.jpg',
                1),
            Padding(
              padding: const EdgeInsets.only(right: 12, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(child: Icon(Icons.add_circle) , onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Newtask()));}),
                ],
              ),
            ),
          ],
        ),
      );
  }
}