import 'package:flutter/material.dart';
import 'package:velo/features/user/payment/presentation/widgets/payment_view_body.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment Methods')),
      body: const PaymentViewBody(),
    );
  }
}
