import 'package:flutter/material.dart';
import 'package:four20society/global_widget/custom_button.dart';

import 'custom_bordered_button.dart';
import 'custom_unbordered_button.dart';

class CustomProductCardWidget extends StatelessWidget {
  const CustomProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
          color: Colors.grey.shade50, borderRadius: BorderRadius.circular(12)),
      child: Column(children: [
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              height: 102,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.network(
                "https://excellis.co.in/420-society-world/frontend_assets/images/canabi.png",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 180,
                  child: Text(
                    "Organic hemp flower Organic hemp flower ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Text(
                  "\$152",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "abc",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text("xyz",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              ],
            ),
          ],
        ),
        //buttons
        const SizedBox(height: 10),

        Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     maximumSize:  const Size(double .infinity, double.infinity),
            //     shape: RoundedRectangleBorder(
            //
            //         borderRadius: BorderRadius.circular(4)),
            //     backgroundColor: const Color(0XFF00C8B8),
            //   ),
            //   onPressed: () {},
            //   child: const Text(
            //     "Add To cart",
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 18,
            //     ),
            //   ),
            // ),

           //  CustomElevatedButton(onTap: () {  }, title: 'Add To Cart',
           //  ),
           // const  Padding(padding:  EdgeInsets.all(20)),
           //  CustomElevatedButton(onTap: () {  }, title: 'Add To Cart',),

            CustomUnBorderedElevatedButton(onTap: () {  }, title: 'Add To Cart',),
            CustomBorderedElevatedButton(onTap: () {  }, title: 'Remove',

            ),

            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     shape: RoundedRectangleBorder(
            //       //to set border radius to button
            //         borderRadius: BorderRadius.circular(4)),
            //     backgroundColor: const Color(0XFF00C8B8),
            //   ),
            //   onPressed: () {},
            //   child: const Text(
            //     "Remove",
            //     style: TextStyle(
            //       color: Colors.red,
            //       fontSize: 16,
            //     ),
            //   ),
            // ),
          ],
        ),
      ]),
    );
  }
}
