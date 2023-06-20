import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StackClass extends StatefulWidget {
  const StackClass({super.key});

  @override
  State<StackClass> createState() => _StackClassState();
}

class _StackClassState extends State<StackClass> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RPSCustomPainter,
      child: Scaffold(
        body: Stack(
          fit: StackFit.loose,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.amber,
                height: 200,
                width: 200,
                child: const ListTile(
                  leading: Icon(Icons.person_4),
                  title: Text('Clipper'),
                  subtitle: Text(
                      'On latest update few clippers were added from Flutter Clipper Experiments repository.'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 6.44;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0033333, size.height * 0.0150000);
    path0.lineTo(size.width * 0.9983333, size.height * 0.0100000);
    path0.lineTo(size.width * 0.9983333, size.height * 0.3650000);
    path0.lineTo(size.width * 0.8466667, size.height * 0.2425000);
    path0.lineTo(size.width * 0.6666667, size.height * 0.3700000);
    path0.lineTo(size.width * 0.5116667, size.height * 0.2575000);
    path0.lineTo(size.width * 0.3316667, size.height * 0.3725000);
    path0.lineTo(size.width * 0.1666667, size.height * 0.2550000);
    path0.lineTo(size.width * 0.0016667, size.height * 0.3675000);
    path0.lineTo(size.width * 0.0033333, size.height * 0.0150000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
