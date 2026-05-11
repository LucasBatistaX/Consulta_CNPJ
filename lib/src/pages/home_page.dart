import 'package:consulta_cnpj/src/utils/app_colors.dart';
import 'package:consulta_cnpj/src/widgets/footer.dart';
import 'package:consulta_cnpj/src/widgets/forms.dart';
import 'package:consulta_cnpj/src/widgets/header.dart';
import 'package:consulta_cnpj/src/widgets/response_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              Header(),
              Forms(),
              ResponseCard(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

