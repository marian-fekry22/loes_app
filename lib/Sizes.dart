import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Sizes extends StatelessWidget {
  Sizes({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-33.0, 277.0),
            child: Container(
              width: 1110.0,
              height: 453.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-3.0, 77.0),
            child: SizedBox(
              width: 1080.0,
              height: 187.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 1080.0, 187.0),
                    size: Size(1080.0, 187.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 5),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(74.0, 53.0, 337.0, 82.0),
                    size: Size(1080.0, 187.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Item Details',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 40,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(30.0, 66.8, 68.0, 53.8),
                    size: Size(1080.0, 187.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'return' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 68.0, 53.8),
                          size: Size(68.0, 53.8),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_b7heqg,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 28.3, 53.8),
                          size: Size(68.0, 53.8),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_lbw2l2,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 25.5, 68.0, 2.8),
                          size: Size(68.0, 53.8),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_iq6xcg,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(731.0, 124.0),
            child: SizedBox(
              width: 337.0,
              height: 94.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(52.0, 0.0, 234.0, 94.0),
                    size: Size(337.0, 94.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 6.0, 337.0, 82.0),
                    size: Size(337.0, 94.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'Own',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 45,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-1.0, 0.0),
            child:
                // Adobe XD layer: 'Loes_App_01' (shape)
                Container(
              width: 1080.0,
              height: 86.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 921.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 1204.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 1487.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(20.0, 1770.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(287.0, 921.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(287.0, 1204.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(287.0, 1487.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(287.0, 1770.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(554.0, 921.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(554.0, 1204.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(554.0, 1487.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(554.0, 1770.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(821.0, 921.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(821.0, 1204.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(821.0, 1487.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(821.0, 1770.0),
            child: Container(
              width: 240.0,
              height: 239.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 958.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'ALL',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 1241.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 10',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 1524.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 14',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 1807.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 18',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(301.0, 958.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 7',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(301.0, 1241.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 11',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(301.0, 1524.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 15',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(301.0, 1807.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 19',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(568.0, 958.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 8',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(568.0, 1241.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 12',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(568.0, 1524.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 16',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(568.0, 1807.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 20',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(835.0, 958.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 9',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(835.0, 1241.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 13',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(835.0, 1524.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 17',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(835.0, 1807.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                'US 21',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xff000000),
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 1013.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 1296.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 1579.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(34.0, 1862.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(301.0, 1013.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(301.0, 1296.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(301.0, 1579.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(301.0, 1862.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(568.0, 1013.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(568.0, 1296.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(568.0, 1579.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(568.0, 1862.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(835.0, 1013.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(835.0, 1296.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(835.0, 1579.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(835.0, 1862.0),
            child: SizedBox(
              width: 201.0,
              height: 54.0,
              child: SingleChildScrollView(
                  child: Text(
                '900 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 40,
                  color: const Color(0xfff934f5),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(-3.0, 86.0),
            child: Container(
              width: 1083.0,
              height: 671.0,
              decoration: BoxDecoration(
                color: const Color(0x94000000),
                border: Border.all(width: 1.0, color: const Color(0x94707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 759.0),
            child: SizedBox(
              width: 1080.0,
              height: 121.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 1080.0, 121.0),
                    size: Size(1080.0, 121.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 5),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(39.0, 20.0, 422.0, 82.0),
                    size: Size(1080.0, 121.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Text(
                      'Select U.S. Men\'s Size',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 40,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_b7heqg =
    '<svg viewBox="0.0 53.3 68.0 53.8" ><path transform="translate(-0.01, 0.0)" d="M 66.58440399169922 78.80433654785156 L 4.846714019775391 78.80433654785156 L 27.92647552490234 55.72749328613281 C 28.46999549865723 55.16485214233398 28.45432662963867 54.26810455322266 27.89168548583984 53.72458267211914 C 27.34272003173828 53.19447326660156 26.47253036499023 53.19447326660156 25.92369842529297 53.72458267211914 L 0.4275096356868744 79.22077178955078 C -0.1263685077428818 79.773193359375 -0.1274308264255524 80.67006683349609 0.4249865710735321 81.22395324707031 C 0.4257833361625671 81.22474670410156 0.4267129004001617 81.22567749023438 0.4275096356868744 81.22647094726563 L 25.92369842529297 106.7226638793945 C 26.46722030639648 107.2853088378906 27.36383628845215 107.3008422851563 27.92661094665527 106.757453918457 C 28.48925399780273 106.2139358520508 28.50479125976563 105.3173217773438 27.96140289306641 104.7545394897461 C 27.94998168945313 104.7427215576172 27.93842887878418 104.7311706542969 27.92661094665527 104.7197494506836 L 4.846714019775391 81.6373291015625 L 66.58427429199219 81.6373291015625 C 67.36655426025391 81.6373291015625 68.00077056884766 81.00311279296875 68.00077056884766 80.22084045410156 C 68.00077056884766 79.43855285644531 67.36668395996094 78.80433654785156 66.58440399169922 78.80433654785156 Z" fill="#2196f3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lbw2l2 =
    '<svg viewBox="0.0 53.3 28.3 53.8" ><path transform="translate(0.0, 0.0)" d="M 26.91375160217285 107.1332092285156 C 26.53781509399414 107.1338729858398 26.17701721191406 106.9851531982422 25.9109001159668 106.7195587158203 L 0.4147124290466309 81.22337341308594 C -0.1382361799478531 80.6702880859375 -0.1382361799478531 79.773681640625 0.4147124290466309 79.220458984375 L 25.9109001159668 53.72426986694336 C 26.47354316711426 53.18075180053711 27.37029266357422 53.19641876220703 27.91381072998047 53.75906372070313 C 28.44392013549805 54.30802917480469 28.44392013549805 55.17821884155273 27.91381072998047 55.72705078125 L 3.42047381401062 80.22052001953125 L 27.91381072998047 104.7138519287109 C 28.46768951416016 105.2662734985352 28.46875190734863 106.1631622314453 27.91633415222168 106.7170333862305 C 27.6506175994873 106.9832916259766 27.28995132446289 107.1330718994141 26.91375160217285 107.1332092285156 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iq6xcg =
    '<svg viewBox="0.0 78.8 68.0 2.8" ><path transform="translate(-0.01, -166.38)" d="M 66.58146667480469 248.0180358886719 L 1.42449951171875 248.0180358886719 C 0.6422180533409119 248.0180358886719 0.008000373840332031 247.3838195800781 0.008000373840332031 246.6015319824219 C 0.008000373840332031 245.8192596435547 0.6422180533409119 245.1850280761719 1.42449951171875 245.1850280761719 L 66.58146667480469 245.1850280761719 C 67.36374664306641 245.1850280761719 67.99796295166016 245.8192596435547 67.99796295166016 246.6015319824219 C 67.99796295166016 247.3838195800781 67.36374664306641 248.0180358886719 66.58146667480469 248.0180358886719 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
