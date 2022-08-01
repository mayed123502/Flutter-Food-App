import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    required Widget widget,
  }) : _widget = widget;

  final Widget _widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.only(
            left: 30,
            right: 20,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: Colors.grey.withOpacity(.1),
              ),
            ),
            color: Colors.grey.withOpacity(.1),
          ),
          child: _widget),
    );
  }
}
