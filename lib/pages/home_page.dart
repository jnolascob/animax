import 'package:flutter/material.dart';
import 'fragments/search_page.dart';
import 'fragments/start_page.dart';
import 'fragments/download_page.dart';

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
            new StartPage(),
            new SearchPage(),
            new DownloadPage(),
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

