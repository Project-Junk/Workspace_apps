.class public abstract Lcom/oppo/servicesdk/ICommonService$Stub;
.super Landroid/os/Binder;
.source "ICommonService.java"

# interfaces
.implements Lcom/oppo/servicesdk/ICommonService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/servicesdk/ICommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/servicesdk/ICommonService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oppo.servicesdk.ICommonService"

.field static final TRANSACTION_execute:I = 0x1

.field static final TRANSACTION_register:I = 0x2

.field static final TRANSACTION_unregister:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oppo.servicesdk.ICommonService"

    .line 15
    invoke-virtual {p0, p0, v0}, Lcom/oppo/servicesdk/ICommonService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oppo/servicesdk/ICommonService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oppo.servicesdk.ICommonService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/oppo/servicesdk/ICommonService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/oppo/servicesdk/ICommonService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/oppo/servicesdk/ICommonService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oppo/servicesdk/ICommonService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.oppo.servicesdk.ICommonService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 73
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/oppo/servicesdk/ICommonCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/servicesdk/ICommonCallBack;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/oppo/servicesdk/ICommonService$Stub;->unregister(Lcom/oppo/servicesdk/ICommonCallBack;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 62
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/oppo/servicesdk/ICommonCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oppo/servicesdk/ICommonCallBack;

    move-result-object p2

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/oppo/servicesdk/ICommonService$Stub;->register(Ljava/lang/String;Lcom/oppo/servicesdk/ICommonCallBack;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 47
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 50
    sget-object p1, Lcom/oppo/servicesdk/WeatherRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/servicesdk/WeatherRequest;

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 55
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/servicesdk/ICommonService$Stub;->execute(Lcom/oppo/servicesdk/WeatherRequest;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
