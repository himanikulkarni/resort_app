import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simplem_assignment/Bagabeach.dart';
import 'package:simplem_assignment/Kutabeach.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          home: const homepage(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            SizedBox(
              width: 1.w,
            ),
            CircleAvatar(
              radius: 14.r,
              backgroundColor: Colors.grey,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Hello, Vineetha',
              style: GoogleFonts.inter(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              width: 145.w,
            ),
            Image.asset('assets/lamp.png')
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Where do you\nwant to explore today?',
                    style: GoogleFonts.poppins(
                        fontSize: 24.sp, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 320.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 237, 237, 237),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 13.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              'Search',
                              style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromARGB(255, 180, 179, 179)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Choose Category',
                    style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 110.w,
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 150.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Image.asset(
                              'assets/beach_icon.png',
                              height: 40.h,
                              width: 40.w,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Beach',
                              style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 150.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 195, 194, 194)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Image.asset(
                              'assets/mountain_icon.png',
                              height: 40.h,
                              width: 40.w,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Mountain',
                              style: GoogleFonts.inter(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              SizedBox(
                height: 220.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const Kuta_beach()),
                          );
                        },
                        child: Container(
                          width: 180.w,
                          height: 220.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/kuta_beach.png'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.black,
                                          Colors.transparent,
                                          Colors.transparent
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 135.w,
                                      ),
                                      CircleAvatar(
                                        radius: 15.r,
                                        backgroundColor: Colors.white,
                                        child: const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 100.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'Kuta  beach',
                                        style: GoogleFonts.urbanist(
                                            color: Colors.white,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'Bali, Indonesia',
                                        style: GoogleFonts.urbanist(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15.w,
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
                                        width: 8.w,
                                      ),
                                      Text(
                                        '4.2',
                                        style: GoogleFonts.urbanist(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const Baga_beach()),
                          );
                        },
                        child: Container(
                          width: 180.w,
                          height: 220.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/baga_beach.png'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Colors.black,
                                          Colors.transparent,
                                          Colors.transparent
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 135.w,
                                      ),
                                      CircleAvatar(
                                        radius: 15.r,
                                        backgroundColor: Colors.white,
                                        child: const Icon(
                                          Icons.favorite_outline,
                                          size: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 100.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'Baga  beach',
                                        style: GoogleFonts.urbanist(
                                            color: Colors.white,
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        'Goa, India',
                                        style: GoogleFonts.urbanist(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15.w,
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
                                        width: 8.w,
                                      ),
                                      Text(
                                        '4.8',
                                        style: GoogleFonts.urbanist(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Popular Package',
                    style: GoogleFonts.inter(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 120.w,
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 310.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 194, 194, 194)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              width: 80.w,
                              height: 120.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/kuta_resort.png'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'Kuta Resort                       ',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    const Text.rich(
                                      TextSpan(
                                        children: [
                                          WidgetSpan(
                                              child: Icon(
                                            Icons.currency_rupee,
                                            size: 16,
                                            color: Colors.orange,
                                          )),
                                          TextSpan(
                                              text:
                                                  '20,000                                ',
                                              style: TextStyle(
                                                  color: Colors.orange)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Color.fromARGB(255, 220, 200, 20),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Color.fromARGB(255, 220, 200, 20),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Color.fromARGB(255, 220, 200, 20),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Color.fromARGB(255, 220, 200, 20),
                                    ),
                                    Text(
                                      '4.8',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17.sp),
                                    ),
                                    SizedBox(width: 70.w)
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'A resort is a place used for\nvacation, relaxation or as a day...',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 310.w,
                    height: 150.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 194, 194, 194)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              width: 80.w,
                              height: 120.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/baga_resort.png'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'Baga Beach Resort         ',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    const Text.rich(
                                      TextSpan(
                                        children: [
                                          WidgetSpan(
                                              child: Icon(
                                            Icons.currency_rupee,
                                            size: 16,
                                            color: Colors.orange,
                                          )),
                                          TextSpan(
                                              text:
                                                  '15,000                                ',
                                              style: TextStyle(
                                                  color: Colors.orange)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Color.fromARGB(255, 220, 200, 20),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Color.fromARGB(255, 220, 200, 20),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Color.fromARGB(255, 220, 200, 20),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Color.fromARGB(255, 220, 200, 20),
                                    ),
                                    Text(
                                      '4.8',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17.sp),
                                    ),
                                    SizedBox(width: 70.w)
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      'A resort is a place used for\nvacation, relaxation or as a day...',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int hexColor(String c) {
  String sColor = '0xff$c';
  sColor = sColor.replaceAll('#', '');
  int dColor = int.parse(sColor);
  return dColor;
}
