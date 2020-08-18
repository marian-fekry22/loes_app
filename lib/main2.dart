import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Loes_App_01' (shape)
          Container(
            width: MediaQuery.of(context).size.width  ,
            height: 86.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(''),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 86.0),
            child: SizedBox(
              width: 1080.0,
              height: 187.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 1080.0, 187.0),
                    size: Size(200, 187.0),
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
                    size: Size(200, 187.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Create Account',
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
            offset: Offset(52.0, 348.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              //height: 1043.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 977.0, 131.0),
                    size: Size(977.0, 1043.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(41.0, 25.0, 239.0, 82.0),
                          size: Size(100, 10.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'First Name',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 20,
                              color: const Color(0xff9b9b9b),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
    TextFormField(
    decoration: InputDecoration(
    labelText: 'Enter your username'
    ),
    ),

    Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 977.0, 131.0),
                          size: Size(977.0, 131.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 182.0, 977.0, 131.0),
                    size: Size(977.0, 1043.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(41.0, 27.0, 239.0, 82.0),
                          size: Size(977.0, 131.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Last Name',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 40,
                              color: const Color(0xff9b9b9b),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 977.0, 131.0),
                          size: Size(977.0, 131.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 365.0, 977.0, 131.0),
                    size: Size(977.0, 1043.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(41.0, 28.0, 326.0, 82.0),
                          size: Size(977.0, 131.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Mobile Number',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 40,
                              color: const Color(0xff9b9b9b),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 977.0, 131.0),
                          size: Size(977.0, 131.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 547.0, 977.0, 131.0),
                    size: Size(977.0, 1043.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(41.0, 30.0, 239.0, 82.0),
                          size: Size(977.0, 131.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 40,
                              color: const Color(0xff9b9b9b),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 977.0, 131.0),
                          size: Size(977.0, 131.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 730.0, 977.0, 131.0),
                    size: Size(977.0, 1043.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(41.0, 31.0, 239.0, 82.0),
                          size: Size(977.0, 131.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 40,
                              color: const Color(0xff9b9b9b),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 977.0, 131.0),
                          size: Size(977.0, 131.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 912.0, 977.0, 131.0),
                    size: Size(977.0, 1043.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(41.0, 25.0, 360.0, 82.0),
                          size: Size(977.0, 131.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Text(
                            'Confirm password',
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 40,
                              color: const Color(0xff9b9b9b),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 977.0, 131.0),
                          size: Size(977.0, 131.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff707070)),
                            ),
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
            offset: Offset(87.0, 1663.0),
            child: SizedBox(
              width: 906.0,
              height: 165.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 906.0, 165.0),
                    size: Size(906.0, 165.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19.0),
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(345.0, 27.0, 216.0, 112.0),
                    size: Size(906.0, 165.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 60,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
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

