import 'package:flutter/material.dart';
import 'package:four20society/global_widget/custom_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomConcentrateCardWidget extends StatelessWidget {
  const CustomConcentrateCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 211,
    height: 400,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0XFFF9F9F9),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.black87.withOpacity(0.05),
              offset: const Offset(0, 0),
              blurRadius: 10,
              spreadRadius: 5),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 182,
                  height: 100,
                  child: Image.asset('assets/images/product_pic2.png'),
                  // child: Image.network(
                  //   "https://excellis.co.in/420-society-world/public/storage/products/1678453548_50172_edbee168-fa13-41a1-85b6-47c81e322be7.jfif",
                  //   fit: BoxFit.fill,
                  // ),
                ),

              ]),
          Container(
            padding: const EdgeInsets.only(top: 8),
            width: 150,
            child: RatingBarIndicator(
              rating: 4,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              itemCount: 5,
              itemSize: 20.0,
              direction: Axis.horizontal,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const Text(
            "Lorem ispum dopnipe fhg",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Row(
            children: [
              Text(
                "\$ 152",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                "\$ 160",
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const Text(
            "27% THC",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Humboldt Farms",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  minRadius: 20,
                  backgroundColor: Color(0xFF00C8B8),
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
    // return Container(
    //   margin: const EdgeInsets.symmetric(vertical: 4),
    //   padding: const EdgeInsets.all(13),
    //   decoration: BoxDecoration(
    //       color: Colors.grey.shade50, borderRadius: BorderRadius.circular(12)),
    //   child: Column(children: [
    //     Row(
    //       children: [
    //         Container(
    //           width: MediaQuery.of(context).size.width * 0.35,
    //           height: 102,
    //           decoration: BoxDecoration(
    //             color: Colors.transparent,
    //             borderRadius: BorderRadius.circular(12),
    //           ),
    //           child: Image.network(
    //             "https://excellis.co.in/420-society-world/frontend_assets/images/canabi.png",
    //             fit: BoxFit.fill,
    //           ),
    //         ),
    //         const SizedBox(width: 15),
    //         const Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             SizedBox(
    //               width: 180,
    //               child: Text(
    //                 "Organic hemp flower Organic hemp flower ",
    //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //                 overflow: TextOverflow.ellipsis,
    //                 maxLines: 1,
    //               ),
    //             ),
    //             Text(
    //               "\$152",
    //               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    //             ),
    //             Text(
    //               "abc",
    //               style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
    //             ),
    //             Text("xyz",
    //                 style:
    //                 TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
    //           ],
    //         ),
    //       ],
    //     ),
    //     //buttons
    //     const SizedBox(height: 10),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         CustomElevatedButton(
    //           color: const Color(0xFFCCF4F1),
    //           width: MediaQuery.of(context).size.width * 0.4,
    //           textStyle:
    //           const TextStyle(fontSize: 14, color: Color(0xFF00C8B8)),
    //           height: 50,
    //           onTap: () {},
    //           title: 'Add to Cart',
    //         ),
    //         const SizedBox(
    //           width: 20,
    //         ),
    //         CustomElevatedButton(
    //           width: MediaQuery.of(context).size.width * 0.4,
    //
    //           color: const Color(0xFFCCF4F1),
    //           textStyle:
    //           const TextStyle(fontSize: 14, color: Color(0xFFFF1C1C)),
    //
    //           height: 50,
    //           onTap: () {},
    //           title: 'Remove',
    //         ),
    //       ],
    //     ),
    //   ]),
    // );
  }
}
