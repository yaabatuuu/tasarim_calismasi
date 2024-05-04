import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasarim_calismasi/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_lacalizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa();

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
var ekranBilgisi = MediaQuery.of(context);
final double ekranYuksekligi = ekranBilgisi.size.height;
final double ekranGenisligi = ekranBilgisi.size.width;
print("Ekran yüksekliği $ekranYuksekligi");
print("Ekran Genisligi $ekranGenisligi");

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(d!.pizzaBaslik,style:  TextStyle(color:yaziRenk1,fontFamily: "Pacifico",fontSize: 22),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(d.pizzaBaslik, style: TextStyle(fontSize: 36,color: anaRenk,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Image.asset("resimler/pizza_resim.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                chip(icerik: d.peynirYazi),
                chip(icerik: d.sucukYazi),
                chip(icerik: d.zeytinYazi),
                chip(icerik: d.biberBaslik),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(d.teslimatSure, style: TextStyle(fontSize: 22,color: yaziRenk2   ,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(d.teslimatBaslik, style: TextStyle(fontSize: 22,color: anaRenk,fontWeight: FontWeight.bold),),
                ),
                Text(d.pizzaAciklama,
                  style: TextStyle(fontSize: 22,color: yaziRenk2),textAlign: TextAlign.center,),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(d.fiyat, style: TextStyle(fontSize: 44,color: anaRenk,fontWeight: FontWeight.bold),),
              SizedBox(width: 200,height: 50,
                child: TextButton(onPressed: (){},
                  child: Text(d.butonYazi,style: TextStyle(color: yaziRenk1,fontSize: 18),),
                  style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class chip extends StatelessWidget {
  String icerik;

  chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      style: TextButton.styleFrom(backgroundColor: anaRenk),
      child: Text(icerik,style: TextStyle(color: yaziRenk1),),
    );
  }
}
