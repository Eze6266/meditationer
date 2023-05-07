// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FredLessonDetails extends StatefulWidget {
  const FredLessonDetails({super.key});

  @override
  State<FredLessonDetails> createState() => _FredLessonDetailsState();
}

class _FredLessonDetailsState extends State<FredLessonDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Hero(
              tag: "Fred",
              child: Container(
                width: 100 * size.width / 100,
                height: 36 * size.height / 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/stone.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 30.w, top: 60.h),
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
              padding:  EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fred',
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
              padding: EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nøkler til indre fred',
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
            SizedBox(height: 20.h),
            
            Padding(
              padding:
                   EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h, bottom: 30.h),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'En gang var det en ung kvinne ved navn Maya som slet med angst. Hennes sinn var alltid fylt med bekymringer og frykt, og hun fant det vanskelig å slappe av og nyte livet. En dag bestemte hun seg for å gå på en fjelltur for å klare tankene sine. Mens hun gikk, tok hun inn skjønnheten i naturen rundt seg, fuglene som kvitret, solen som skinte og den friske luften som fylte lungene hennes. Sakte begynte sinn å roe seg, og hun følte en følelse av fred som skylte over henne. Mens hun fortsatte fjellturen, kom hun over en liten lysning omgitt av trær. I midten var en vakker dam som speilet den blå himmelen over. Hun satte seg ned ved dammen og lukket øynene, tok dype pust og kjente den kjølige brisen mot ansiktet sitt. I noen få øyeblikk satt Maya der i stillhet, lot tankene gli bort. Hun innså at i dette øyeblikket hadde hun funnet indre fred. Hun trengte ikke å bekymre seg for fortiden eller fremtiden, men bare være tilstede i øyeblikket. Fra den dagen av gjorde Maya det til en vane å ta seg tid til å være stille og rolig hver dag, selv om det bare var for noen få minutter. Hun oppdaget at ved å gjøre dette, kunne hun roe sitt sinn og redusere angsten sin. Hun begynte også å sette pris på små øyeblikk av skjønnhet og fred rundt seg, som en solnedgang eller en varm kopp te. Maya innså at indre fred ikke var noe som kunne finnes utenfor henne selv, men heller noe hun kunne dyrke innenfra gjennom enkle handlinger av oppmerksomhet og selvpleie.',
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
