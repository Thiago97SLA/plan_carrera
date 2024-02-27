import 'package:plancarrera/core/api/api.dart';
import 'package:plancarrera/core/api/endpoint_constats.dart';
import 'package:plancarrera/feature/home/models/user_model.dart';
import 'package:plancarrera/feature/home/service/home_impl_service.dart';

class HomeService extends ImplHomeService {
  HomeService(this.apiService);

  final APIService apiService;
  @override
  Future<UserModel> getUser() async {
    final reponse = await apiService.getEndpointData(
      requestAuthorization: RequestAuthorization.none,
      endpoint: EndpointConstants.getUser,
      method: RequestMethod.get,
      urlParams: ['4312'],
      fromJson: (json) => UserModel.fromJson(json),
    );
    return reponse;
  }
}
