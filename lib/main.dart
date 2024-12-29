import 'package:flutter/material.dart';

void fun() {
  print("hello");
}

SizedBox pdding = const SizedBox(
  width: 20,
);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData.light(),
    builder: (context, child) => Directionality(
        textDirection: TextDirection.ltr, child: child!), // تغيير اتجاه التطبيق
    theme: ThemeData(primaryColor: const Color.fromARGB(255, 236, 63, 60)),
    themeMode: ThemeMode.system,
    home: const FirstPage(), // الصفحة الرئيسية
  ));
}

// الصفحة الأولى
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          pdding,
          const Icon(
            Icons.directions_bike,
            color: Colors.black,
          ),
          pdding,
          const Icon(
            Icons.directions_bus,
            color: Colors.black,
          ),
          pdding,
          const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ],
        leading: const IconButton(
          onPressed: fun,
          icon: Icon(
            Icons.sentiment_very_satisfied,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Ammar Ebrahim",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 14, 98, 11),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // الانتقال إلى الصفحة الثانية
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
          child: const Text("انتقل إلى الصفحة الثانية"),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 24, 24, 24),
      bottomNavigationBar: const Text(
        "Bottom",
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}

// الصفحة الثانية
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          pdding,
          const Icon(
            Icons.directions_bike,
            color: Colors.black,
          ),
          pdding,
          const Icon(
            Icons.directions_bus,
            color: Colors.black,
          ),
          pdding,
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ThreePage()));
            },
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ),
        ],
        title: const Text(
          "الصفحة الثانية",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amberAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // العودة إلى الصفحة الأولى
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 180,
                height: 180,
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(
                    color: Colors.black,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(35),
                ),
              ),
              Transform.rotate(
                angle: -0.1,
                child: Container(
                  width: 140,
                  height: 120,
                  color: Colors.red,
                ),
              ),
              Container(),
              Positioned(
                //  child: ClipOval(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),

                  //   color: Colors.green,
                  //    child: const Align(
                  //   alignment: Alignment.center,
                  child: const Text(
                    "hello",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //    ),
                ),
                //),
                top: 50,
              )
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 24, 24, 24),
      bottomNavigationBar: const Text(
        "Bottom",
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class ThreePage extends StatelessWidget {
  const ThreePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Transform.rotate(
            angle: 3.14,
            child: const Icon(
              Icons.error_outline,
              color: Colors.black,
            ),
          ),
          const Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FourePage()));
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              )),
        ],
        title: const Text(
          "Material App",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.amber,
        leading: IconButton(
            onPressed: () {
              // العودة إلى الصفحة الثانية
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            color: Colors.amber,
            child: const Text(
              'MaterialApp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              child: const Center(
                child: Column(
                  children: [
                    Text(
                      'A convenience widget that wraps a number of widgets that are commonly required for applications implementing Material Design.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.amber),
                    ),
                    Text(
                      'widgets that are commonly required for applications implementing Material Design.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.amber),
                    ),
                    Text(
                      'applications implementing Material Design.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, color: Colors.amber),
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

class FourePage extends StatelessWidget {
  const FourePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "الصفحة الرابعة",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.amberAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: const Text(
            "مرحباً بك في الصفحة الرابعة",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 35,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
