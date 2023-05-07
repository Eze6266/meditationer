// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class VennLessonDetails extends StatefulWidget {
  const VennLessonDetails({super.key});

  @override
  State<VennLessonDetails> createState() => _VennLessonDetailsState();
}

class _VennLessonDetailsState extends State<VennLessonDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Hero(
              tag: "Venn",
              child: Container(
                width: 100 * size.width / 100,
                height: 36 * size.height / 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/iron.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding:EdgeInsets.only(left: 30.w, top: 60.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(13),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Vennlighet',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xff3f414e),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding:EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Metoder for vennlighet',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xff3f414e),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.sp),
            
            Padding(
              padding:
                   EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h, bottom: 30.h),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Godhet er en kraftfull kraft som kan ha en dyp innvirkning på livene våre. Det er å utvise medfølelse og forståelse for oss selv og andre, og det har evnen til å skape en bølge av positivitet som kan spre seg langt og bredt. Når vi praktiserer godhet, hjelper vi ikke bare andre, men vi har også nytte av det selv. Studier har vist at handlinger av godhet kan øke vår generelle trivsel, redusere stress og angst, og til og med forbedre vår fysiske helse. Godhet kan ta mange former, fra små gestus som å holde døren åpen for noen, til større handlinger som å være frivillig i en lokal veldedighet. Det kan også være så enkelt som å tilby et smil eller et vennlig ord til noen som har en dårlig dag. En av de vakreste tingene med godhet er at den er smittsom. Når vi viser godhet mot andre, inspirerer vi dem til å gjøre det samme. Dette skaper en kjedereaksjon av positivitet som kan spre seg gjennom samfunnene våre og til og med verden. Å praktisere godhet hjelper oss også med å dyrke en følelse av empati og tilknytning til andre. Det minner oss om at vi alle er mennesker og at vi alle deler lignende utfordringer og gleder i livet. Ved å utvide godhet til andre, styrker vi våre egne relasjoner og skaper en mer harmonisk og medfølende verden. Så la oss alle gjøre en bevisst innsats for å praktisere godhet i våre daglige liv. La oss utvise medfølelse og forståelse for oss selv og de rundt oss. Husk, hver handling av godhet, uansett hvor liten den er, kan ha en betydelig innvirkning på verden rundt oss.',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.7
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
