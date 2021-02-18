import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pantomim_flutter/pages/screen.dart';
import 'package:pantomim_flutter/theme/app_theme.dart';
import 'package:pantomim_flutter/theme/colors.dart';
import 'package:pantomim_flutter/theme/dimense.dart';

import 'package:provider/provider.dart';

import 'neu_progress_painter.dart';

class NeuProgressPieBar extends StatelessWidget {
  const NeuProgressPieBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final percentage =
        Provider.of<TimerService>(context).currentDuration.inSeconds / 60 * 100;
    return Container(
       height: fullHeight(context) / 2.3,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            right: fullWidth(context) / 20,
            left: fullWidth(context) / 20,
            bottom: 0,
            top: 0,
            child: Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.circle(),
                depth: 8,
                intensity: 5,
                lightSource: LightSource.topLeft,
                color: AppColors.accentColor,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: fullHeight(context) / 2.9,
              child: CustomPaint(
                painter: NeuProgressPainter(
                  circleWidth: fullWidth(context) / 6,
                  completedPercentage: percentage,
                  defaultCircleColor: Colors.transparent,
                ),
                child: Center(),
              ),
            ),
          ),
          Positioned(
            top:  fullWidth(context) / 9,
            bottom:fullWidth(context) / 9,
            left:  fullWidth(context) / 9,
            right: fullWidth(context) / 9,
            child: Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape: NeumorphicBoxShape.circle(),
                depth: 5,
oppositeShadowLightSource: false,
                intensity: 0.8,
                lightSource: LightSource.topLeft,
                color: AppColors.accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NeuStartButton extends StatefulWidget {
  final double bevel;
  final Offset blurOffset;

  NeuStartButton({
    Key key,
    this.bevel = 10.0,
  })  : this.blurOffset = Offset(bevel / 2, bevel / 2),
        super(key: key);

  @override
  _NeuStartButtonState createState() => _NeuStartButtonState();
}

class _NeuStartButtonState extends State<NeuStartButton> {
  bool _isPressed = false;
  bool _isRunning = false;

  void _onPointerDown() {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) {
        _onPointerDown();
        _isRunning
            ? Provider.of<TimerService>(context, listen: false).stop()
            : Provider.of<TimerService>(context, listen: false).start();
        setState(() => _isRunning = !_isRunning);
      },
      onPointerUp: _onPointerUp,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        height: 95,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: appTheme(context).accentColor,
          boxShadow: _isPressed
              ? null
              : [
                  BoxShadow(
                    blurRadius: 14,
                    spreadRadius: 14,
                    offset: -widget.blurOffset,
                    color: Colors.grey.shade200,
                  ),
                  BoxShadow(
                    blurRadius: 12,
                    offset: Offset(10, 10),
                    color: Colors.grey.shade200,
                  )
                ],
        ),
        child: Center(
            child: Icon(
          _isRunning ? Icons.stop : Icons.play_arrow,
          size: 30,
          color: _isRunning
              ? Colors.redAccent.shade400
              : Colors.greenAccent.shade400,
        )),
      ),
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}
