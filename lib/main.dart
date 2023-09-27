import 'package:fluid_kit/fluid_kit.dart';
import 'package:flutter/material.dart';
import 'package:seo/head_tag.dart';
import 'dart:html' as html;

import 'package:seo/html/seo_controller.dart';
import 'package:seo/html/seo_widget.dart';
import 'package:seo/html/tree/widget_tree.dart';

String DateTimeWorked = '';

void main(){
  runApp(
      const HomePageWeb(),
  );
}
class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    VerificarQuantosAnosEstouDesenvolvendo(){
      int DateInit = 190922;
      int YearInit = 2022;
      int Day = DateTime.now().day;
      int month = DateTime.now().month;
      int year = DateTime.now().year;

      int TudoJunto = int.parse("$Day${0}$month$year");

      // Converta as datas em strings
      String data1Str = DateInit.toString();
      String data2Str = TudoJunto.toString();

      // Adicione "20" ao ano para ajustar para o formato "yyyy"
      data1Str = '20$data1Str';
      data2Str = data2Str;


      int tempo = year - YearInit;

      if(tempo <= -1){
        setState(() {
          DateTimeWorked = '11 meses';
        });
      }else{
        if(tempo == 1){
          setState(() {
            DateTimeWorked = '$tempo ano';
          });
        }else{
          if(tempo > 2){
            setState(() {
              DateTimeWorked = '$tempo anos';
            });
          }
        }
      }
    }
    VerificarQuantosAnosEstouDesenvolvendo();

    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child: MaterialApp(
        theme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Seo.image(
              src: 'http://www.example.com/image.jpg',
                alt: 'LogoMarca',
                child: Image.asset(
                    'assets/images/hrslogo.jpg',
                  scale: 30,
                ),
              ),
            ),
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Seo.head(
                    tags: [
                      const MetaTag(name: 'title', content: 'H Technology'),
                      const LinkTag(rel: 'canonical', href: 'http://www.example.com'),
                    ],
                    child: const Text(
                      'H Technology',
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.red[800],
            shadowColor: Colors.black,
            elevation: 10,
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Fluid(
                    children: [
                      Fluidable(
                        fluid: 1,
                        minWidth: 200,
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20),
                                child:
                                Seo.text(
                                    text: 'Somos a H Technology!',
                                    child: const Text(
                                      'Somos a H Technology!',
                                      style: TextStyle(
                                          fontSize: 24
                                      ),
                                    ),
                                )
                              ),
                              Container(
                                padding: const EdgeInsets.all(20),
                                child: Seo.text(
                                  text: 'Desenvolvemos seu aplicativo!',
                                  child: const Text(
                                    'Desenvolvemos seu aplicativo!',
                                    style: TextStyle(
                                        fontSize: 24
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Fluidable(
                        fluid: 2,
                        minWidth: 450,
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/hrslogo.jpg",
                                  scale: 2,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(22),
                    color: Colors.black,
                    child: Center(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  child: TextButton(onPressed: (){
                                    const String url = 'https://www.instagram.com/herorickystudios/';

                                    html.window.open(url, '_blank');
                                  }, child: Image.asset(
                                    'assets/images/logos/instagram.png',
                                    scale: 15,
                                  )
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  child: TextButton(onPressed: (){
                                    const String url = 'https://wa.me/5511942980456';

                                    html.window.open(url, '_blank');
                                  }, child: Image.asset(
                                    'assets/images/logos/whatsapp.png',
                                    scale: 15,
                                  )
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  child: TextButton(onPressed: (){
                                    const String url = 'https://youtube.com/@herorickygames';

                                    html.window.open(url, '_blank');
                                  }, child: Image.asset(
                                    'assets/images/logos/youtube.png',
                                    scale: 15,
                                  )
                                  ),
                                ),
                              ],
                            ),
                            const Text('Copyright© H Technology - 2023'),
                          ],
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              const String url = 'https://wa.me/5511942980456';

              html.window.open(url, '_blank');
            },
            backgroundColor: Colors.transparent,
            child: Image.asset(
              'assets/images/logos/whatsapp green.png',
              scale: 1,
            ),
          ),
        ),
      ),
    );
  }
}