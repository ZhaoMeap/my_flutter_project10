import 'package:flutter/material.dart';
import 'dart:math';

class Test0 extends StatelessWidget {
  List<int> ans = [] ;

  @override
  Widget build(BuildContext context) {
    PageController pageController = new PageController(initialPage: 0) ;
    int pageChanged = 0;

    final appBar = AppBar(
      leading: Icon(Icons.favorite_outline),
      title: Text('心理測驗'),
      centerTitle: true,
      actions: [
        IconButton(onPressed: (){
          print(ans) ;
          pageController.animateToPage(--pageChanged, duration: Duration(milliseconds: 150), curve: Curves.bounceInOut);
        }, icon: Icon(Icons.arrow_back_ios)),
        IconButton(onPressed: (){
          print(ans) ;
          pageController.animateToPage(++pageChanged, duration: Duration(milliseconds: 150), curve: Curves.bounceInOut);
        }, icon: Icon(Icons.arrow_forward_ios)),
      ],
    );

    final widget = PageView(
        pageSnapping: true,
        controller: pageController,
        onPageChanged: (index){
            pageChanged = index ;
        },
        children: [
          Container(
              color: Colors.redAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('1.你每天喝牛奶嗎？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  ),
                ],
              )
          ),
          Container(
              color: Colors.lightGreenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('2.你養過貓？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.lightBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('3.你現在有沒有正職工作？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('4.你有好的運動細胞嗎？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('5.你的身材偏肉嗎？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.deepPurpleAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('6.你認為看電影一定要吃零食嗎？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.orangeAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('7.你覺得地球上曾出現過火星人嗎？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.cyan,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('8.你曾有過很多戀情？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.pink,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('9.你很少看漫畫書？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.greenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('10.你去KTV會佔據麥克風不放？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.deepOrangeAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('11.喜歡吃漢堡？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('12.煮菜時會自創不同的菜餚？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('13.你很會畫畫？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.limeAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('14.你喜歡格子圖案？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),
          Container(
              color: Colors.purple,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('15.你想去美國留學？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  )
                ],
              )
          ),Container(
              color: Colors.white24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('16.曾經參加過某明星的後援會？',style: TextStyle(fontSize: 30)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(onPressed: (){ ans.add(0) ; }, icon: Icon(Icons.done_outlined), label: Text("是")),
                      RaisedButton.icon(onPressed: (){ ans.add(1) ; }, icon: Icon(Icons.close_outlined), label: Text('否')),
                    ],
                  ),
                  RaisedButton.icon(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => resultPage(ans)),);
                    },
                    label: Text("上傳"),
                    icon: Icon(Icons.star),
                  ),
                ],
              )
          ),
        ],
      );

    final appHomePage = Scaffold(
      appBar: appBar,
      body: widget,
    );

    return appHomePage;
  }

}

class resultPage extends StatelessWidget {
  resultPage(List<int> ans) { this.ans ; }
  List<int> ans = [] ;
  var eng = ["A","B","C","D","E","F","G","H"] ;
  var result = ["測出來答案是A型的人，你的感官可能比較敏銳，視覺、味覺、聽覺或是嗅覺常常比旁人更為靈敏。因為你能感受到最為單純、直白的感官感受，表現在愛情或是朋友關係中，往往讓人覺得你是一個體貼、細緻的人。你的個性單純，如果環境允許，就很容易成為樂天派，對周圍事物充滿興趣和好奇心，熱情、合群而且善於表達，也因此人緣總是很不錯。",
      "B型人擁有自由的思想與無所不在的創意。你顯得要比同輩人成熟、穩重許多，你擅長思考，理智是你為人處世的首要原則。在周圍人眼中，你可能並不熱情，卻總是很有禮貌。你會適時地堅持自己的想法，不容易被外界環境左右，而且經常能運用創造性思維幫朋友解決各種問題。你沒有心機，也缺少些自我保護的能力，你的表面看來很容易相處，但想要走進你的內心世界其實並不容易。你需要人家的鼓勵、包容、寵愛和肯定，其實你也常常自我反省，希望自己能做到80%的完美，但你似乎沒有那種毅力，所以你有時的情緒比較變化無常，很有可能是被這些因素困擾。",
      "你是積極努力的認真派，你對自己的要求很高，但是一旦遇到和你脾氣相似的人，你們就會有惺惺相惜的感覺，因而相談甚歡。你雖然表面看起來有些嚴肅，但是其實你單純、善良，想法總是積極正面。你有很強的自我調節能力，所以即使遇到困難，也能很好的處理。你常常給人的印象是充滿人情味和極具魅力，你的感受性很好，往往能夠明白一個人或是一件事中所蘊藏的深層含義。因此，你善解人意、對人對生活都滿含熱情，在自我表達時很少會掩飾，是好友之間理想的傾訴對象。",
      "你是一個性格善良，但是固執而又堅持的人，喜歡天馬行空的與別人聊天，但不會主動找對方。你很有原則也很被動，總是習慣待在自己的世界裡。你在朋友眼裡是比較難深交的人，感覺你和人交往總是點到為止。",
      "選擇E型的人單純沒有心機，喜歡為自己的朋友、親人付出，雖然表面上看起來漫不經心，實際上做事卻很有條理。一旦你想要做的事，就會做得很快、狠、準，只是你常常懶得做。你很喜歡說話、與別人交流意見，尤其是面對你自己有所瞭解的事。你的個性雖然比較好強，但是你的好強並不會給他人帶來困擾。",
      "喜歡觀察所有事物的你，總是靜靜地看著周圍的一切。你的心思縝密、眼光獨到，能看出別人看不出的細節，你做事很有計劃，這讓朋友和你相處起來十分安心，因為你不僅能把自己處理得很穩妥，空閒時還能幫朋友做一些小事。你能掌握別人的想法，你很理智和現實，不喜歡天馬行空的亂想，覺得那樣是沒有意義的行為。",
      "測出來答案是G型的人，你喜歡享受眼下的快樂而非為長遠的未來做打算，你沒有什麼想象力，每天關心的只是今天要做什麼、怎麼做。你的生活很簡單，正常吃、喝、睡，覺得悶時就找人聊點無關緊要的事情，打發打發時間。你對生活中的快樂與煩惱看得很開，是個很容易滿足的人。",
      "你的性情豪爽、內心耿直，在你心裡沒有過不去的事。你不自卑、不自負也不自私，人生對你而言跟玩似的，困難和不安到你那裡總是很快就會消失，因此朋友與你相處也覺得很舒服。看起來對什麼都不在乎的你，會把這種無所謂帶給朋友，讓對方也能很快走出低沉的情緒。你可能對某些人或事接觸不多，卻總能直搗黃龍、一語中的，找到事情的關鍵。因此，在你的成長過程中，你可能是那種最讓人嫉妒的類型——悠然自得卻成績優異，糊里糊塗卻好運連連。"];
  @override
  Widget build(BuildContext context) {
    int index = Random().nextInt(8) ;
    final appBar = AppBar(
      title: Text("你是${eng[index]}型人！"),
      centerTitle: true,
    );

    final widget = Center(
      child: Text(printResult(index), style: TextStyle(fontSize: 20),),
    );
    final appHomePage = Scaffold(
      appBar: appBar,
      body: widget,
    );

    return appHomePage;
  }

  String printResult(int index) {
    switch(index) {
      case 0: return(result[0]);
      case 1: return(result[1]);
      case 2: return(result[2]);
      case 3: return(result[3]);
      case 4: return(result[4]);
      case 5: return(result[5]);
      case 6: return(result[6]);
      case 7: return(result[7]);
    }
    return "";
  }

}