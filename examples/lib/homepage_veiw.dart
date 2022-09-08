import 'package:base/funcs.dart';
import 'package:base/widgets/my_refresh_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomePageViewModel(),
      builder: (context, _) {
        return MyScaffold(
          body: BaseRefreshListWidget<HomePageViewModel, int>(
            enablePullUp: false,
            loading: () => Text("我中夹杂看。"),
            itemBuilder: (context, index, value) {
              return Container(
                padding: const EdgeInsets.all(20),
                color: randomAccentColor(),
                child: Text(value.toString()),
              );
            },
          ),
        );
      },
    );
  }
}
