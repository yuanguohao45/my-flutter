import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  List<Map> imgList = [
    {
      "url":
          'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1455948324,715006003&fm=26&gp=0.jpg'
    },
    {
      "url":
          'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3639552975,3233600554&fm=26&gp=0.jpg'
    },
    {
      "url":
          'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2643000149,2625873554&fm=26&gp=0.jpg'
    },
    {
      "url":
          'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2641419235,847949260&fm=26&gp=0.jpg'
    },
    {
      "url":
          'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1502880402,2967030190&fm=26&gp=0.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('轮播图'),
        ),
        body: Column(
          children: <Widget>[
            Container(
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  // child: new Swiper(
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return new Image.network(
                  //       imgList[index]["url"],
                  //       fit: BoxFit.fill,
                  //     );
                  //   },
                  //   itemCount: imgList.length,
                  //   // pagination: new SwiperPagination(),
                  //   // control: new SwiperControl(),
                  //   // autoplay: true,
                  // ),
                  child: new Swiper(
                      layout: SwiperLayout.CUSTOM,
                      customLayoutOption:
                          new CustomLayoutOption(startIndex: -1, stateCount: 3)
                              .addRotate(
                                  [-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                        new Offset(-370.0, -40.0),
                        new Offset(0.0, 0.0),
                        new Offset(370.0, -40.0)
                      ]),
                      itemWidth: 300.0,
                      itemHeight: 200.0,
                      itemBuilder: (context, index) {
                        return new Center(
                          child: new Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image:
                                      new NetworkImage(imgList[index]["url"]),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        );
                      },
                      itemCount: imgList.length),
                )),
            SizedBox(
              height: 20.0,
            ),
            Container(
                width: double.infinity,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: new Swiper(
                      layout: SwiperLayout.TINDER,
                      customLayoutOption:
                          new CustomLayoutOption(startIndex: -1, stateCount: 3)
                              .addRotate(
                                  [-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                        new Offset(-370.0, -40.0),
                        new Offset(0.0, 0.0),
                        new Offset(370.0, -40.0)
                      ]),
                      itemWidth: 300.0,
                      itemHeight: 200.0,
                      itemBuilder: (context, index) {
                        return new Center(
                          child: new Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image:
                                      new NetworkImage(imgList[index]["url"]),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        );
                      },
                      itemCount: imgList.length),
                )),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[Text('我是一个文本')],
            )
          ],
        ));
  }
}
