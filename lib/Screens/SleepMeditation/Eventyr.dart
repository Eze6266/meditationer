// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EventyrLessonDetails extends StatefulWidget {
  const EventyrLessonDetails({super.key});

  @override
  State<EventyrLessonDetails> createState() => _EventyrLessonDetailsState();
}

class _EventyrLessonDetailsState extends State<EventyrLessonDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Hero(
              tag: "Eventyr",
              child: Container(
                width: 100 * size.width / 100,
                height: 36 * size.height / 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/birdsleep.png'),
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
                  'Eventyr Tid',
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
                  'Stikk inn og nyt',
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
                  'En gang i tiden, i et land av mytiske skapninger, bodde det en ung eventyrer ved navn Lily. Lily var fryktløs og elsket å utforske den fortryllede skogen som omgav landsbyen hennes. En natt, mens hun lå i sengen sin, hørte hun en merkelig lyd utenfor vinduet sitt. Hun kikket ut og så en fe som vinket til henne og ba henne komme ut og utforske. Spent på muligheten for et nytt eventyr, fulgte Lily feen ut i skogen. De reiste gjennom svingete stier, forbi glitrende bekker og under måneskinnet. Mens de gikk, fortalte feen Lily om de forskjellige skapningene som levde i skogen, fra de rampete goblinene til de milde enhjørningene. Lily lyttet i undring, øynene hennes ble tunge etter hvert som de gikk. Til slutt kom de til en lysning fylt av lysende biller, deres myke glød lyste opp natten. Feen ledet Lily til en koselig seng av mose, og Lily krøp inn, følte seg trygg og varm. Da hun lukket øynene, kunne hun høre skogens lyder som vugget henne i søvn. Bladene raslet i brisen, sirissene kvitret og lyden av feens vinger flakset forsiktig. Med et fredfullt smil på ansiktet, drev Lily inn i en dyp søvn, drømmende om alle eventyrene som ventet henne i den fortryllede skogen. Neste morgen våknet hun opp følte seg uthvilt og full av energi. Mens hun gikk tilbake til landsbyen sin, kunne hun knapt vente med å dele sin magiske opplevelse med venner og familie. Fra den natten sov Lily godt, vel vitende om at den fortryllede skogen alltid var der for å guide henne til fredfulle drømmer.',
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
