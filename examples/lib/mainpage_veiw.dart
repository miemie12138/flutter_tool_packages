import 'package:base/widgets/my_arrow_pop_menu.dart';
import 'package:examples/homepage_veiw.dart';
import 'package:flutter/material.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigatorManager.init(context);
    return MyScaffold(
      appBar: MyAppBar(leadingType: AppBarBackType.none, title: MyTitle("首页")),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: Text("dd"),
              onPressed: () {
                MyNavigator.push(HomePageView());
              },
            ),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  MyArrowPopMenu.show(
                    context,
                    contentSize: Size(100, 60),
                    builder: (overlay) {
                      return TextButton(
                        child: Text("hah"),
                        onPressed: () {
                          overlay.remove();
                          print("dd");
                        },
                      );
                    },
                  );
                },
                child: Text("Button"),
              );
            }),
          ],
        ),
      ),
    );
  }
}
