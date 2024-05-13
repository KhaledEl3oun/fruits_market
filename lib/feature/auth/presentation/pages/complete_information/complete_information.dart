import 'package:flutter/material.dart';
import 'package:fruits_market/feature/auth/presentation/pages/complete_information/widget/ComInformationBody.dart';


class ComInformation extends StatefulWidget {
  const ComInformation({super.key});

  @override
  State<ComInformation> createState() => _ComInformationState();
}

class _ComInformationState extends State<ComInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ComInformationBody(),
    );
  }
}