import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inplayin2/Helperfiles/utils.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body:
          // SingleChildScrollView(
          //   child:
          Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 68.h, left: 21.w),
            child: Row(
              children: [
                Container(
                  height: 39.h,
                  width: 150.w,
                  // color: Colors.green,
                  child: Text(
                    'Explore',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                SizedBox(
                  width: 150.w,
                ),
                Icon(
                  Icons.search,
                  size: 28.h,
                ),
              ],
            ),
          ),

          SizedBox(
            height: 12.h,
          ),

          Container(
            width:
                double.infinity, // Example: Set width to fill available space
            height: 30.h, // Example: Set height to a fixed value
            margin: EdgeInsets.only(left: 21.w, bottom: 12.h),

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                PropertyTypeButton(
                  txt: "Homes",
                  selected: true,
                ),
                PropertyTypeButton(
                  txt: "Hotels",
                ),
                PropertyTypeButton(
                  txt: "Plots",
                ),
                PropertyTypeButton(txt: "Cars"),
                PropertyTypeButton(txt: "Agriculture"),
                PropertyTypeButton(txt: "Apartments"),
              ],
            ),
          ),
          Container(
            height: 1.h,
            width: double.infinity, // Occupies full screen width
            color: const Color(0xffd9d9d9), // Set the color to grey
          ),

          //
          //
          //

          Container(
            width: double.infinity,
            height: 582.h,
            color: Theme.of(context).colorScheme.surface,
            child: ListView.builder(
              itemCount: 20, // Example number of cards
              itemBuilder: (context, index) {
                return ExploreCard(
                  starred: index % 2 == 1,
                );
              },
            ),
          ),

          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 20, // Example number of cards
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         title: Text('Card $index'),
          //       );
          //     },
          //   ),
          // ),
          // Bottom part of the page
          Container(
            // Your bottom part content here
            height: 99.h, // Example height, adjust as needed
            color: Theme.of(context).colorScheme.surface,
            child: Padding(
              padding: EdgeInsets.only(top: 10.53.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.search,
                        size: 15.1.h,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      SizedBox(
                        height: 4.16.h,
                      ),
                      Text(
                        'Explore',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 11.h,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.signal_cellular_alt_sharp,
                        size: 15.1.h,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      SizedBox(
                        height: 4.16.h,
                      ),
                      Text(
                        'Manage',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 11.h,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        size: 15.1.h,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      SizedBox(
                        height: 4.16.h,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          fontSize: 11.h,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          // const Text(
          //   'You have pushed the button this many times: Ramesh',
          // ),
          // Text(
          //   'counter',
          //   style: Theme.of(context).textTheme.headlineMedium,
          // ),
        ],
      ),
      // ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
