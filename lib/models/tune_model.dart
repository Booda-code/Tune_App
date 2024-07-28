import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class TuneModel{
  Color color;
  String sound;
  TuneModel({required this.sound,required this.color});

playSound(){
  final player = AudioPlayer();
  player.play(AssetSource(sound));
}
}
