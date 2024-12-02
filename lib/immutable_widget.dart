import 'dart:math';
import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget{
  const ImmutableWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          radius: 1,
          colors: [
            Colors.green,
            Colors.black,
          ],
        ),
      ),
      
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: _isbuildDiamond(),
      ),
    );
  }

  Widget _isbuildDiamond() {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(pi * 1/4),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 20,
                offset: const Offset(15, 15),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child:_buildShinyCircle(),
          ),
        ),
      ),
    );
  }
  
  Widget _buildShinyCircle() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent,
          ],
          center: Alignment(-0.3, -0.5),
        ),
        boxShadow: [
          BoxShadow(blurRadius: 20),
        ],
      ),
    );
  }
}
