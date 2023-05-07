import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/Screens/MusicScreens/whiteMusicPlayer.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:relaxify/services/firestore_services.dart';


class VekstScreen extends StatelessWidget {
  const VekstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
                //fit: BoxFit.fill,
    
                'assets/medback.png'),
          )),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,)),
                    SizedBox(width: 5.w,),
                    Expanded(
                      child: Text(
                        "Topp lydspor for vekst",
                        style: TextStyle(fontSize: 19.sp,letterSpacing: 2, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:10.h),
                Divider(color: Colors.black,),
                StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('audios')
                        .snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return SnackBar(content: Text('Error: ${snapshot.error}'),);
                      }
    
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      }
    
                      return Container(
                          height: 760.h,
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            children: snapshot.data!.docs
                                .map((DocumentSnapshot document) {
                              Map<String, dynamic> data =
                                  document.data() as Map<String, dynamic>;
                              return data['category'] == "Vekst"
                                  ? ListTile(
                                    onTap: (){
                                      // incrementPlayCount(data['title']);
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => WhiteMusicPlayer(audioUrl: data['audioUrl'],title:  data['name'],category: data['category'])));
                                    },
                                      leading: Icon(Icons.music_note_outlined,color: Colors.black),
                                      title: Text(data['name'],style: TextStyle(color: Colors.black),),
                                      // subtitle: Text(
                                      //     "${data['durationInMinutes']} minutes",style: TextStyle(color: Colors.black),),
                                    )
                                  : Container();
                            }).toList(),
                          ));
                    }),
              ],
            ),
          ),
        ),
      );
  }
}