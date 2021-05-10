package com.proje.Eyleyici;

import com.proje.Observer.IObserver;

public class Eyleyici implements IEyleyici, IObserver {
    private boolean sogutucuDurumu = false;

    @Override
    public void sogutucuAc() {
        if (!sogutucuDurumu) {
            System.out.println("Soğutucu açılıyor...");

            sogutucuDurumu = true;

            System.out.printf("Soğutucu açıldı!");
        } else {
            System.out.printf("Soğutucu zaten aktif durumda!");
        }
    }

    @Override
    public void sogutucuKapat() {
        if (sogutucuDurumu) {
            System.out.println("Soğutucu kapatılıyor...");

            sogutucuDurumu = false;

            System.out.printf("Soğutucu kapatıldı!");
        } else {
            System.out.println("Soğutucu zaten kapalı durumda!");
        }
    }

    @Override
    public void update(String mesaj, String derece) {
        // Sıcaklık çok yüksek olduğundan gelen bildirimle soğutucu açılıyor... (Tabii soğutucu zaten açık değil ise)
        if (!sogutucuDurumu) {
            System.out.println(mesaj + " , (" + derece + ") soğutucu otomatik olarak açık duruma getiriliyor");
            sogutucuAc();
        }

    }
}
