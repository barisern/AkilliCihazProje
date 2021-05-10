package com.proje.Ekran;

public class Ekran implements IEkran {
    @Override
    public void mesajGoruntule(String mesaj) {
        System.out.println(mesaj);
    }

    public void hataMesajiGoruntule(String mesaj) {
        System.out.println("[HATA] " + mesaj);
    }

    public void menuYazdir() {
        System.out.println("\n********** ANA MENÜ **********");
        System.out.println("1- Sıcaklık Görüntüle");
        System.out.println("2- Soğutucuyu Aç");
        System.out.println("3- Soğutucuyu Kapat");
        System.out.println("4- Sistemden Çıkış Yap");
        System.out.println("******************************");
    }
}
