import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget{
  @override
  build(context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          leading: Icon(Icons.home),
          title: Text('Aplikasi PertamaKu'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(children: [Icon(Icons.archive), Text("Artikel Terbaru")]),

                SizedBox(height: 10),

                // GAMBAR DI TENGAH
                Center(
                  child: Card(
                    child: Image.network(
                      'https://picsum.photos/200/300',
                      width: 200,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "Judul Artikel",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 5),

                Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Keindahan Pemandangan Alam Pegunungan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "Deskripsi Artikel",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 5),

                Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Pemandangan alam pegunungan merupakan salah satu keajaiban alam "
                      "yang memberikan ketenangan dan kesejukan bagi siapa saja yang "
                      "menikmatinya. Hamparan pepohonan hijau yang luas, udara yang "
                      "segar, serta suasana yang jauh dari kebisingan kota menjadikan "
                      "pegunungan tempat yang ideal untuk melepas penat. "
                      "Di pagi hari, kabut tipis menyelimuti lereng gunung dan lembah, "
                      "sementara cahaya matahari terbit perlahan menyinari puncak-puncaknya. "
                      "Suara burung berkicau dan gemericik air sungai kecil menambah "
                      "kesan alami yang menenangkan. Saat sore tiba, langit berubah "
                      "menjadi jingga kemerahan yang menciptakan pemandangan spektakuler. "
                      "Keindahan ini menjadikan pegunungan simbol ketenangan dan "
                      "kedamaian yang selalu dirindukan banyak orang.",
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  children: [
                    Text(
                      'Komentar',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )
                    )
                  ]
                ),

                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [

                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Andi'),
                            Text('Deskripsinya sangat detail dan terasa nyata.'),
                          ]
                        )
                      )
                    ),

                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Siti'),
                            Text('Saya suka bagian matahari terbitnya.'),
                          ]
                        )
                      )
                    ),

                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Budi'),
                            Text('Pegunungan memang tempat terbaik untuk refreshing.'),
                          ]
                        )
                      )
                    ),

                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Rina'),
                            Text('Semoga alamnya tetap terjaga keindahannya.'),
                          ]
                        )
                      )
                    ),

                  ]
                )
              ],
            ),
          ),
        ),
      ),
    ); 
  }
}