import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';

import '../components/item.dart';

class TuneView extends StatelessWidget {
   TuneView({super.key});
final List<TuneModel> tunes = [
  TuneModel(sound: 'note1.wav', color: Colors.red),
  TuneModel(sound: 'note2.wav', color: Colors.blueAccent),
  TuneModel(sound: 'note3.wav', color: Colors.lightGreenAccent),
  TuneModel(sound: 'note4.wav', color: Colors.purple),
  TuneModel(sound: 'note5.wav', color: Colors.yellow),
  TuneModel(sound: 'note6.wav', color: Colors.orange),
  TuneModel(sound: 'note7.wav', color: Colors.cyanAccent),
];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff10073b),
        title: const Center(
          child: Text(
            'Flutter Tune',
            style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: tunes.map((e) => Item(tuneModel: e),).toList()
      ),
    );
  }
}
