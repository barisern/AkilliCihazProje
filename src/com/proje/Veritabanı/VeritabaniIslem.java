package com.proje.Veritabanı;

import com.proje.Veritabanı.IVeritabani;

public class VeritabaniIslem {

    private IVeritabani veritabani;

    public VeritabaniIslem(IVeritabani veritabani) {
        this.veritabani = veritabani;
    }

    public boolean kullaniciDogrula(String kullaniciAdi, String sifre) {
        return  veritabani.kullaniciDogrula(kullaniciAdi, sifre);
    }

    public void yuksekSicaklikLogla(String sicaklik) {
        veritabani.yuksekSicaklikLogla(sicaklik);
    }
}
