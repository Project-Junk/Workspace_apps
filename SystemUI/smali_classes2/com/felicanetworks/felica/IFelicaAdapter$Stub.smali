.class public abstract Lcom/felicanetworks/felica/IFelicaAdapter$Stub;
.super Landroid/os/Binder;
.source "IFelicaAdapter.java"

# interfaces
.implements Lcom/felicanetworks/felica/IFelicaAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felicanetworks/felica/IFelicaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felicanetworks/felica/IFelicaAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.felicanetworks.felica.IFelicaAdapter"

.field static final TRANSACTION_getFelicaAdapterExtraInterface:I = 0x3

.field static final TRANSACTION_getFelicaRfInterface:I = 0x2

.field static final TRANSACTION_getFelicaSeInterface:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.felicanetworks.felica.IFelicaAdapter"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/felicanetworks/felica/IFelicaAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/felicanetworks/felica/IFelicaAdapter;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.felicanetworks.felica.IFelicaAdapter"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    instance-of v1, v0, Lcom/felicanetworks/felica/IFelicaAdapter;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/felicanetworks/felica/IFelicaAdapter;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/felicanetworks/felica/IFelicaAdapter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/felicanetworks/felica/IFelicaAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "com.felicanetworks.felica.IFelicaAdapter"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 45
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 70
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/felicanetworks/felica/IFelicaAdapter$Stub;->getFelicaAdapterExtraInterface(Ljava/lang/String;)Lcom/felicanetworks/felica/IFelicaAdapterExtra;

    move-result-object p0

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 75
    invoke-interface {p0}, Lcom/felicanetworks/felica/IFelicaAdapterExtra;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    .line 60
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/felicanetworks/felica/IFelicaAdapter$Stub;->getFelicaRfInterface(Ljava/lang/String;)Lcom/felicanetworks/felica/IFelicaRf;

    move-result-object p0

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    .line 65
    invoke-interface {p0}, Lcom/felicanetworks/felica/IFelicaRf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    .line 50
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/felicanetworks/felica/IFelicaAdapter$Stub;->getFelicaSeInterface(Ljava/lang/String;)Lcom/felicanetworks/felica/IFelicaSe;

    move-result-object p0

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_6

    .line 55
    invoke-interface {p0}, Lcom/felicanetworks/felica/IFelicaSe;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2
.end method
