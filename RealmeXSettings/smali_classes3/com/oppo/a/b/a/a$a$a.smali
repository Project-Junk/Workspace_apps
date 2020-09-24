.class final Lcom/oppo/a/b/a/a$a$a;
.super Ljava/lang/Object;
.source "IDolbyServiceCallback.java"

# interfaces
.implements Lcom/oppo/a/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/a/b/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/oppo/a/b/a/a;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/oppo/a/b/a/a$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5
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
    const-string v2, "com.oppo.multimedia.dolby.service.IDolbyServiceCallback"

    .line 151
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/oppo/a/b/a/a$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 154
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/oppo/a/b/a/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 157
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw v2
.end method

.method public final a(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oppo.multimedia.dolby.service.IDolbyServiceCallback"

    .line 209
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object v2, p0, Lcom/oppo/a/b/a/a$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 213
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/oppo/a/b/a/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 216
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 219
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    throw p1
.end method

.method public final a(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oppo.multimedia.dolby.service.IDolbyServiceCallback"

    .line 169
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 170
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v3, p0, Lcom/oppo/a/b/a/a$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 173
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/oppo/a/b/a/a;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 176
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw p1
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/oppo/a/b/a/a$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public final b(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oppo.multimedia.dolby.service.IDolbyServiceCallback"

    .line 247
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v2, p0, Lcom/oppo/a/b/a/a$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 251
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/oppo/a/b/a/a;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 254
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 259
    throw p1
.end method

.method public final b(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oppo.multimedia.dolby.service.IDolbyServiceCallback"

    .line 190
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 191
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object v3, p0, Lcom/oppo/a/b/a/a$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 194
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/oppo/a/b/a/a;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 197
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw p1
.end method

.method public final c(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.oppo.multimedia.dolby.service.IDolbyServiceCallback"

    .line 228
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 229
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object v3, p0, Lcom/oppo/a/b/a/a$a$a;->b:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 232
    invoke-static {}, Lcom/oppo/a/b/a/a$a;->b()Lcom/oppo/a/b/a/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/oppo/a/b/a/a;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 235
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    throw p1
.end method
