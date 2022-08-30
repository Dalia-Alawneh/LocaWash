import 'package:http/http.dart' as http;
import 'dart:convert';
const String PhotosApi = 'https://jsonplaceholder.typicode.com/photos';
class Photos{
  var _data;
  Future<dynamic> getData() async{
    Uri link = Uri.parse(PhotosApi);
    http.Response response = await http.get(link);
    if(response.statusCode == 200){
      _data = response.body;
      // print(_data.length);
      var decodedData = jsonDecode(_data);
      return decodedData;
    }else{
      print('error');
    }
  }
  int getDataCount(){
    return _data.length;
  }
}
