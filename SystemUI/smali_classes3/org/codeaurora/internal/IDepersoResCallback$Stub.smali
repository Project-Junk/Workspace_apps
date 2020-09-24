.class public abstract Lorg/codeaurora/internal/IDepersoResCallback$Stub;
.super Landroid/os/Binder;
.source "IDepersoResCallback.java"

# interfaces
.implements Lorg/codeaurora/internal/IDepersoResCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/IDepersoResCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/internal/IDepersoResCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.codeaurora.internal.IDepersoResCallback"

.field static final TRANSACTION_onDepersoResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.codeaurora.internal.IDepersoResCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/internal/IDepersoResCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IDepersoResCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.codeaurora.internal.IDepersoResCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lorg/codeaurora/internal/IDepersoResCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/codeaurora/internal/IDepersoResCallback;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lorg/codeaurora/internal/IDepersoResCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/codeaurora/internal/IDepersoResCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x1

    const-string v1, "org.codeaurora.internal.IDepersoResCallback"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 43
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 48
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/internal/IDepersoResCallback$Stub;->onDepersoResult(II)V

    return v0
.end method
