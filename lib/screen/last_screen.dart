import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[900],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.grey,
              Colors.transparent,
            ],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
          )),
        ),
        title: Text(
          'For JudyS.',
          style: GoogleFonts.lato(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // leading: Container(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cast,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_box,
                color: Colors.white,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          // elevation: 2,

          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          // iconSize: 10,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'New and Hot',
              icon: Icon(Icons.browse_gallery_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Fast laughs',
              icon: Icon(Icons.emoji_emotions),
            ),
            BottomNavigationBarItem(
              label: 'Downloads',
              icon: Icon(Icons.downloading),
            ),
          ]
          ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
         
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 90, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.grey[900],
                    label: const Text(
                      'Series',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.grey[900],
                    label: const Text(
                      'Films',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Chip(
                      //iconTheme: IconThemeData(),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.grey[900],
                      label: const Text(
                        ' Categories',
                        style: TextStyle(color: Colors.white),
                      ),
                      deleteIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                      onDeleted: () {}),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                  height: 500,
                  //width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://www.themoviedb.org/t/p/original/lDsJxWEVDZCi6UXBLwAcyh2Z6n.jpg',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              size: 40,
                              Icons.play_arrow,
                              color: Colors.black,
                            ),
                            label: Text(
                              'Play  ',
                              style: TextStyle(fontSize: 22, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)))),
                        SizedBox(
                          width: 15,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            size: 38,
                            Icons.done,
                            color: Colors.white,
                          ),
                          label: Text(
                            'My List ',
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[900],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Series",
              style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
            ),
           
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://m.media-amazon.com/images/M/MV5BMDEwOWVlY2EtMWI0ZC00OWVmLWJmZGItYTk3YjYzN2Y0YmFkXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_FMjpg_UX1000_.jpg'))),
                    ),
                  );
                },
              ),
            ),
            //  ListView.builder(
            //   itemCount: 5,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) {

            //  return  Container(
            //      decoration: BoxDecoration(
            //  image: DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/M/MV5BMDEwOWVlY2EtMWI0ZC00OWVmLWJmZGItYTk3YjYzN2Y0YmFkXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_FMjpg_UX1000_.jpg'))
            //      ),

            //    );
            //  //  Text('');
            //  },)
          ],
        ),
      ),
    );
  }
}
