import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.tuneModel});

  final TuneModel tuneModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector( onTap: () {
        tuneModel.playSound();
      },
        child: Container(
          width: double.infinity,
          color: tuneModel.color,
        ),
      ),
    );
  }
}
