.class public abstract Lcom/c/a/d$a;
.super Landroid/os/Binder;
.source "IAskTokenByAppCode.java"

# interfaces
.implements Lcom/c/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/d$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/c/a/d;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.nearme.aidl.IAskTokenByAppCode"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/c/a/d;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/c/a/d;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/c/a/d$a$a;

    invoke-direct {v0, p0}, Lcom/c/a/d$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.nearme.aidl.IAskTokenByAppCode"

    if-eq p1, v0, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 102
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/c/a/d$a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {p1, p3, v0}, Lcom/c/a/f;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 84
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/c/a/d$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {p1, p3, v0}, Lcom/c/a/f;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 66
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/c/a/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {p1, p3, v0}, Lcom/c/a/f;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 78
    :cond_6
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    .line 57
    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/c/a/e$a;->asInterface(Landroid/os/IBinder;)Lcom/c/a/e;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/c/a/d$a;->b(Lcom/c/a/e;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 48
    :cond_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/c/a/e$a;->asInterface(Landroid/os/IBinder;)Lcom/c/a/e;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/c/a/d$a;->a(Lcom/c/a/e;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
