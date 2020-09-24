.class public abstract Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;
.super Landroid/os/Binder;
.source "ISmartLockInterface.java"

# interfaces
.implements Lcom/coloros/systemui/smartlock/ISmartLockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/smartlock/ISmartLockInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.coloros.systemui.smartlock.ISmartLockInterface"

.field static final TRANSACTION_getSmartLockMode:I = 0x2

.field static final TRANSACTION_isSmartLockActiveMode:I = 0x1

.field static final TRANSACTION_notifySmartLock:I = 0x3

.field static final TRANSACTION_register:I = 0x4

.field static final TRANSACTION_unregister:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.coloros.systemui.smartlock.ISmartLockInterface"

    .line 46
    invoke-virtual {p0, p0, v0}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/coloros/systemui/smartlock/ISmartLockInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.coloros.systemui.smartlock.ISmartLockInterface"

    .line 57
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    instance-of v1, v0, Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    if-eqz v1, :cond_1

    .line 59
    check-cast v0, Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    return-object v0

    .line 61
    :cond_1
    new-instance v0, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/coloros/systemui/smartlock/ISmartLockInterface;
    .locals 1

    .line 258
    sget-object v0, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;->sDefaultImpl:Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/coloros/systemui/smartlock/ISmartLockInterface;)Z
    .locals 1

    .line 251
    sget-object v0, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;->sDefaultImpl:Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 252
    sput-object p0, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;->sDefaultImpl:Lcom/coloros/systemui/smartlock/ISmartLockInterface;

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

    const-string v1, "com.coloros.systemui.smartlock.ISmartLockInterface"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 74
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 113
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/smartlock/ISmartLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/systemui/smartlock/ISmartLockCallback;

    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->unregister(Lcom/coloros/systemui/smartlock/ISmartLockCallback;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 104
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/systemui/smartlock/ISmartLockCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/systemui/smartlock/ISmartLockCallback;

    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->register(Lcom/coloros/systemui/smartlock/ISmartLockCallback;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 95
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->notifySmartLock(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 87
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->getSmartLockMode()I

    move-result p0

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 79
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->isSmartLockActiveMode()Z

    move-result p0

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
