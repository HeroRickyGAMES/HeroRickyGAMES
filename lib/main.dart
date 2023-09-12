import 'package:fluid_kit/fluid_kit.dart';
import 'package:flutter/material.dart';

String DateTimeWorked = '';

void main(){
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark
      ),
      home: const HomePageWeb(),
    ),
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

      int TudoJunto = int.parse("$Day$month$year");

      // Converta as datas em strings
      String data1Str = DateInit.toString();
      String data2Str = TudoJunto.toString();

      // Adicione "20" ao ano para ajustar para o formato "yyyy"
      data1Str = '20$data1Str';
      data2Str = '$data2Str';


      int menos = int.parse(data1Str) - int.parse(data2Str);
      int tempo = YearInit - year;

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeroRickyStudios'),
        backgroundColor: Colors.red[800],
        shadowColor: Colors.black,
        elevation: 10,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Fluid(
                      children: [
                        Fluidable(
                          fluid: 1,
                          minWidth: 200,
                          child: Center(
                            child: Container(
                                padding: const EdgeInsets.all(20),
                                child: Image.network('https://pbs.twimg.com/media/DIXbweqXkAEUcVs.jpg')
                            ),
                          ),
                        ),
                        Fluidable(
                          fluid: 2,
                          minWidth: 450,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(20),
                                        child: const Text(
                                          'Somos a HeroRickyStudios!',
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )
                                    ),
                                    Container(
                                        padding: const EdgeInsets.all(20),
                                        child: const Text(
                                          'Desenvolvemos seu apicativo mesmo se seu negocio for grande ou pequeno!',
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(16),
                            child: const Text(
                              'Desenvolvedor principal: Ricky Souza',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              "\"Sou um desenvolvedor Flutter Full Stack com $DateTimeWorked de experiência no desenvolvimento de aplicativos móveis, web e desktop usando o Flutter. Tenho paixão por tecnologia e estou sempre procurando novas maneiras de usar o Flutter para criar experiências incríveis para os usuários.\"",
                              style: const TextStyle(
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16),
                              child: const Text(
                                'Fazemos',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              child: const Text(
                                "Aplicativos de listas",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              child: const Text(
                                "Aplicativos de entregas",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              child: const Text(
                                "Do tipo utilidade",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              child: const Text(
                                "Com banco de dados.",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(16),
                              child: const Text(
                                "Projetos para Web, Windows e Android",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Column(
                  children: [
                    const Text(
                        'Nossos projetos:',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}