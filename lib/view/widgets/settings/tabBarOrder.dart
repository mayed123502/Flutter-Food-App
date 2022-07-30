// import 'package:flutter/material.dart';

// class TabBarOrder extends StatefulWidget {
//   const TabBarOrder({
//     Key? key,
//     required TabController tabController,
//   }) : _tabController = tabController, super(key: key);

//   final TabController _tabController;

//   @override
//   State<TabBarOrder> createState() => _TabBarOrderState();
// }

// class _TabBarOrderState extends State<TabBarOrder> {
//   late TabController _controller;
// int _selectedIndex = 0;
// @override
// void initState() {
//   super.initState();
//   _controller = TabController(length: 5, vsync: ); 
// }
// @override
// void dispose() {
//   _controller.dispose();
//   super.dispose();
// }
//   @override
//   Widget build(BuildContext context) {
//     return TabBar(
//       controller: widget._tabController,
//       tabs: [
//         Tab(text: 'In Progress'),
//         Tab(
//           text: 'Finished',
//         ),
//       ],
//     );
//   }
// }
