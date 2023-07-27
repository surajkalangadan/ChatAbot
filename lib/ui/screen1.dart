import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/chatbloc/chatbloc_bloc.dart';
import '../repositary/modelclass/Chatabot.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}
late Chatabot anime;
class _screen1State extends State<screen1> {
  @override
  void initState() {
    BlocProvider.of<ChatblocBloc>(context)
        .add(FetchChat());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: Container(height: 40.h,width: 40.w,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://satincorp.com/wp-content/uploads/2021/01/ai-robot-using-computer-chat-with-customer-scaled-1.jpg"),
              radius: 20.r,

            ),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Text(
            "Chat A Robot",
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "caros",
                color: Colors.black87),
          ),
        ),
      ),
      body: ListView(
        children: [],
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        builder: (BuildContext context) {
          return Container(
              height: 50.h,
              width: 375.w,
              child: Row(
                children: [
                  SizedBox(
                    height: 40.h,
                    width: 300.w,
                    child: Padding(
                      padding: EdgeInsets.only(left: 25.w),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "write your message",
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF65656B),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  )
                ],
              ));
        },
      ),
    );
  }
}
