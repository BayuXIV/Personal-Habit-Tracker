import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              stretch: true,
              expandedHeight: 100,
              backgroundColor: Colors.blue,
              flexibleSpace: FlexibleSpaceBar(
                title: Text("This is the title"),
                background: FlutterLogo(),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  ...List.generate(20, (index) => Text("Wasdwdsd")),
                ],
              ),
            )
            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     (BuildContext context, int index) {
            //       return Container(
            //         child: Text("Text"),
            //       );
            //     },
            //     childCount: 20,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
