.class public abstract Landroid/app/IColorStatusBar$Stub;
.super Landroid/os/Binder;
.source "IColorStatusBar.java"

# interfaces
.implements Landroid/app/IColorStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IColorStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IColorStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IColorStatusBar"

.field static final TRANSACTION_notifyMultiWindowFocusChanged:I = 0x2

.field static final TRANSACTION_setStatusBarFunction:I = 0x4

.field static final TRANSACTION_toggleSplitScreen:I = 0x3

.field static final TRANSACTION_topIsFullscreen:I = 0x1

.field static final TRANSACTION_updateNavBarVisibility:I = 0x5

.field static final TRANSACTION_updateNavBarVisibilityWithPkg:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IColorStatusBar"

    .line 40
    invoke-virtual {p0, p0, v0}, Landroid/app/IColorStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IColorStatusBar;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.app.IColorStatusBar"

    .line 51
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    instance-of v1, v0, Landroid/app/IColorStatusBar;

    if-eqz v1, :cond_1

    .line 53
    check-cast v0, Landroid/app/IColorStatusBar;

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Landroid/app/IColorStatusBar$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IColorStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/app/IColorStatusBar;
    .locals 1

    .line 258
    sget-object v0, Landroid/app/IColorStatusBar$Stub$Proxy;->sDefaultImpl:Landroid/app/IColorStatusBar;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/app/IColorStatusBar;)Z
    .locals 1

    .line 251
    sget-object v0, Landroid/app/IColorStatusBar$Stub$Proxy;->sDefaultImpl:Landroid/app/IColorStatusBar;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 252
    sput-object p0, Landroid/app/IColorStatusBar$Stub$Proxy;->sDefaultImpl:Landroid/app/IColorStatusBar;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.app.IColorStatusBar"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 115
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 120
    invoke-virtual {p0, p1, p2}, Landroid/app/IColorStatusBar$Stub;->updateNavBarVisibilityWithPkg(ILjava/lang/String;)V

    return v1

    .line 107
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Landroid/app/IColorStatusBar$Stub;->updateNavBarVisibility(I)V

    return v1

    .line 97
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 102
    invoke-virtual {p0, p1, p2}, Landroid/app/IColorStatusBar$Stub;->setStatusBarFunction(ILjava/lang/String;)V

    return v1

    .line 89
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 92
    invoke-virtual {p0, p1}, Landroid/app/IColorStatusBar$Stub;->toggleSplitScreen(I)V

    return v1

    .line 81
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Landroid/app/IColorStatusBar$Stub;->notifyMultiWindowFocusChanged(I)V

    return v1

    .line 73
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/IColorStatusBar$Stub;->topIsFullscreen(Z)V

    return v1

    .line 68
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
