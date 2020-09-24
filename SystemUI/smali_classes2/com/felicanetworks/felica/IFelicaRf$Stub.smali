.class public abstract Lcom/felicanetworks/felica/IFelicaRf$Stub;
.super Landroid/os/Binder;
.source "IFelicaRf.java"

# interfaces
.implements Lcom/felicanetworks/felica/IFelicaRf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/felica/IFelicaRf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/felica/IFelicaRf$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.felicanetworks.felica.IFelicaRf"

.field static final TRANSACTION_cancel:I = 0x4

.field static final TRANSACTION_close:I = 0x2

.field static final TRANSACTION_connect:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x6

.field static final TRANSACTION_open:I = 0x1

.field static final TRANSACTION_transceive:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.felicanetworks.felica.IFelicaRf"

    .line 17
    invoke-virtual {p0, p0, v0}, Lcom/felicanetworks/felica/IFelicaRf$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/felica/IFelicaRf;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.felicanetworks.felica.IFelicaRf"

    .line 28
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    instance-of v1, v0, Lcom/felicanetworks/felica/IFelicaRf;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/felicanetworks/felica/IFelicaRf;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/felicanetworks/felica/IFelicaRf$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/felicanetworks/felica/IFelicaRf$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.felicanetworks.felica.IFelicaRf"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 129
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/felica/IFelicaRf$Stub;->disconnect(Ljava/lang/String;I)I

    move-result p0

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 115
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 122
    invoke-virtual {p0, p1, p4, p2}, Lcom/felicanetworks/felica/IFelicaRf$Stub;->connect(Ljava/lang/String;II)I

    move-result p0

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 103
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/felica/IFelicaRf$Stub;->cancel(Ljava/lang/String;I)I

    move-result p0

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 81
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 90
    invoke-virtual {p0, p1, p4, v1, p2}, Lcom/felicanetworks/felica/IFelicaRf$Stub;->transceive(Ljava/lang/String;I[BI)Landroid/os/Bundle;

    move-result-object p0

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    invoke-virtual {p0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 67
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 74
    invoke-virtual {p0, p1, p4, p2}, Lcom/felicanetworks/felica/IFelicaRf$Stub;->close(Ljava/lang/String;ILandroid/os/IBinder;)I

    move-result p0

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 49
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/felicanetworks/felica/IFelicaRf$Stub;->open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p0

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
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
