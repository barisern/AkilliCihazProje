package com.proje.AgArayuzu;

import com.proje.Eyleyici.IEyleyici;
import com.proje.Observer.IObserver;
import com.proje.SicaklikAlgilayici.ISicaklikAlgilayici;
import com.proje.Veritabanı.PostgresVeritabani;
import com.proje.Veritabanı.VeritabaniIslem;

public class AgArayuzu implements IAgArayuzu, IObserver {
    @Override
    public void sogucutuAc(IEyleyici eyleyici) {
        eyleyici.sogutucuAc();
    }

    @Override
    public void sogutucuKapat(IEyleyici eyleyici) {
        eyleyici.sogutucuKapat();
    }

    @Override
    public String sicaklikGonder(ISicaklikAlgilayici sicaklikAlgilayici) {
        return sicaklikAlgilayici.sicaklikOku();
    }

    @Override
    public void update(String mesaj, String derece) {
        // Veritabanına loglama işlemi yapılıyor...
        VeritabaniIslem veritabaniIslem = new VeritabaniIslem(new PostgresVeritabani());
        veritabaniIslem.yuksekSicaklikLogla(derece);
    }
}
