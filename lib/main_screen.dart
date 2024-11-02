import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isAnimate = false;

  @override
  void initState() {
    super.initState();
    Future.delayed((const Duration(seconds: 1)), () {
      setState(() {
        isAnimate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width / 6;
    final height = MediaQuery.sizeOf(context).height / 8;
    return SafeArea(
      child: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height,
                ),
                SizedBox(
                  height: 230,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/Background.png',
                        height: 200,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: SizedBox(
                          child: Column(
                            children: [
                              Text(
                                'JOEY',
                                style: GoogleFonts.wendyOne(
                                  color: Colors.white,
                                  fontSize: 38,
                                ),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Container(
                                height: 120,
                                width: 120,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffFBE67F),
                                ),
                                padding: const EdgeInsets.all(4),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: Image.asset(
                                    'assets/profile.jpeg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/cake.png',
                              width: 50,
                            ),
                            const SizedBox(
                              width: 64,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'BIRTHDAY',
                                    style: GoogleFonts.waitingForTheSunrise(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    '27 October',
                                    style: GoogleFonts.wendyOne(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/rainbow.png',
                                width: 50,
                              ),
                              const SizedBox(
                                width: 64,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'WISHES',
                                      style: GoogleFonts.waitingForTheSunrise(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "May your life be like a giant cake, And may I always be the best part of it",
                                      style: GoogleFonts.wendyOne(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '*NOTES*',
                              style: GoogleFonts.waitingForTheSunrise(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Remember, anyone who gets to be around you is pretty lucky especially me!',
                              style: GoogleFonts.wendyOne(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedAlign(
            duration: const Duration(milliseconds: 1000),
            alignment: isAnimate ? Alignment.topCenter : Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/balloon.png',
                  width: width,
                  height: height,
                ),
                Image.asset(
                  'assets/balloon2.png',
                  width: width,
                  height: height,
                ),
                Image.asset(
                  'assets/balloon3.png',
                  width: width,
                  height: height,
                ),
                Image.asset(
                  'assets/balloon.png',
                  width: width,
                  height: height,
                ),
                Image.asset(
                  'assets/balloon2.png',
                  width: width,
                  height: height,
                ),
                Image.asset(
                  'assets/balloon3.png',
                  width: width,
                  height: height,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
