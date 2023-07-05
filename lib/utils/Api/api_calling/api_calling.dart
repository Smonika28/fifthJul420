import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:four20society/constants/apis_path/api_config_string.dart';
import 'package:four20society/feature/dashboard/model/dashboard_model.dart';
import 'package:four20society/constants/apis_path/api_config_string.dart';
import 'package:four20society/feature/auth/login/model/login_model.dart';
import 'package:four20society/utils/Api/api_provider.dart';
import '../../local_storage/local_storage.dart';

class ApiCallingClass {
  final Dio _dio = Dio();
  LocalStorageService localStorageService = LocalStorageService();

  Future<bool> toggleService(
      {required String serviceID, required bool Status}) async {
    String token = await localStorageService
        .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    Map<String, dynamic> body = {"service_id": serviceID, "status": 1};
    final response = await _dio.post(ApiEndPoints.dashboard,
        data: body,
        options: Options(headers: {
          "Authorization": "Bearer $token",
        }));
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }


  Future<DashboardModel> fetchFieldByServiceId(
      {required String userID}) async {
    String token = await localStorageService
        .getFromDisk(LocalStorageService.ACCESS_TOKEN_KEY) ??
        "";
    Map<String, dynamic> data = {"user_id": userID};
    final response = await _dio.post(ApiEndPoints.dashboard,
        data: data,
        options: Options(headers: {
          "Authorization": "Bearer $token",
        }));
    if (response.statusCode == 200) {
      print("field data--> ${response.data}");
      return DashboardModel.fromJson(jsonDecode(response.data));
    } else {
      return DashboardModel();
    }
  }
}
