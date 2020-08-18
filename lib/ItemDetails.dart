import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemDetails extends StatelessWidget {
  ItemDetails({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-30.0, 277.0),
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
            offset: Offset(0.0, 77.0),
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
            offset: Offset(734.0, 124.0),
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
            offset: Offset(11.5, 756.5),
            child: SvgPicture.string(
              _svg_7vuyw7,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(32.2, 779.0),
            child: SizedBox(
              width: 226.0,
              child: Text(
                '250 QAR',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 50,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(407.0, 789.0),
            child: SizedBox(
              width: 234.0,
              height: 100.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 234.0, 94.0),
                    size: Size(234.0, 100.0),
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
                    bounds: Rect.fromLTWH(39.0, 18.0, 116.0, 82.0),
                    size: Size(234.0, 100.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Text(
                      'SIZE',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 30,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(663.0, 789.0),
            child: SizedBox(
              width: 234.0,
              height: 97.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 234.0, 94.0),
                    size: Size(234.0, 97.0),
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
                    bounds: Rect.fromLTWH(5.0, 15.0, 203.0, 82.0),
                    size: Size(234.0, 97.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Text(
                      'COLOR',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 30,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(191.5, 31.2, 15.9, 29.5),
                    size: Size(234.0, 97.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Transform.rotate(
                      angle: 1.5708,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 15.9, 29.5),
                            size: Size(15.9, 29.5),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: SvgPicture.string(
                              _svg_sroq9q,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(941.9, 801.0),
            child: SvgPicture.string(
              _svg_40s129,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(283.0, 919.0),
            child: SizedBox(
              width: 515.0,
              height: 120.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 515.0, 120.0),
                    size: Size(515.0, 120.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: const Color(0xfff934f5),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(108.0, 13.0, 300.0, 94.0),
                    size: Size(515.0, 120.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Text(
                      'New Released',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 50,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(151.0, 1040.3),
            child: SizedBox(
              width: 779.0,
              height: 226.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 778.8, 101.3),
                    size: Size(778.8, 226.3),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'PRODUCT NAME',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 100,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(46.0, 135.1, 686.6, 91.2),
                    size: Size(778.8, 226.3),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'ITEM DESCRIPTION',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 50,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(12.5, 1287.5),
            child: SvgPicture.string(
              _svg_o2oyo1,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(295.0, 1300.0),
            child: SizedBox(
              width: 201.0,
              height: 121.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(33.0, 0.0, 134.6, 54.2),
                    size: Size(200.6, 121.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'Brand',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 35,
                        color: const Color(0xff747474),
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 67.0, 200.6, 54.2),
                    size: Size(200.6, 121.2),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'Brand Name',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 35,
                        color: const Color(0xff000000),
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(5.0, 1300.0),
            child: SizedBox(
              width: 243.0,
              height: 121.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 242.6, 54.2),
                    size: Size(242.6, 121.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'Release Date',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 35,
                        color: const Color(0xff747474),
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 67.0, 200.6, 54.2),
                    size: Size(242.6, 121.2),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      '07-06-20',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 35,
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
            offset: Offset(542.0, 1300.0),
            child: SizedBox(
              width: 243.0,
              height: 121.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 242.6, 54.2),
                    size: Size(242.6, 121.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'SKU',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 35,
                        color: const Color(0xff747474),
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 67.0, 200.6, 54.2),
                    size: Size(242.6, 121.2),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'CV9388 100',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 35,
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
            offset: Offset(832.0, 1300.0),
            child: SizedBox(
              width: 243.0,
              height: 163.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 242.6, 54.2),
                    size: Size(242.6, 163.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'Color',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 35,
                        color: const Color(0xff747474),
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.0, 47.0, 215.6, 116.2),
                    size: Size(242.6, 163.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Text(
                      'Sail / Muslin/ White / Black',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 35,
                        color: const Color(0xff000000),
                        height: 1.1428571428571428,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(254.5, 1304.5),
            child: SvgPicture.string(
              _svg_4wx6on,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(22.0, 1496.3),
            child: SizedBox(
              width: 246.0,
              height: 64.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 245.8, 64.0),
                    size: Size(245.8, 64.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'Product Info',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 40,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(44.0, 1561.0),
            child: SizedBox(
              width: 993.0,
              height: 145.0,
              child: SingleChildScrollView(
                  child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, ',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 35,
                  color: const Color(0xff000000),
                  height: 1.7142857142857142,
                ),
                textAlign: TextAlign.left,
              )),
            ),
          ),
          Transform.translate(
            offset: Offset(1.0, 1750.0),
            child: Container(
              width: 1080.0,
              height: 170.0,
              decoration: BoxDecoration(
                color: const Color(0xff000000),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(88.0, 1765.0),
            child: SizedBox(
              width: 905.0,
              height: 115.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(797.0, 0.0, 108.0, 51.5),
                    size: Size(905.0, 115.5),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'SIZE',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 45,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    )),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(797.0, 64.0, 108.0, 51.5),
                    size: Size(905.0, 115.5),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      '45 UK',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 35,
                        color: const Color(0xfff934f5),
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.left,
                    )),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(375.0, 0.0, 202.0, 51.5),
                    size: Size(905.0, 115.5),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'BUY NOW',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 45,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    )),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(393.0, 64.0, 202.0, 51.5),
                    size: Size(905.0, 115.5),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      '900 QAR',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 35,
                        color: const Color(0xfff934f5),
                      ),
                      textAlign: TextAlign.left,
                    )),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 154.0, 51.5),
                    size: Size(905.0, 115.5),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      'OFFER',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 45,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    )),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(1.0, 64.0, 154.0, 51.5),
                    size: Size(905.0, 115.5),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SingleChildScrollView(
                        child: Text(
                      '750 QAR',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 35,
                        color: const Color(0xfff934f5),
                      ),
                      textAlign: TextAlign.left,
                    )),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(2.0, 0.0),
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
const String _svg_7vuyw7 =
    '<svg viewBox="11.5 756.5 1032.0 1.0" ><path transform="translate(11.5, 756.5)" d="M 0 0 L 1032 0" fill="none" stroke="#000000" stroke-width="6" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(11.5, 756.5)" d="M 0 0 L 267 0" fill="none" stroke="#0c0b0b" stroke-width="20" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sroq9q =
    '<svg viewBox="0.0 0.0 15.9 29.5" ><path transform="translate(-117.74, 0.0)" d="M 133.3146362304688 13.9195728302002 L 119.6905822753906 0.3332013189792633 C 119.2442016601563 -0.1116790920495987 118.5215072631836 -0.1109311953186989 118.0758819580078 0.3355025351047516 C 117.6305999755859 0.7818787097930908 117.6317443847656 1.504974842071533 118.0781784057617 1.950200438499451 L 130.8912963867188 14.72792625427246 L 118.0777206420898 27.50559616088867 C 117.63134765625 27.95088005065918 117.6301956176758 28.67351722717285 118.0754165649414 29.11995124816895 C 118.2988128662109 29.3437442779541 118.5914611816406 29.45564079284668 118.8841247558594 29.45564079284668 C 119.176025390625 29.45564079284668 119.467529296875 29.34449005126953 119.6905212402344 29.12225151062012 L 133.3146362304688 15.53622531890869 C 133.5296173095703 15.32233047485352 133.6502685546875 15.03122615814209 133.6502685546875 14.72792720794678 C 133.6502685546875 14.4246301651001 133.5292816162109 14.13387012481689 133.3146362304688 13.9195728302002 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_40s129 =
    '<svg viewBox="941.9 801.0 78.1 69.5" ><path transform="translate(941.93, 801.0)" d="M 71.93778991699219 6.803025722503662 C 67.89305114746094 2.416107892990112 62.34307861328125 0 56.30907821655273 0 C 51.79876327514648 0 47.66818237304688 1.425941824913025 44.03179550170898 4.237880229949951 C 42.19691467285156 5.657264232635498 40.5343017578125 7.393792152404785 39.06842803955078 9.420623779296875 C 37.60314178466797 7.394386768341064 35.93994140625 5.657251358032227 34.10446548461914 4.237880229949951 C 30.46867179870605 1.425934195518494 26.33809280395508 0 21.8277759552002 0 C 15.79374694824219 0 10.24318313598633 2.416108131408691 6.198461055755615 6.803025722503662 C 2.202008962631226 11.13868236541748 0.000499725341796875 17.06182479858398 0.000499725341796875 23.48213768005371 C 0.000499725341796875 30.09023475646973 2.463107824325562 36.13916015625 7.750190734863281 42.5189094543457 C 12.47988510131836 48.22565078735352 19.27755355834961 54.01884841918945 27.14941024780273 60.72716522216797 C 29.83736038208008 63.01808547973633 32.88417053222656 65.61482238769531 36.04783630371094 68.38086700439453 C 36.88360977172852 69.1129150390625 37.95604705810547 69.51589965820313 39.06842803955078 69.51589965820313 C 40.18021011352539 69.51589965820313 41.25324249267578 69.1129150390625 42.08782958984375 68.38205718994141 C 45.25149154663086 65.61541748046875 48.30009078979492 63.01749420166016 50.98923110961914 60.72536468505859 C 58.85992431640625 54.01831817626953 65.65760040283203 48.22571182250977 70.38722991943359 42.51833343505859 C 75.67430114746094 36.1391487121582 78.13631439208984 30.09022331237793 78.13631439208984 23.48155975341797 C 78.13631439208984 17.06184196472168 75.93480682373047 11.13869953155518 71.93775939941406 6.80305814743042 Z M 71.93778991699219 6.803025722503662" fill="none" stroke="#000000" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o2oyo1 =
    '<svg viewBox="12.5 1287.5 1049.0 176.0" ><path transform="translate(12.5, 1287.5)" d="M 0 0 L 1049 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(12.5, 1463.5)" d="M 0 0 L 1049 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4wx6on =
    '<svg viewBox="254.5 1304.5 540.0 126.0" ><path transform="translate(254.5, 1304.5)" d="M 0 0 L 0 126" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(524.5, 1304.5)" d="M 0 0 L 0 126" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(794.5, 1304.5)" d="M 0 0 L 0 126" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
