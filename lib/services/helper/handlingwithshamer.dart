// import 'package:ecommerce_app/services/helper/statusrequest.dart';
// import 'package:flutter/material.dart';

// import '../../utils/theme.dart';
// import '../../view/widgets/custom_widget.dart';

// class HandlingWithShamer extends StatelessWidget {
//   final StatusRequest statusRequest;
//   final Widget widget;
//   const HandlingWithShamer(
//       {Key? key, required this.statusRequest, required this.widget})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return statusRequest == StatusRequest.loading
//         ? SizedBox(
//             height: 120,
//             child: ListTile(
//               leading: CustomWidget.circular(height: 64, width: 64),
//               title: Align(
//                 alignment: Alignment.centerLeft,
//                 child: CustomWidget.rectangular(
//                   height: 16,
//                   width: MediaQuery.of(context).size.width * 0.3,
//                 ),
//               ),
//               subtitle: CustomWidget.rectangular(height: 14),
//             ))
//         : statusRequest == StatusRequest.offlinefailure
//             ? SizedBox(
//                 height: 120,
//                 child: Center(
//                     child: Text(
//                   "Offline Failure",
//                   style: TextStyle(
//                     color: Theme.of(context)
//                         .textTheme
//                         .headline1!
//                         .color!
//                         .withOpacity(.5),
//                   ),
//                 )),
//               )
//             : statusRequest == StatusRequest.serverfailure
//                 ? SizedBox(
//                     height: 120,
//                     child: Center(
//                         child: Text(
//                       "Server Failure",
//                       style: TextStyle(
//                         color: Theme.of(context)
//                             .textTheme
//                             .headline1!
//                             .color!
//                             .withOpacity(.5),
//                       ),
//                     )),
//                   )
//                 : statusRequest == StatusRequest.failure
//                     ? SizedBox(
//                         height: 120,
//                         child: Center(
//                             child: Text(
//                           "No Data",
//                           style: TextStyle(
//                             color: Theme.of(context)
//                                 .textTheme
//                                 .headline1!
//                                 .color!
//                                 .withOpacity(.5),
//                           ),
//                         )),
//                       )
//                     : widget;
//   }
// }
