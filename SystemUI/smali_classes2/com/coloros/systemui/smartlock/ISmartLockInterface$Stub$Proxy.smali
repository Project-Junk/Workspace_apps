.class Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISmartLockInterface.java"

# interfaces
.implements Lcom/coloros/systemui/smartlock/ISmartLockInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/coloros/systemui/smartlock/ISmartLockInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.coloros.systemui.smartlock.ISmartLockInterface"

    return-object p0
.end method

.method public getSmartLockMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.coloros.systemui.smartlock.ISmartLockInterface"

    .line 172
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 174
    invoke-static {}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->getDefaultImpl()Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 175
    invoke-static {}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->getDefaultImpl()Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/smartlock/ISmartLockInterface;->getSmartLockMode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 177
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 178
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    throw p0
.end method

.method public isSmartLockActiveMode()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.coloros.systemui.smartlock.ISmartLockInterface"

    .line 152
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 154
    invoke-static {}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->getDefaultImpl()Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    invoke-static {}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->getDefaultImpl()Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/smartlock/ISmartLockInterface;->isSmartLockActiveMode()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 157
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 158
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    move v2, v3

    .line 161
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw p0
.end method

.method public notifySmartLock(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.coloros.systemui.smartlock.ISmartLockInterface"

    .line 191
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 194
    invoke-static {}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->getDefaultImpl()Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 195
    invoke-static {}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->getDefaultImpl()Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/coloros/systemui/smartlock/ISmartLockInterface;->notifySmartLock(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 198
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 201
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    throw p0
.end method

.method public register(Lcom/coloros/systemui/smartlock/ISmartLockCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.coloros.systemui.smartlock.ISmartLockInterface"

    .line 210
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 211
    invoke-interface {p1}, Lcom/coloros/systemui/smartlock/ISmartLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 212
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 213
    invoke-static {}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->getDefaultImpl()Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 214
    invoke-static {}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->getDefaultImpl()Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/coloros/systemui/smartlock/ISmartLockInterface;->register(Lcom/coloros/systemui/smartlock/ISmartLockCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 217
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 220
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    throw p0
.end method

.method public unregister(Lcom/coloros/systemui/smartlock/ISmartLockCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.coloros.systemui.smartlock.ISmartLockInterface"

    .line 229
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 230
    invoke-interface {p1}, Lcom/coloros/systemui/smartlock/ISmartLockCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 231
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 232
    invoke-static {}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->getDefaultImpl()Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 233
    invoke-static {}, Lcom/coloros/systemui/smartlock/ISmartLockInterface$Stub;->getDefaultImpl()Lcom/coloros/systemui/smartlock/ISmartLockInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/coloros/systemui/smartlock/ISmartLockInterface;->unregister(Lcom/coloros/systemui/smartlock/ISmartLockCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 236
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    throw p0
.end method
