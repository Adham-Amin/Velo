import 'package:flutter/material.dart';
import 'package:velo/features/user/payment/presentation/widgets/add_payment_view_body.dart';

class AddPaymentView extends StatelessWidget {
  const AddPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Card')),
      body: const AddPaymentViewBody(),
    );
  }
}
