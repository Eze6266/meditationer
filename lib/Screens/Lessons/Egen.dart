// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EgenLessonDetails extends StatefulWidget {
  const EgenLessonDetails({super.key});

  @override
  State<EgenLessonDetails> createState() => _EgenLessonDetailsState();
}

class _EgenLessonDetailsState extends State<EgenLessonDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Hero(
              tag: "Egenkjærlighet",
              child: Container(
                width: 100 * size.width / 100,
                height: 36 * size.height / 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/selflove.png'),
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
                  'Egenkjærlighet',
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
              padding:  EdgeInsets.only(left: 20.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Koble til deg selv igjen',
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
                  'En gang var det en ung kvinne som het Lily som slet med å elske seg selv. Hun sammenlignet seg stadig med andre, og hennes indre kritiker fortalte henne at hun ikke var god nok. En dag bestemte hun seg for å gå en tur i parken og kom over en gruppe mennesker som mediterte. Nysgjerrig ble hun med, og oppdaget snart kraften i å elske seg selv gjennom meditasjon. I løpet av sin praksis lærte hun å roe sinnet og lytte til sin indre stemme. Hun skjønte at hun var den eneste som virkelig kunne elske og akseptere seg selv for den hun var. Med daglig meditasjon begynte Lily å verdsette seg selv mer og mer. Hun begynte å omfavne sine unike kvaliteter og sluttet å sammenligne seg med andre. Hun begynte til og med å se sine feil som muligheter for vekst og selvforbedring. Over tid strålte Lilys nye selvkjærlighet ut og påvirket positivt de rundt henne. Hun ble en inspirasjonskilde for andre som slet med sin egen selvkjærlighetsreise. Til slutt lærte Lily at selvkjærlighet ikke bare var viktig, men nødvendig for å leve et meningsfylt liv. Hun forpliktet seg til å fortsette å praktisere selvkjærlighet gjennom meditasjon og andre selvpåpasselige aktiviteter. Husk, akkurat som Lily, har du også kraften til å elske og akseptere deg selv for den du er. Ta et øyeblikk for å praktisere selvkjærlighet hver dag, og se hvordan ditt indre lys skinner lysere enn noensinne.',
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
