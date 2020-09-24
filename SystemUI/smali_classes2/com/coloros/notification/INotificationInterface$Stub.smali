.class public abstract Lcom/coloros/notification/INotificationInterface$Stub;
.super Landroid/os/Binder;
.source "INotificationInterface.java"

# interfaces
.implements Lcom/coloros/notification/INotificationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/notification/INotificationInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/notification/INotificationInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.coloros.notification.INotificationInterface"

.field static final TRANSACTION_sbnIsFold:I = 0x3

.field static final TRANSACTION_shouldShowHeadsup:I = 0x2

.field static final TRANSACTION_shouldShowOnKeyguard:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.coloros.notification.INotificationInterface"

    .line 41
    invoke-virtual {p0, p0, v0}, Lcom/coloros/notification/INotificationInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/coloros/notification/INotificationInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.coloros.notification.INotificationInterface"

    .line 52
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    instance-of v1, v0, Lcom/coloros/notification/INotificationInterface;

    if-eqz v1, :cond_1

    .line 54
    check-cast v0, Lcom/coloros/notification/INotificationInterface;

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lcom/coloros/notification/INotificationInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/coloros/notification/INotificationInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/coloros/notification/INotificationInterface;
    .locals 1

    .line 218
    sget-object v0, Lcom/coloros/notification/INotificationInterface$Stub$Proxy;->sDefaultImpl:Lcom/coloros/notification/INotificationInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/coloros/notification/INotificationInterface;)Z
    .locals 1

    .line 211
    sget-object v0, Lcom/coloros/notification/INotificationInterface$Stub$Proxy;->sDefaultImpl:Lcom/coloros/notification/INotificationInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 212
    sput-object p0, Lcom/coloros/notification/INotificationInterface$Stub$Proxy;->sDefaultImpl:Lcom/coloros/notification/INotificationInterface;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    const/4 v0, 0x1

    const-string v1, "com.coloros.notification.INotificationInterface"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 69
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 96
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 99
    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 104
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/notification/INotificationInterface$Stub;->sbnIsFold(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 84
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/coloros/notification/INotificationInterface$Stub;->shouldShowHeadsup(Ljava/lang/String;I)Z

    move-result p0

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 74
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/coloros/notification/INotificationInterface$Stub;->shouldShowOnKeyguard(Ljava/lang/String;)Z

    move-result p0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
