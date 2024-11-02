import 'package:birthday/letter_card_screen.dart';
import 'package:birthday/main_screen.dart';
import 'package:birthday/surprise_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int currentIndex = 0;
  List<Widget> screens = const [
    MainScreen(),
    SurpriseScreen(),
    LetterCardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
              if(currentIndex == 1) {
                stopSoundEffect();
                playSoundEffect(sound:'assets/music_box.mp3');
              } else if (currentIndex == 2) {
                stopSoundEffect();
                playSoundEffect(sound:'assets/fireworks.mp3', repeat: 0);
              }
              else {
                stopSoundEffect();
              }
            },
            items: const [
              BottomNavigationBarItem(
                icon:  Icon(CupertinoIcons.heart),
                activeIcon: Icon(CupertinoIcons.heart_fill, color: Colors.blue,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:  Icon(CupertinoIcons.heart),
                activeIcon: Icon(CupertinoIcons.heart_fill, color: Colors.orange,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon:  Icon(CupertinoIcons.heart),
                activeIcon: Icon(CupertinoIcons.heart_fill, color: Colors.blue,),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Soundpool pool = Soundpool.fromOptions(options: SoundpoolOptions.kDefault);

int streamId = 0;
playSoundEffect({required String sound , int? repeat}) async {
  int soundId = await rootBundle
      .load(sound)
      .then((ByteData soundData) {
    return pool.load(soundData);
  });
  streamId = await pool.play(soundId, repeat: repeat ?? 2,);
}
stopSoundEffect() {
  pool.stop(streamId);
}
