import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecreateUi extends StatefulWidget {
  const RecreateUi({super.key});

  @override
  State<RecreateUi> createState() => _RecreateUiState();
}

class _RecreateUiState extends State<RecreateUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          // type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          iconSize: 40,
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.bar_chart,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.settings),
            ),
          ]),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        //  automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "ANALYTICS",
          style: GoogleFonts.quicksand(
              fontSize: 23, color: Colors.black, fontWeight: FontWeight.w800),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'KPI STATISTICS[%]',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
                  ),
                  ElevatedButton(
                      // autofocus: false,
                      onPressed: () {},
                      child: Text(
                        'See More',
                        style: TextStyle(color: Colors.amber),
                      ))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  //alignment: Alignment.topLeft,
                  children: [
                    Positioned(
                      bottom: -20,
                      right: -20,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.yellow[800],
                        child: Text(
                          '84',
                          style: GoogleFonts.quicksand(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.green,
                        child: Text(
                          '0.49',
                          style: TextStyle(color: Colors.amber),
                        )),
                    const Positioned(
                      // padding: EdgeInsets.only(
                      left: 50,
                      bottom: 50,
                      //  ),
                      child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.red,
                          child: Text(
                            '20',
                            style: TextStyle(color: Colors.amber),
                          )),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Text(
                            'Gross Margin',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Text(
                            'CLR(Retention)',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.purple,
                          ),
                          Text(
                            'Churn Rate',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SALES REVENUE',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Monthly'))
                ],
              ),
            ),
            // BarChart(
            //   BarChartData(
            //     barGroups: [
            //   BarChartGroupData(x: 1, barRods: [
            //     BarChartRodData(
            //       toY: 10,
            //       color: Colors.amber,
            //       width: 15,
            //       fromY: 0,
            //     )
            //   ]), BarChartGroupData(x: 2, barRods: [
            //     BarChartRodData(
            //       toY: 10,
            //       color: Colors.amber,
            //       width: 15,
            //       fromY: 0,
            //     )
            //   ]),
            // ]
            // ),
            // ),
            Row(
              children: [
                Text(
                  '18K',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Monthly',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Revenue',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.grey,
                  width: 2,
                  height: 30,
                ),
                // VerticalDivider(
                //   thickness: 3,
                //   color: Colors.red,
                // ),
                SizedBox(
                  width: 20,
                ),
                Text('data')
              ],
            ),
            // Divider(
            //       height: 100,
            //       thickness: 15,
            //       color: Colors.red,
            //     )
          ],
        ),
      ),
    );
  }
}
