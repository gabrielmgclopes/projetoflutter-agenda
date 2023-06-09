import 'package:flutter/material.dart';

class Dificulty extends StatelessWidget {
  final int dificultyLevel;

  const Dificulty({required this.dificultyLevel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_purple500_outlined,
          color: (dificultyLevel >= 1)
              ? Colors.blueAccent
              : Colors.blueAccent[100],
          size: 12,
          semanticLabel: 'Estrelas em cada tarefa',
        ),
        Icon(
          Icons.star_purple500_outlined,
          color: (dificultyLevel >= 2)
              ? Colors.blueAccent
              : Colors.blueAccent[100],
          size: 12,
          semanticLabel: 'Estrelas em cada tarefa',
        ),
        Icon(
          Icons.star_purple500_outlined,
          color: (dificultyLevel >= 3)
              ? Colors.blueAccent
              : Colors.blueAccent[100],
          size: 12,
          semanticLabel: 'Estrelas em cada tarefa',
        ),
        Icon(
          Icons.star_purple500_outlined,
          color: (dificultyLevel >= 4)
              ? Colors.blueAccent
              : Colors.blueAccent[100],
          size: 12,
          semanticLabel: 'Estrelas em cada tarefa',
        ),
        Icon(
          Icons.star_purple500_outlined,
          color: (dificultyLevel >= 5)
              ? Colors.blueAccent
              : Colors.blueAccent[100],
          size: 12,
          semanticLabel: 'Estrelas em cada tarefa',
        ),
      ],
    );
  }
}