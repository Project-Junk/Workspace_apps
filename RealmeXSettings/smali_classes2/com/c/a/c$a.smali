.class public abstract Lcom/c/a/c$a;
.super Landroid/os/Binder;
.source "IAskToken.java"

# interfaces
.implements Lcom/c/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/c/a/c$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/c/a/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.nearme.aidl.IAskToken"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/c/a/c;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/c/a/c;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/c/a/c$a$a;

    invoke-direct {v0, p0}, Lcom/c/a/c$a$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.nearme.aidl.IAskToken"

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

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 98
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/c/a/c$a;->c(Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p1, p3, v0}, Lcom/c/a/f;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 82
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/c/a/c$a;->b(Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p1, p3, v0}, Lcom/c/a/f;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 92
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

    .line 69
    invoke-virtual {p0, p1}, Lcom/c/a/c$a;->a(Ljava/lang/String;)Lcom/c/a/f;

    move-result-object p1

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {p1, p3, v0}, Lcom/c/a/f;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 76
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
    invoke-virtual {p0, p1}, Lcom/c/a/c$a;->b(Lcom/c/a/e;)V

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
    invoke-virtual {p0, p1}, Lcom/c/a/c$a;->a(Lcom/c/a/e;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
