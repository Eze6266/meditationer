import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AngstAllyScreen extends StatelessWidget {
  const AngstAllyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "angstAlly",
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/dolphins.jpg"),
                  fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Material(
                            borderRadius: BorderRadius.circular(100.r),
                            elevation: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Skogstur",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'HelveticaNeue',
                            ),),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Mens du går gjennom en tett skog, rasler bladene under føttene dine, og fuglene kvitrer i trærne over deg. Den kjølige brisen i ansiktet er forfriskende, og du puster inn den friske duften av furutrær. Du kommer over en fredelig bekk, og lyden av vannet som renner over steiner er beroligende. Du setter deg ned ved vannkanten og lukker øynene, tar dype pust inn og ut. Mens du puster ut, føler du spenningen forlate kroppen din, og tankene dine blir stille. Du føler deg grunnfestet og i fred i de rolige omgivelsene i skogen.",
                      softWrap: true,
                        style: TextStyle(
                          height: 1.6,
                          color: Colors.black54,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'HelveticaNeue',
                        ),
                    ),
                    SizedBox(height: 30.h),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Solnedgang på stranden",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'HelveticaNeue',
                            ),),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Du står på en rolig strand, solen går sakte ned over horisonten og kaster et varmt oransje lys over himmelen. Du kjenner den myke sanden under tærne, og lyden av bølgene som skvulper forsiktig mot stranden, er beroligende. Du setter deg ned i sanden, lukker øynene og tar en dyp pust. Mens du puster ut, føler du spenningen og angsten smelte bort. Du fortsetter å puste inn den friske havluften, og føler deg mer avslappet og sentrert med hvert åndedrag.",
                      softWrap: true,
                        style: TextStyle(
                          height: 1.6,
                          color: Colors.black54,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'HelveticaNeue',
                        ),
                    ),
                    SizedBox(height: 30.h),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Fjelltoppen",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'HelveticaNeue',
                            ),),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Du har klatret til toppen av et fjell, og utsikten er fantastisk. Solen står opp over horisonten og kaster et varmt lys over landskapet. Du setter deg ned på en stein og tar en dyp pust, kjenner den kalde fjelluften fylle lungene dine. Mens du puster ut, føler du kroppen og tankene dine slappe av, og tankene dine blir stille. Du fortsetter å puste dypt, fø.",
                      softWrap: true,
                        style: TextStyle(
                          height: 1.6,
                          color: Colors.black54,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'HelveticaNeue',
                        ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
