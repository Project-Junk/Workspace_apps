.class public abstract Lcom/coloros/exsupport/alipay/IAliPayService$Stub;
.super Landroid/os/Binder;
.source "IAliPayService.java"

# interfaces
.implements Lcom/coloros/exsupport/alipay/IAliPayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/exsupport/alipay/IAliPayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/exsupport/alipay/IAliPayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.coloros.exsupport.alipay.IAliPayService"

.field static final TRANSACTION_getVersion:I = 0x4

.field static final TRANSACTION_schemaToWalletBarcode:I = 0x1

.field static final TRANSACTION_setsMinVersionCodeForService:I = 0x2

.field static final TRANSACTION_startWalletAtBackground:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.coloros.exsupport.alipay.IAliPayService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/coloros/exsupport/alipay/IAliPayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/coloros/exsupport/alipay/IAliPayService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.coloros.exsupport.alipay.IAliPayService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/coloros/exsupport/alipay/IAliPayService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/coloros/exsupport/alipay/IAliPayService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/coloros/exsupport/alipay/IAliPayService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/coloros/exsupport/alipay/IAliPayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.coloros.exsupport.alipay.IAliPayService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 76
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/coloros/exsupport/alipay/IAliPayService$Stub;->getVersion()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 66
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/coloros/exsupport/alipay/IAliPayService$Stub;->startWalletAtBackground(Ljava/lang/String;)I

    move-result p0

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 57
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/coloros/exsupport/alipay/IAliPayService$Stub;->setsMinVersionCodeForService(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/coloros/exsupport/alipay/IAliPayService$Stub;->schemaToWalletBarcode(Ljava/lang/String;)I

    move-result p0

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
