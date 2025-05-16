import 'package:flutter/material.dart';
import 'package:flutter_application_2/burcListesi.dart';
import 'package:palette_generator/palette_generator.dart';
import 'models/burc.dart';

class BurcDetay extends StatefulWidget {
  int gelenIndex;

  BurcDetay(this.gelenIndex, {super.key});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
  
}

class _BurcDetayState extends State<BurcDetay> {
  late Burc secilenBurc;
  late PaletteGenerator paletteGenerator;
  Color baskinRenk = Colors.pink;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    secilenBurc = BurcListesi.burcListesi[widget.gelenIndex];
    baskinRengiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: baskinRenk,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/${secilenBurc.burcBuyukResim}",
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: Text("${secilenBurc.burcAdi} Burcu ve Özelikleri"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetayi,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void baskinRengiBul() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      AssetImage("assets/images/${secilenBurc.burcBuyukResim}"),
    );

    setState(() {
      baskinRenk = paletteGenerator.dominantColor?.color ?? Colors.pink;
    });
  }
}
