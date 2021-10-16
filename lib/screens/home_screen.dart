import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color mainColor = const Color.fromRGBO(140, 25, 52, 1);
  int _counter = 0;
  int _roll = 0 ;
  String name = 'سبحان الله' ;
  void _Incounter (){
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    // setState(() {
    //   if (_counter == 99) {
    //     name = "الحمد لله";
    //   }
    //   if (_counter == 198) {
    //     name = "لا إله إلا الله";
    //   }
    //   if (_counter == 297) {
    //     name = "الله اكبر";
    //   }
    //   if (_counter == 396) {
    //     _roll++;
    //     _counter = 0;
    //     name = "سبحان الله";
    //   } else {
    //     _counter += 0;
    //   }
    // });

    setState(() {
      if (_counter == 5) {
        name = "الحمد لله";
      }
      if (_counter == 10) {
        name = "لا إله إلا الله";
      }
      if (_counter == 15) {
        name = "الله اكبر";
      }
      if (_counter == 20) {
        _roll++;
        _counter = 0;
        name = "سبحان الله";
      } else {
        _counter += 0;
      }
    });
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/images/isla.png',
            ),
            fit: BoxFit.cover,
          )),
        ),
        title: const Text('فَذَكِّرْ إِنْ نَفَعَتِ الذِّكْرَى'),
        centerTitle: true,
      ),
      body: Container(
        padding:const EdgeInsets.all(10),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/isla.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 250,
            ),
            Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset:const Offset(2, 2),
                      color: Colors.yellow.shade600,
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(30)),
              ),
              child: Text(
                'عدد التسبيحات',
                style: TextStyle(fontSize: 30, color: mainColor),
              ),
            ),
            Text(
              _counter.toString(),
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                shadows: [
                  Shadow(
                      offset:const Offset(2, 2),
                      color: Colors.yellow.shade600,
                      blurRadius: 10)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _Incounter();
                 print(_counter);
                 print(name);
              },
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  padding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.white,
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  )),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/isla.png'),
                    fit: BoxFit.none,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'اضغط',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      _roll=0;
                      _counter=0;
                    });
                  },
                  child:const Text(
                    "البدء من جديد",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                 Text(
                    "الدورة رقم : $_roll",
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
