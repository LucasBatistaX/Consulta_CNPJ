enum StatusCodeError {

  statusCode429(429, "Limite de consultas excedido, aguarde 1 minuto."),
  statusCode400(400, "CNPJ não encontrado.");


  final int code;
  final String message; 

  const StatusCodeError(this.code, this.message);

  static StatusCodeError? fromCode(int code) {
    for (final status in StatusCodeError.values) {
      if (status.code == code) {
        return status;
      }
    }
    return null;
  }

}