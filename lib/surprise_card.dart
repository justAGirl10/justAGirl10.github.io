import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SurpriseScreen extends StatefulWidget {
  const SurpriseScreen({super.key});

  @override
  SurpriseScreenState createState() => SurpriseScreenState();
}

class SurpriseScreenState extends State<SurpriseScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/birthday.png',
          height: MediaQuery.sizeOf(context).height / 3,
          width: MediaQuery.sizeOf(context).width,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 400,
                height: MediaQuery.sizeOf(context).height / 2,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE69D5F),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 7,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
              ),
              Positioned(
                // alignment: Alignment.bottomRight,
                bottom: 10,
                right: -30,
                child: Image.asset(
                  'assets/gift.png',
                  height: 260,
                ),
              ),
              Positioned(
                left: 40,
                top: 100,
                child: Container(
                  width: 300,
                  child: Text(
                    'Wishing you a year filled with reasons to smile, and 99% of them involve me\nMay all your dreams come true, except for any dream where I’m not included',
                    // 'If i had my life to live over again\niI\'d find you sooner...\nand love you longer ♡ ♡ ♡ ︎ ︎\nLove u to the moon and back',
                    style: GoogleFonts.trispace(
                      color: const Color(0xffffffff),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                bottom: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Happy',
                      style: GoogleFonts.trispace(
                        color: const Color(0xffffffff),
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0),
                      child: Text(
                        'Birthday',
                        style: GoogleFonts.smooch(
                            color: const Color(0xffEEC654), fontSize: 36),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 64.0),
                      child: Text(
                        'Love ♡ ︎',
                        style: GoogleFonts.trispace(
                            color: const Color(0xffffffff),
                            fontSize: 26,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
