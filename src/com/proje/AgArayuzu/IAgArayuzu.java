package com.proje.AgArayuzu;

import com.proje.Eyleyici.IEyleyici;
import com.proje.SicaklikAlgilayici.ISicaklikAlgilayici;

public interface IAgArayuzu {
    public void sogucutuAc(IEyleyici eyleyici);
    public void sogutucuKapat(IEyleyici eyleyici);

    public String sicaklikGonder(ISicaklikAlgilayici sicaklikAlgilayici);
}
