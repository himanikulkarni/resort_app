import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Kuta_beach());
}

class Kuta_beach extends StatelessWidget {
  const Kuta_beach({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ((context, child) {
        return MaterialApp(
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          home: const kuta_beach(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class kuta_beach extends StatelessWidget {
  const kuta_beach({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/kuta_beach.png'),
                    fit: BoxFit.fill)),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black,
                Colors.transparent,
                Colors.transparent
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 250.w,
                    ),
                    const Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 390.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      'Kuta Beach',
                      style: GoogleFonts.poppins(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 90.w,
                    ),
                    const Icon(
                      Icons.location_pin,
                      color: Colors.white,
                      size: 15,
                    ),
                    Text(
                      'Bali, Indonesia',
                      style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    Text(
                      'One of the most happening beaches in Goa, Baga\nBeach is where you will find water sports,\nfine dining restaurants, bars, and clubs.\nSituated in North Goa,Baga Beach is bordered by\nCalangute and Anjuna Beaches.',
                      style: GoogleFonts.urbanist(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '4.8',
                      style: GoogleFonts.urbanist(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    const Icon(
                      Icons.currency_rupee,
                      color: Colors.white,
                      size: 15,
                    ),
                    Text(
                      '15000/person',
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 105.w,
                    ),
                    Container(
                      width: 110.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(15.r)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 12.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 18.w,
                              ),
                              Text(
                                'Book Now',
                                style: GoogleFonts.urbanist(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
