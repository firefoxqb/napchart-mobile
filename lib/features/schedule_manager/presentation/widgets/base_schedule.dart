import 'package:flutter/material.dart';
import 'schedule_number_painter.dart';
import 'segment_painter.dart';
import 'dart:math';
import 'current_schedule_graphic.dart';

class BaseScheduleGraphic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 5.0),
                  blurRadius: 5.0,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            child: CustomPaint(
              painter: BaseSchedulePainter(),
            ),
          ),
          // TODO: This component must be stateful
//          Container(
//            width: double.infinity,
//            height: double.infinity,
//            padding: const EdgeInsets.all(8.0),
//            child: CustomPaint(
//              painter: ClockDialPainter(clockText: ClockText.arabic),
//            ),
//          ),
          CurrentScheduleGraphic(),
//          Container(
//            width: double.infinity,
//            height: double.infinity,
//            child: CustomPaint(
//              painter: SegmentPainter(1320, 90, pi/2) // 10pm to 1:30am
//            )
//          ),
//          Container(
//              width: double.infinity,
//              height: double.infinity,
//              child: CustomPaint(
//                  painter: SegmentPainter(270, 360, pi/2) // 4:30am to 6:00 am
//              )
//          ),
//          Container(
//              width: double.infinity,
//              height: double.infinity,
//              child: CustomPaint(
//                  painter: SegmentPainter(720, 740, pi/2) // 12:00pm to 12:30 pm
//              )
//          )
//          Container(
//            width: double.infinity,
//            height: double.infinity,
//            child: DonutPieChart.withSampleData()
//          )
        ],
      ),
    );
//    return CustomPaint(
//        painter: BaseSchedulePainter()
//    );
  }
}

class BaseSchedulePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    print("width");
    print(size.width);
    var paint = Paint();
    paint.color = Colors.purple;
    paint.strokeWidth = 5;
    var outerRadius = size.width / 2 - 10;
//    canvas.drawLine(
//      Offset(0, size.height / 2),
//      Offset(size.width, size.height / 2),
//      paint,
//    );
//    canvas.drawCircle(
//        Offset(size.width / 2, size.height / 2), outerRadius, paint);

    var paint2 = Paint();
    paint2.color = Colors.black;
    paint2.strokeWidth = 5;
//    canvas.drawCircle(Offset(size.width / 2, size.height/2), 100, paint2);

    createTimeLabels(canvas, size);
//    createArc(canvas, size);
  }

  void createTimeLabels(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

//    var startPoint = Offset(0, size.height / 2);
//    var controlPoint1 = Offset(size.width / 4, size.height / 3);
//    var controlPoint2 = Offset(3 * size.width / 4, size.height / 3);
//    var endPoint = Offset(size.width, size.height / 2);
//
//    var path = Path();
//    path.moveTo(startPoint.dx, startPoint.dy);
//    path.cubicTo(controlPoint1.dx, controlPoint1.dy,
//        controlPoint2.dx, controlPoint2.dy,
//        endPoint.dx, endPoint.dy);
//
//    canvas.drawPath(path, paint);
  }

  void createArc(Canvas canvas, Size size) {
    // TODO: Problem is that height is zero now
    Offset center = Offset(size.width / 2, size.height / 2);
    print("center " + center.toString());
    print("height: " + size.height.toString());
    Paint complete = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    var pi = 3.14;
    print("le width");
    print(size.width);
    var radius = min(size.width, size.height) / 2.2;
    double arcAngle = 2 * pi * 100; //(completePercent/100);
//    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
//        arcAngle, false, complete);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
