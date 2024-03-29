import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class FlashDealsView extends StatelessWidget {
  const FlashDealsView({Key? key}) : super(key: key);

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
            'Flash Deals',
            style: TextStyle(color: HexColor('#505050'), fontSize: 15),
          ),
        ),
        actions: [
          Image.asset(
            'assets/images/noun_cart.png',
            height: 10.h,
            width: 40.w,
          )
        ],
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        //shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 6,
        // physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.w,
          mainAxisSpacing: 10,
          //childAspectRatio: 5 / 2,
          crossAxisSpacing: 10,
          mainAxisExtent: 250.h,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 140,
                      // width: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/images/roll-monkey.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Product Name',
                      style: TextStyle(
                        color: HexColor('#505050'),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Category Name',
                      style: TextStyle(
                        color: HexColor('#EF5A2E'),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '22.99 KWD',
                      style: TextStyle(
                          color: HexColor(
                            '#1A1818',
                          ),
                          fontSize: 10),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: HexColor('#1A181833'), // background
                            // foreground
                          ),
                          onPressed: () {},
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                              color: HexColor('#505050'),
                              fontSize: 18,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/noun_Heart_19653.png',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
          //   Container(
          //   //alignment: Alignment.center,

          //   // decoration: BoxDecoration(
          //   //     color: Colors.amber,
          //   //     borderRadius: BorderRadius.circular(15)),
          // );
        },
      ),
    );
  }
}
