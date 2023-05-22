import 'package:flutter/material.dart';

void main() {
  runApp(BilgiTesti());
}

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: SizedBox(
              width: 100, // İstenilen genişlik değeri
              height: 100, // İstenilen yükseklik değeri
              child: Center(
                child:  Text(
                  'Knowledge Test Questions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.all(12),
                            textStyle: TextStyle(
                              color: Colors.red[400],
                            ),
                          ),
                          child: const Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                            onPressed: () {}
                        ))),
                Expanded(
                    child: Padding(padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.all(12),
                              textStyle: TextStyle(
                                color: Colors.red[400],
                              ),
                            ),
                            child: const Icon(
                              Icons.thumb_down,
                              size: 30.0,
                            ),
                            onPressed: () {}
                        ))),
              ])),
        )
      ],
    );
  }
}

class TodaysFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Today's Food"),
          ),
        ),
        body: MainFoodPage(),
      ),
    );
  }
}

class MainFoodPage extends StatefulWidget {
  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  bool desert = true;
  bool meal = true;
  bool soup = true;

  Map<int, String> soups = {1: "Kelle Paça Çorbası", 2: "Mercimek Çorbası"};
  Map<int, String> meals = {1: "Fırında Köfte", 2: "Sigara Böreği"};
  Map<int, String> deserts = {1: "Bardak Tatlısı", 2: "Trileçe"};

  bool change(bool temp) {
    return !temp;
  }

  int changeMeal(bool temp) {
    if (temp == true) {
      return 1;
    } else {
      return 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                onPressed: () {
                  setState(() {
                    soup = change(soup);
                  });
                },
                child: Image.asset("image/soup_${changeMeal(soup)}.jpg"),
              ),
            ),
          ),
          Text(
            "${soups[changeMeal(soup)]}",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 10,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                onPressed: () {
                  setState(() {
                    meal = change(meal);
                  });
                },
                child: Image.asset("image/meal_${changeMeal(meal)}.jpg"),
              ),
            ),
          ),
          Text(
            "${meals[changeMeal(meal)]}",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 10,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                onPressed: () {
                  setState(() {
                    desert = change(desert);
                  });
                },
                child: Image.asset("image/desert_${changeMeal(desert)}.jpg"),
              ),
            ),
          ),
          Text(
            "${deserts[changeMeal(desert)]}",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            width: 200,
            child: Divider(
              height: 10,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class Kahve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0F1C0F),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  width: 250,
                  height: 100,
                  child: Center(
                    child: ClipOval(
                      child: Image.asset("image/ramazan.jpg"),
                    ),
                  ),
                ),
                const Text(
                  "Kahveci",
                  style: TextStyle(color: Colors.blue, fontSize: 20),
                ),
                Container(
                  width: 350,
                  height: 30,
                  child: Divider(
                    height: 10,
                  ),
                ),
                const Card(
                  margin: EdgeInsets.symmetric(horizontal: 100),
                  color: Color(0xFF3E773E),
                  child: Center(child: Text("Text")),
                ),
                Container(
                  width: 350,
                  height: 30,
                  child: Divider(
                    height: 10,
                  ),
                ),
                const Card(
                  margin: EdgeInsets.all(25),
                  color: Color(0xFF3E773E),
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Kahveci"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Center(child: Text("Kahveci")),
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(130, 350, 130, 20),
                color: Colors.amberAccent,
                width: 120,
                height: 50,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(130, 10, 130, 20),
                color: Colors.deepOrange,
                width: 120,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
