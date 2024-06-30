import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 final  FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    analytics.setAnalyticsCollectionEnabled(true);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                ElevatedButton(
                    onPressed: ()async{
                      await analytics.logEvent(
                          name: "rojkharido_tracking",
                          parameters: {
                                "page_name":"page1",
                            "page_index":1
                          });
                    },
                    child: Text("Page 1")
                ),

                SizedBox(height: 16,),

                ElevatedButton(
                    onPressed: ()async{
                      await analytics.logEvent(
                          name: "rojkharido_tracking",
                          parameters: {
                            "page_name":"page2",
                            "page_index":2
                          });
                    },
                    child: Text("Page 2")
                ),

                SizedBox(height: 16,),

                ElevatedButton(
                    onPressed: ()async{
                      await analytics.logEvent(
                          name: "rojkharido_tracking",
                          parameters: {
                            "page_name":"page3",
                            "page_index":3
                          });
                    },
                    child: Text("Page 3")
                ),

                SizedBox(height: 16,),

              ],
            ),
          ),
        )
    );
  }
}
