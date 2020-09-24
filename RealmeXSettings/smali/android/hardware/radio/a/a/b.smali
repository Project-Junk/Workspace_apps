.class public interface abstract Landroid/hardware/radio/a/a/b;
.super Ljava/lang/Object;
.source "IRadioConfigIndication.java"

# interfaces
.implements Landroid/internal/hidl/base/V1_0/IBase;


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract simSlotsStatusChanged(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/a/a/d;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
