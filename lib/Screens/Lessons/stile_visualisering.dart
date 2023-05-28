import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StilleVisualiseringScreen extends StatelessWidget {
  const StilleVisualiseringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "visualisering",
      child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/still_visualization.jpg"),
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
                            borderRadius: BorderRadius.circular(100),
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
                        SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Stile Visualisering",
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
                      "Lukk øynene og ta en dyp pust. Forestill deg en stille innsjø i ditt indre øye. Vannet er krystallklart og rolig, og reflekterer den blå himmelen over. Det er ingen bølger eller krusninger, bare stillhet. Mens du ser på innsjøen, forestill deg en liten båt som sakte driver forbi. Båten er laget av tre og har et hvitt seil. Den beveger seg forsiktig over vannet og lager ingen lyd. Se på båten forsvinne inn i det fjerne, og igjen bare la stillheten i innsjøen være. Nå, forestill deg et enkelt blad som faller fra et tre og lander på overflaten av innsjøen. Bladet flyter på vannet, beveget av den milde strømmen. Se på bladet sakte drive mot stranden og hvile i en liten bukt. Mens du fokuserer på stillheten i innsjøen, føl spenningen og stresset i kroppen din begynne å smelte bort. La deg synke ned i en tilstand av dyp avslapning og fred, og vite at du er trygg og sikker i dette øyeblikket. Ta noen flere dype åndedrag, og når du er klar, åpne øynene sakte. Husk at du kan komme tilbake til denne stillheten når som helst du trenger å finne fred og ro i livet ditt.",
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
