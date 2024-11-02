import 'package:flutter/material.dart';

class LetterCardScreen extends StatefulWidget {
  const LetterCardScreen({super.key});

  @override
  LetterCardScreenState createState() => LetterCardScreenState();
}

class LetterCardScreenState extends State<LetterCardScreen> {
  bool _isOpened = false;

  double height = 90;

  bool isConfettiAnimate = false;

  @override
  void initState() {
    super.initState();
    Future.delayed((const Duration(milliseconds: 400)), () {
      setState(() {
        isConfettiAnimate = true;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 3000),
            top: !isConfettiAnimate ? 0 : MediaQuery.sizeOf(context).height,
            child: CelebrateImage(),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 2000),
            top: !isConfettiAnimate ? 150 : MediaQuery.sizeOf(context).height,
            child: CelebrateImage(),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1500),
            top: !isConfettiAnimate ? 300 : MediaQuery.sizeOf(context).height,
            child: CelebrateImage(),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1000),
            top: !isConfettiAnimate ? 450 : MediaQuery.sizeOf(context).height,
            child: CelebrateImage(),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isOpened = !_isOpened;
                  isConfettiAnimate = true;
                  height = _isOpened ? -5 : 90;
                });
              },
              child: SizedBox(
                height: 300,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 120,
                      decoration: const BoxDecoration(
                        color: Color(0xff5CA6D1),
                        boxShadow: [
                          BoxShadow(color: Colors.black26, blurRadius: 4)
                        ],
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 300),
                      top: height,
                      child: SizedBox(
                        height: 100,
                        child: Align(
                          alignment: Alignment.center,
                          child: Transform.flip(
                            flipY: !_isOpened,
                            child: ClipPath(
                              clipper: TriangleClipper(),
                              child: Container(
                                width: 200,
                                height: 100,
                                color: Colors.blue[100]?.withOpacity(.4),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      bottom: _isOpened ? 150 : 20,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 500),
                        opacity: _isOpened ? 1 : 0,
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          width: 200,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(color: Colors.black26, blurRadius: 4)
                            ],
                          ),
                          child: const Text(
                            "Love u Love u Love uuuu more than you think 🩷🩷🩷",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontStyle: FontStyle.italic),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class CelebrateImage extends StatelessWidget {
  const CelebrateImage({super.key});

  @override
  Widget build(BuildContext context) {
    final String imageSource = 'https://i.postimg.cc/vT6fTLbR/balloon.png';
    final width = MediaQuery.sizeOf(context).width;
    return Image.network(imageSource, width: width,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return const Center(
            child: CircularProgressIndicator.adaptive(
              backgroundColor: Color(0xffE69D5F),
            ));
      },
      errorBuilder: (context, error, stackTrace) {
        return Center(
            child: Wrap(
              children: [
                Image.asset('assets/gift.png', width: 80,),
                Image.asset('assets/gift.png', width: 80,),
                Image.asset('assets/gift.png', width: 80,),
                Image.asset('assets/gift.png', width: 80,),
                Image.asset('assets/gift.png', width: 80,),
                Image.asset('assets/gift.png', width: 80,),
                Image.asset('assets/gift.png', width: 80,),
                Image.asset('assets/gift.png', width: 80,),
              ],
            ));
      },
    );
  }
}


class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}