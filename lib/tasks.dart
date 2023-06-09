import 'package:firstproject/dificulty.dart';
import 'package:flutter/material.dart';

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
                              Dificulty(
                                dificultyLevel: widget.dificuldade,
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
                                child: const Column(
                                  children: [
                                    Icon(Icons.arrow_drop_up),
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
                            style: const TextStyle(
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
