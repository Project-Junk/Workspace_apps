.class final Lorg/a/a/d$a$a;
.super Ljava/lang/Object;
.source "IDepersoResCallback.java"

# interfaces
.implements Lorg/a/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/a/a/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static a:Lorg/a/a/d;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/a/a/d$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "org.codeaurora.internal.IDepersoResCallback"

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v1, p0, Lorg/a/a/d$a$a;->b:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-static {}, Lorg/a/a/d$a;->a()Lorg/a/a/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Lorg/a/a/d$a;->a()Lorg/a/a/d;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/a/a/d;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/a/a/d$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method
