import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyTypeButton extends StatelessWidget {
  final bool selected;
  final String txt;
  const PropertyTypeButton(
      {super.key, required this.txt, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.h,
      padding: EdgeInsets.only(
        left: 6.w,
        right: 8.w,
      ),
      margin: EdgeInsets.only(right: 6.w),
      // width: 31.w,
      decoration: BoxDecoration(
        color: selected
            ? Theme.of(context).colorScheme.tertiary
            : Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: Theme.of(context).colorScheme.onPrimary,
          width: 1.r,
        ),
      ),
      child: Center(
          child: Text(
        txt,
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color:
              selected ? Theme.of(context).colorScheme.primary : Colors.black,
        ),
      )),
    );
  }
}

class ExploreCard extends StatelessWidget {
  final bool starred;
  const ExploreCard({super.key, this.starred = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 375.h,
        width: 358.w,
        margin: EdgeInsets.only(bottom: 20.h),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2.r,
              blurRadius: 4.r,
              offset: Offset(0.w, 2.h), // changes the shadow direction
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 358.w,
              height: 176.h,
              // color: Color(0xFFD9D9D9),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondary,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12.h, right: 11.h),
                        child: starred
                            ? Icon(
                                Icons.star,
                                color: const Color(0xfffbbc04),
                                size: 27.h,
                              )
                            : Icon(
                                Icons.star_border,
                                color: Colors.black,
                                size: 27.h,
                              ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 13.h),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 18.w,
                ),
                Text('Sunshine Eco Resort',
                    style: Theme.of(context).textTheme.labelLarge),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 18.w),
                Text(
                  'Munnar',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.h,
                  ),
                ),
                SizedBox(width: 13.w),
                Icon(
                  Icons.circle,
                  size: 7.h,
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                SizedBox(width: 4.w),
                Text(
                  'Available',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.h,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                SizedBox(width: 45.w),
                Icon(
                  Icons.bed,
                  color: Colors.black.withOpacity(0.5),
                ),
                SizedBox(width: 1.w),
                Text(
                  '3',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.h,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
                SizedBox(width: 15.w),
                Icon(
                  Icons.expand,
                  color: Colors.black.withOpacity(0.5),
                ),
                SizedBox(width: 1.w),
                Text(
                  '1500 sqft',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.h,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 16.h,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 18.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Asset value',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      '₹ 5.00Cr',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                SizedBox(
                  width: 37.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Target IRR',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      '10-15%',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                SizedBox(
                  width: 44.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Gross Yield',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      '10-15%',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 23.h,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 11.w,
                ),
                Container(
                  height: 33.h,
                  width: 162.w,
                  decoration: BoxDecoration(
                    color: const Color(0xff7a7a79),
                    border: Border.all(
                      color: const Color(0xFF7A7A79),
                      width: 1.w,
                    ),
                    borderRadius: BorderRadius.circular(7.r),
                  ),
                  child: Center(
                    child: Text(
                      'View More',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 33.h,
                  width: 162.w,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.tertiary,
                      width: 1.w,
                    ),
                    borderRadius: BorderRadius.circular(7.r),
                  ),
                  child: Center(
                    child: Text(
                      'Invest',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            )

            // Padding(
            //   padding: EdgeInsets.only(left: 320.w),
            //   child: Icon(
            //     Icons.star,
            //     size: 12,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
