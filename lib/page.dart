import 'package:cloud_app/homeview.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Pagedate extends StatefulWidget {
  @override
  _PagedateState createState() => _PagedateState();
}

class _PagedateState extends State<Pagedate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('News'),
        ),
        body: ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20)),
                height: 330,
                width: double.infinity,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        String url = await articles[index].articlUrl;
                        launch(url);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  articles[index].imageUrl,
                                ),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(20)),
                        height: 200,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              articles[index].title,
                              textAlign: TextAlign.right,
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 14),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                              height: 80,
                              width: double.infinity,
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(
                                  articles[index].description,
                                  textAlign: TextAlign.right,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              );
            })

        /*ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(3.0),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20)),
              height: 330,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              articles[1].imageUrl,
                            ),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                    height: 200,
                    width: double.infinity,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    articles[1].title,
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 80,
                    width: double.infinity,
                    child: Text(
                      articles[1].description,
                      textAlign: TextAlign.right,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),*/
        );
  }
}
