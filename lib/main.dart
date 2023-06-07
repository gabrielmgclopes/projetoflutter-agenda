import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(18),
            child: const Text(
              style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.normal,
                color: Colors.brown,
              ),
              'Tarefas',
            ),
          ),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(
            milliseconds: 800,
          ),
          child: ListView(
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
            ],
          ), ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                opacidade = !opacidade;
              });
            },
            backgroundColor: Colors.blue[100],
            child: const Icon(Icons.remove_red_eye),
          ),

      ),
    );
  }
}

// StalessWidget é uma tela estática, já a StateFulWidget é dinamica.
class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task(this.nome, this.foto, this.dificuldade, {Key? key})
      : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(8)),
              height: 140,
            ),
            Column(
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.white,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(12)),
                            width: 100,
                            height: 90,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                widget.foto,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12)),
                                alignment: Alignment.center,
                                height: 70,
                                width: 200,
                                child: Text('${widget.nome}',
                                    style: const TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 18,
                                      color: Colors.black,
                                    )),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: (widget.dificuldade >= 1)
                                        ? Colors.blueAccent
                                        : Colors.blueAccent[100],
                                    size: 12,
                                    semanticLabel: 'Estrelas em cada tarefa',
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: (widget.dificuldade >= 2)
                                        ? Colors.blueAccent
                                        : Colors.blueAccent[100],
                                    size: 12,
                                    semanticLabel: 'Estrelas em cada tarefa',
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: (widget.dificuldade >= 3)
                                        ? Colors.blueAccent
                                        : Colors.blueAccent[100],
                                    size: 12,
                                    semanticLabel: 'Estrelas em cada tarefa',
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: (widget.dificuldade >= 4)
                                        ? Colors.blueAccent
                                        : Colors.blueAccent[100],
                                    size: 12,
                                    semanticLabel: 'Estrelas em cada tarefa',
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: (widget.dificuldade >= 5)
                                        ? Colors.blueAccent
                                        : Colors.blueAccent[100],
                                    size: 12,
                                    semanticLabel: 'Estrelas em cada tarefa',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: 45,
                            child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    nivel++;
                                  });
                                },
                                child: Column(
                                  children: [
                                    const Icon(Icons.arrow_drop_up),
                                    Text(
                                      'Lvl Up',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12)),
                            child: LinearProgressIndicator(
                              color: Colors.white,
                              value: (widget.dificuldade > 0)
                                  ? (nivel / widget.dificuldade) / 10
                                  : 1,
                            ),
                            width: 250,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            'Nível: $nivel',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
         ],
        ),
      ),
    );
  }
}
