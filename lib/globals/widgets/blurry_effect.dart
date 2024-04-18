import 'dart:ui';

import 'package:diet/services/imgs/imgs_controller_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BlurryEffect extends StatelessWidget {
  const BlurryEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: SvgPicture.asset(
            ImgsControllerService.appBar.url(),
            fit: BoxFit.fill,
          ),
        ),
        Positioned.fill(
          top: 0,
          left: 0,
          right: 0,
          bottom: 35,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            ),
          ),
        )
      ],
    );
  }
}
