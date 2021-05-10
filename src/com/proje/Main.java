package com.proje;

public class Main {

    public static void main(String[] args) {

        AkilliCihaz akilliCihaz = new AkilliCihaz.AkilliCihazBuilder("Akıllı Cihazım")
                .sahibininAdı("Barış")
                .ZamanDilimi("GMT+3")
                .OtoUykuModuSaat(12)
                .build();

        akilliCihaz.baslat();
    }
}
