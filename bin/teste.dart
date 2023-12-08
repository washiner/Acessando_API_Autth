import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();

  dio.options.headers['Authorization'] = 'Bearer live_5a1e44d835446127223cde391a2e38';

  try {
    final response = await dio.get('https://api.api-futebol.com.br/v1/campeonatos/2/fases/32');

    //throw Exception();
    
    print(response.data);
  } catch (error) {
   
    print('Erro na API: $error');
  }
}

