.class public abstract Lcom/felicanetworks/felica/IFelicaAdapterExtra$Stub;
.super Landroid/os/Binder;
.source "IFelicaAdapterExtra.java"

# interfaces
.implements Lcom/felicanetworks/felica/IFelicaAdapterExtra;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/felica/IFelicaAdapterExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/felica/IFelicaAdapterExtra$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.felicanetworks.felica.IFelicaAdapterExtra"

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_enable:I = 0x1

.field static final TRANSACTION_getRwP2pState:I = 0x4

.field static final TRANSACTION_getState:I = 0x3

.field static final TRANSACTION_prepareSwitchedOffState:I = 0x6

.field static final TRANSACTION_setRwP2pMode:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.felicanetworks.felica.IFelicaAdapterExtra"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/felica/IFelicaAdapterExtra;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.felicanetworks.felica.IFelicaAdapterExtra"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/felicanetworks/felica/IFelicaAdapterExtra$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const-string v1, "com.felicanetworks.felica.IFelicaAdapterExtra"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 93
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra$Stub;->prepareSwitchedOffState()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 83
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v2

    .line 86
    :cond_0
    invoke-virtual {p0, v0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra$Stub;->setRwP2pMode(Z)Z

    move-result p0

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 75
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra$Stub;->getRwP2pState()I

    move-result p0

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 67
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra$Stub;->getState()I

    move-result p0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 57
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    .line 60
    :cond_1
    invoke-virtual {p0, v0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra$Stub;->disable(Z)Z

    move-result p0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 49
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra$Stub;->enable()Z

    move-result p0

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 44
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
