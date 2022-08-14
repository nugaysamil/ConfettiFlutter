import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class NewConfetti extends StatefulWidget {
  const NewConfetti({super.key});

  @override
  State<NewConfetti> createState() => _NewConfettiState();
}

class _NewConfettiState extends State<NewConfetti> {
  late ConfettiController control;

  @override
  void initState() {
    control = ConfettiController(duration: Duration(seconds: 10));
    super.initState();
  }

  @override
  void dispose() {
    control.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confetti"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              confettiController: control,
              shouldLoop: true,
              blastDirectionality: BlastDirectionality.explosive,
            ),
          ),
          FloatingActionButton.large(
            onPressed: () {
              control.play();
            },
            child: Text("Click To Celebrate"),
          )
        ],
      ),
    );
  }
}
