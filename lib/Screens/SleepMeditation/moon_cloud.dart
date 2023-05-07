// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MoonCloudLessonDetails extends StatefulWidget {
  const MoonCloudLessonDetails({super.key});

  @override
  State<MoonCloudLessonDetails> createState() => _MoonCloudLessonDetailsState();
}

class _MoonCloudLessonDetailsState extends State<MoonCloudLessonDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Hero(
              tag: "MoonCloud",
              child: Container(
                width: 100 * size.width / 100,
                height: 36 * size.height / 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/moon.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 60.h),
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
                  'Moon Cloud',
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
                  'En gang for lenge siden, i et fjernt land, var det en magisk måne som lyste sterkt på nattehimmelen. Hver natt overvåket månen landet, og kastet et mildt lys som opplyste verden under. En natt, mens månen beveget seg over himmelen, så den en ensom sky som fløt forbi. Skyen så trist og tapt ut, og drev uten retning. Månen følte medynk for skyen og bestemte seg for å spørre om det gikk bra. Så snart månen snakket, så skyen opp og svarte: "Kjære måne, jeg er så ensom her oppe. Jeg har ingen venner, og jeg vet ikke hvor jeg hører hjemme." Månen følte en sorg for skyen og bestemte seg for å hjelpe. "Hvorfor ikke bli med meg?" spurte månen. "Jeg skal ta deg med på en reise gjennom natt himmelen, og vi kan utforske verden sammen." Begeistret for muligheten til eventyr, samtykket skyen, og månen plukket den opp forsiktig i sitt lys. Sammen fløy de over himmelen, utforsket stjernene og planetene som blinket i mørket. Mens de reiste, snakket månen og skyen og lo, delte historier og lagde minner. De så verden fra et nytt perspektiv, og skyen følte ikke lenger seg tapt eller ensom. Til slutt, da natten begynte å bli lysere, brakte månen skyen tilbake til sitt hjem på himmelen. "Takk for at du tok meg med på dette fantastiske eventyret," sa skyen. "Jeg føler meg lykkelig og fornøyd, og vet at jeg har en venn i deg, kjære måne." Så hver natt ville månen og skyen reise sammen over himmelen, utforske universets underverk og dele gleden av vennskap. Verden under ville se opp i undring, beundrende synet av månen og dens trofaste følgesvenn, skyen.',
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
