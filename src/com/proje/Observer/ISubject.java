package com.proje.Observer;

public interface ISubject {
    public void attach(IObserver o);
    public void detach(IObserver o);
    public void notify(String mesaj, String derece);
}
