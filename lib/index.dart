import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_responsive/reponsive.dart';
import 'package:get/get.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // direction: Axis.vertical,
          // alignment: WrapAlignment.center,
          // runAlignment: WrapAlignment.center,
          // crossAxisAlignment: WrapCrossAlignment.center,
          // spacing: 16.0,
          children: [
            Center(
              child: Text(
                "Stablecoin DeFi Ecosystem on BSC",
                style: Get.textTheme.headline4,
              ),
            ),
            Center(
              child: Text(
                  "Swap your stablecoins at the best rate. Stake your stablecoins to earn high yield."),
            ),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              spacing: 8.0,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Launch app"),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Buy dopple"),
                    )),
              ],
            ),
            Container(
              color: Colors.blueGrey,
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ResponsiveWidget(
                    classes: [ResponsiveSize.sm12, ResponsiveSize.md12, ResponsiveSize.lg4, ResponsiveSize.xl4, ResponsiveSize.xxl4],
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("Total Value Locked"),
                                Text(
                                  "\$112M",
                                  style: Get.textTheme.headline4,
                                )
                              ],
                            ),
                            Icon(Icons.money),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ResponsiveWidget(
                    classes: [ResponsiveSize.sm12, ResponsiveSize.md12, ResponsiveSize.lg4, ResponsiveSize.xl4, ResponsiveSize.xxl4],
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("Total Trading Volume"),
                                Text(
                                  "\$162M",
                                  style: Get.textTheme.headline4,
                                )
                              ],
                            ),
                            Icon(Icons.confirmation_number_outlined),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ResponsiveWidget(
                    classes: [ResponsiveSize.sm12, ResponsiveSize.md12, ResponsiveSize.lg4, ResponsiveSize.xl4, ResponsiveSize.xxl4],
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("AAA Market Cap"),
                                Text(
                                  "\$45M",
                                  style: Get.textTheme.headline4,
                                )
                              ],
                            ),
                            Icon(Icons.gamepad),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blueGrey,
                child: Container(
                  height: 120,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blueGrey,
                child: Container(
                  height: 120,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blueGrey,
                child: Container(
                  height: 120,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blueGrey,
                child: Container(
                  height: 120,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blueGrey,
                child: Container(
                  height: 120,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blueGrey,
                child: Container(
                  height: 120,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
