import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Prfile extends StatelessWidget {
  const Prfile({Key? key}) : super(key: key);

  @override
   Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    double containerHeight = mediaQuery.height - 200;
    double containerWidth = mediaQuery.width - 10;
    double imagePosition = containerHeight - 80 + (mediaQuery.height - containerHeight) / 2;
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('Assetes/Images/b.png'),
          fit: BoxFit.cover,

          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            color: Colors.transparent,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    padding: const EdgeInsets.only(left: 28,right: 28),
                    height: containerHeight,
                    width: containerWidth,
                    decoration: BoxDecoration(color: Colors.amber[300] ,
                    borderRadius: BorderRadius.circular(55),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(child: const CircleAvatar(
                          backgroundImage: AssetImage("Assetes/Images/3.jpg"),
                          maxRadius: 80,
                          ),
                        bottom: imagePosition,
                        ),
                       
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                               SizedBox(height: 10,),
                               const Text(
                          'Riyan Dwi Yulian P, M.Kom',
                          style: TextStyle(fontSize: 25, fontFamily: "Pacifico"),
                        ),
                        const Text(
                          "Banjarnegara, Indonesia",
                          style: TextStyle(fontSize: 18.0, color: Colors.black45, letterSpacing: 2.0, fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Lecturer at Institut Teknologi dan Bisnis Muhammadiyah Purbalingga",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15.0, color: Colors.black45, letterSpacing: 2.0, fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(height: 15),
                        const Card(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "SKILLS",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 2.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        ...addSkills('Flutter', 0.6, Colors.purple),
                        ...addSkills('Python', 0.8, Colors.red),
                        ...addSkills('PHP', 0.7, Colors.blueGrey),
                        ...addSkills('C++', 0.5, Colors.deepOrangeAccent),
                        ...addSkills('Java', 0.4, Colors.indigo),
                        SizedBox(height: 20,),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                  )
              ],
            ),
          ) ,
        ),
      )
    );
   }
}


Container socialHandle(Image image, Color color) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
    child: image,
  );
}

List<Widget> addSkills(String name, double value, Color color) {
  Widget text = Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.black54,
          letterSpacing: 2.0,
          fontWeight: FontWeight.w300,
        ),
      ));
  Widget progress = Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        child: LinearProgressIndicator(value: value, color: color),
      ));

  return [text, progress];
}
