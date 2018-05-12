import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Animax',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return new _MainPageState();
    }
}

class _MainPageState extends State<HomePage> {
  PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new PageView(
          children: [
            new Container(color: Colors.red),
            new Container(color: Colors.blue),
            new Container(color: Colors.grey)
          ],
          controller: _pageController,
          onPageChanged: onPageChanged,
        ),
        bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.add),
              title: new Text("Inicio")
          ),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.location_on),
              title: new Text("Buscar")
          ),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.people),
              title: new Text("Descargas")
          )
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      )
    );
  }

  void navigationTapped(int page){

    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease
    );
  }
  
  void onPageChanged(int page){
    setState((){
      this._page = page;
    });
  }

  @override
    void initState() {
      super.initState();
      _pageController = new PageController();
    }

  @override
    void dispose() {
      super.dispose();
      _pageController.dispose();
    }
 }

