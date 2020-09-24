.class public interface abstract Lcom/felicanetworks/felica/IFelicaAdapter;
.super Ljava/lang/Object;
.source "IFelicaAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/felica/IFelicaAdapter$Stub;
    }
.end annotation


# virtual methods
.method public abstract getFelicaAdapterExtraInterface(Ljava/lang/String;)Lcom/felicanetworks/felica/IFelicaAdapterExtra;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFelicaRfInterface(Ljava/lang/String;)Lcom/felicanetworks/felica/IFelicaRf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFelicaSeInterface(Ljava/lang/String;)Lcom/felicanetworks/felica/IFelicaSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
