import 'package:flutter/material.dart';
import 'package:fruitapp/FruitDataModel.dart';
import 'package:fruitapp/FruitDetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static List<String> fruitname = [
    'Apple',
    'Banana',
    'Mango',
    'Orange',
    'pineapple'
  ];

  static List url = [
    'https://w7.pngwing.com/pngs/399/447/png-transparent-red-apple-illustration-juice-apple-fruit-graphy-red-apple-natural-foods-food-leaf-thumbnail.png',
    'https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-1200-80.jpg',
    'https://w7.pngwing.com/pngs/790/811/png-transparent-sliced-mangoe-juice-mango-alphonso-fruit-flavor-mango-food-dried-fruit-tropical-fruit-thumbnail.png',
    'https://5.imimg.com/data5/VN/YP/MY-33296037/orange-600x600-500x500.jpg',
    'https://5.imimg.com/data5/GJ/MD/MY-35442270/fresh-pineapple-500x500.jpg'
  ];

  static List desc = [
    'Apple เป็นผลไม้ที่มีลักษณะเป็นลูกกลมหน้าและสีสว่าง มักมีเนื้อที่กรอบและรสชาติหวานอ่อน มีคุณค่าทางโภชนาการสูง เสริมสร้างร่างกายด้วยวิตามิน C และแร่ธาตุต่างๆ เช่นแคลเซียมและโฟล์เฟต ช่วยป้องกันโรคหัวใจและโรคหลอดเลือด มีใยอาหารส่งเสริมกระเพาะอาหารและระบบทางเดินอาหาร นอกจากนี้ยังเป็นวัตถุดิบที่นิยมใช้ในอาหารหลากหลายแบบ เช่น ซอสและขนมปัง มีกลิ่นหอมและรสชาติเยี่ยมในการใช้ทำน้ำผลไม้และขนมหวานต่างๆ ที่มีรสชาติหวานอ่อนๆ และกลิ่นหอมของแอปเปิ้ล',
    'Banana ผลไม้กล้วยเป็นผลไม้ที่มีลักษณะรูปร่างยาวและโค้ง มีเปลือกที่เรียบแต่เป็นม้วนอย่างไม่เป็นจุดๆ มักมีสีเหลืองถึงสีน้ำตาลเข้มขึ้นอยู่กับพันธุ์ มีเนื้อที่อ่อนนุ่ม และรสชาติหวานเปรี้ยวที่สดชื่น มีสารอาหารหลายชนิด เช่น แคลเซียม และวิตามินเช่น วิตามินซีและวิตาม',
    'Mango เป็นผลไม้ที่มีลักษณะรูปร่างกลมหรือรีเตอร์และมีขนาดใหญ่ถึงกลางค่อนข้าง มีเปลือกบางที่สีเขียวหรือสีเหลืองเข้ม มักมีเนื้อที่เนียนนุ่ม และมีรสชาติหวานเปรี้ยวอร่อย มะม่วงมีคุณค่าทางโภชนาการสูง โดยมีวิตามิน C และเสริมด้วยวิตามิน A และวิตามิน E มีสารต้านอนุมูลอิสระที่ช่วยปกป้องร่างกายจากอันตรายของอนุมูลอิสระ นอกจากนี้ยังมีเส้นใยอาหารที่ส่งเสริมกระบวนการย่อยอาหารและการขับถ่าย มะม่วงยังเป็นส่วนผสมที่นิยมใช้ในการทำอาหารและขนมหวานต่าง ๆ และน้ำผลไม้มะม่วงยังเป็นเครื่องดื่มที่ชื่นชอบที่มีรสชาติหวานเปรี้ยวและหอมมัน',
    'Orange เป็นผลไม้ที่มีลักษณะรูปทรงกลมหรือรีเตอร์ มีเปลือกหนาที่สีส้มหรือสีเหลือง มักมีเนื้อที่สีส้มเข้มและนุ่ม และมีรสชาติหวานเปรี้ยวอร่อย ส้มเป็นแหล่งของวิตามิน C ที่สำคัญซึ่งช่วยกระตุ้นระบบภูมิคุ้มกันของร่างกาย มีสารต้านอนุมูลอิสระที่ช่วยปกป้องร่างกายจากอันตรายของอนุมูลอิสระ และมีใยอาหารที่ส่งเสริมกระบวนการย่อยอาหารและการขับถ่าย นอกจากนี้ ส้มยังเป็นส่วนผสมที่นิยมใช้ในการทำน้ำผลไม้และขนมหวานต่าง ๆ และยังเป็นส่วนผสมหลักในการทำเครื่องดื่มและอาหารในช่วงฤดูร้อน',
    'Pine Apple เป็นผลไม้ที่มีลักษณะรูปทรงกระบอกและมีใบไม้ยาวแหลม มีเปลือกหนาที่มีแถบสีน้ำตาลเข้ม ซึ่งเป็นส่วนที่ไม่สามารถรับประทานได้ มีเนื้อที่สีเหลืองสดใสและมีรสชาติหวานกรอบอร่อย สัปปะรดเป็นแหล่งของวิตามิน C ที่สำคัญซึ่งช่วยกระตุ้นระบบภูมิคุ้มกันของร่างกายและมีสารต้านอนุมูลอิสระที่ช่วยปกป้องร่างกายจากอันตรายของอนุมูลอิสระ นอกจากนี้ยังเป็นแหล่งของเอนไซม์บรรจุออกซิเจน ซึ่งช่วยกระตุ้นกระบวนการย่อยอาหารในร่างกาย สัปปะรดยังเป็นส่วนผสมที่นิยมใช้ในการทำน้ำผลไม้ และน้ำปั่นเย็นในช่วงฤดูร้อน'
  ];

  final List<FruitDataModel> Fruitdata = List.generate(
      fruitname.length,
      (index) => FruitDataModel(
          '${fruitname[index]}', '${url[index]}', '${desc[index]} '));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pass Data from ListView to next Screen'),
        ),
        body: ListView.builder(
            itemCount: Fruitdata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(Fruitdata[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Fruitdata[index].ImageUrl),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FruitDetail(
                              fruitDataModel: Fruitdata[index],
                            )));
                  },
                ),
              );
            }));
  }
}
