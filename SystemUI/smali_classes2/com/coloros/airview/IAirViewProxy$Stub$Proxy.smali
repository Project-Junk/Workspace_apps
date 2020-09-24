.class Lcom/coloros/airview/IAirViewProxy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAirViewProxy.java"

# interfaces
.implements Lcom/coloros/airview/IAirViewProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/airview/IAirViewProxy$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/coloros/airview/IAirViewProxy;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/coloros/airview/IAirViewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/coloros/airview/IAirViewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.coloros.airview.IAirViewProxy"

    .line 137
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object p0, p0, Lcom/coloros/airview/IAirViewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 140
    invoke-static {}, Lcom/coloros/airview/IAirViewProxy$Stub;->getDefaultImpl()Lcom/coloros/airview/IAirViewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 141
    invoke-static {}, Lcom/coloros/airview/IAirViewProxy$Stub;->getDefaultImpl()Lcom/coloros/airview/IAirViewProxy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/coloros/airview/IAirViewProxy;->cancel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw p0
.end method

.method public display(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.coloros.airview.IAirViewProxy"

    .line 117
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object p0, p0, Lcom/coloros/airview/IAirViewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 121
    invoke-static {}, Lcom/coloros/airview/IAirViewProxy$Stub;->getDefaultImpl()Lcom/coloros/airview/IAirViewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 122
    invoke-static {}, Lcom/coloros/airview/IAirViewProxy$Stub;->getDefaultImpl()Lcom/coloros/airview/IAirViewProxy;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/coloros/airview/IAirViewProxy;->display(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.coloros.airview.IAirViewProxy"

    return-object p0
.end method
