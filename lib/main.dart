import 'package:consulta_cnpj/src/cubit/cnpj_cubit.dart';
import 'package:consulta_cnpj/src/data/repositories/cnpj_repository.dart';
import 'package:consulta_cnpj/src/pages/home_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CnpjCubit(
        CnpjRepository(Dio())),
        child: MaterialApp(
          title: 'Consulta CNPJ',
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        ),
    );
  }
}
