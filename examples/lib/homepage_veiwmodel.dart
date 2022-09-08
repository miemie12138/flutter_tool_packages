import 'package:base/widgets/my_refresh_list_widget.dart';

class HomePageViewModel extends BaseRefreshListViewModel {
  @override
  loadData([bool refres = false]) {
    setupData(refresh: refres, value: [7]);
  }
}
