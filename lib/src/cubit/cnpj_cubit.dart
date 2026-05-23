import 'package:consulta_cnpj/src/cubit/cnpj_state.dart';
import 'package:consulta_cnpj/src/data/models/error_request_model.dart';
import 'package:consulta_cnpj/src/data/repositories/cnpj_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


//Orquestra.
class CnpjCubit extends Cubit<CnpjState>{

  //recuperar os dados do repository;
  final CnpjRepository repository;

  CnpjCubit(this.repository) : super(CnpjInitial());


  //Função que implementa o repository; 
  Future getCnpjRequest(String cnpj) async {

    emit(CnpjLoading());

    var response = await repository.getDataCnpj(cnpj);

    if (response is ErrorRequestModel) {
      emit(CnpjError(response.statusCode, response.titulo));
    } else {
      emit(CnpjLoaded(response));
    }

  }}