import 'package:firstproject/main.dart';
import 'package:flutter/material.dart';

void main() {
  const MaterialApp
    (home: Newtask());
}

class Newtask extends StatefulWidget {
  const Newtask({Key? key}) : super(key: key);

  @override
  State<Newtask> createState() => _NewtaskState();

}

class _NewtaskState extends State<Newtask> {
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Padding(
              padding: EdgeInsets.all(8),
              child: Text('Novas Tarefas',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  )),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Container(
                          color: Colors.white24,
                          child: TextFormField(
                            validator: (String? value) {
                              if (value!.isEmpty)
                                return 'Escreva o nome da sua tarefa';{
                              }
                              return null;
                            },
                            controller: nameController,
                            maxLength: 35,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(color: Colors.grey),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              hintText: 'Digite o nome da sua tarefa',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              labelText: 'Nome',
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: TextFormField(
                        validator: (value) {
                          if(value!.isEmpty || int.parse(value) > 5 || int.parse(value) < 1) {
                          return 'Insira uma dificuldade entre 1 e 5';}
                          return null;
                        },
                        controller: difficultyController,
                        maxLength: 1,
                        cursorColor: Colors.grey,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.grey),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Digite a dificuldade da sua tarefa',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Dificuldade',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Container(
                          color: Colors.white24,
                          child: TextFormField(
                            validator: (value) {
                              if(value!.isEmpty) {
                                'Insira o URL da sua imagem'; }
                              return null;
                            },
                            keyboardType: TextInputType.url,
                            onChanged: (text) {
                              setState(() {
                              });
                            },
                            controller: imageController,
                            decoration: InputDecoration(
                              hintStyle: const TextStyle(color: Colors.grey),
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              hintText: 'Adicione o URL da Imagem',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              labelText: 'Imagem',
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: 150,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 2, color: Colors.blue),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            imageController.text,
                            errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace)
                            {
                              return Image.asset('assets/images/nophoto.png');
                            },
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                    ),
                    SizedBox(
                      width: 350,
                      height: 45,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          )),
                        ),
                        onPressed: () {
                          if(_formKey.currentState!.validate()) {
                            Navigator.pop(context, MaterialPageRoute(builder: (context) => const MyApp()));
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Tarefa adicionada com sucesso'),
                          ),
                        );
                      },
                        child: RichText(
                          text: const TextSpan(
                              text: 'Adicionar tarefa',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
      );
  }
}
