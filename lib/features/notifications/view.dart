import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  _NotificationsViewState createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: HexColor('#505050'), // add custom icons also
          ),
        ),
        title: Center(
          child: Text(
            'Notifications                  ',
            style: TextStyle(color: HexColor('#505050'), fontSize: 15),
          ),
        ),
        // actions: [],
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 80.h,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/noun_Bell_1497524.png'),
                      Text(
                        'Lorem Ipsum is simply dummy text of',
                        style: TextStyle(
                          fontSize: 16,
                          color: HexColor('#505050'),
                        ),
                      ),
                      Text(
                        '1 min',
                        style: TextStyle(
                          color: HexColor('#505050'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
