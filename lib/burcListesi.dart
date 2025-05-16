import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/burc.dart';
import 'package:flutter_application_2/utils/constants.dart';

class BurcListesi extends StatelessWidget {
  static late List<Burc> burcListesi;

  const BurcListesi({super.key});

  @override
  Widget build(BuildContext context) {
     burcListesi = veriKaynaginiHazirla();

    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Rehberi"),
      ),
      body: listeyiHazirla(),
    );
  }

  Widget listeyiHazirla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 4,
            child: ListTile(
              onTap: () => Navigator.pushNamed(context, "/burcDetay/$index"),
              leading: Image.asset(

               "assets/images/${burcListesi[index].burcKucukResim}",
                width: 64,
                height: 64,
              ),
              title: Text(
                burcListesi[index].burcAdi,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.pink.shade500),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  burcListesi[index].burcTarihi,
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.black38),
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        );
      },
      itemCount: burcListesi.length,
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> burclar = [];
    for (int i = 0; i < Constants.BURC_ADLARI.length; i++) {
      burclar.add(Burc(
          Constants.BURC_ADLARI[i],
          Constants.BURC_TARIHLERI[i],
          Constants.BURC_GENEL_OZELLIKLERI[i],
          "${Constants.BURC_ADLARI[i].toLowerCase()}${i + 1}.png",
          "${Constants.BURC_ADLARI[i].toLowerCase()}_buyuk${i + 1}.png"));
    }

    return burclar;
  }
}
