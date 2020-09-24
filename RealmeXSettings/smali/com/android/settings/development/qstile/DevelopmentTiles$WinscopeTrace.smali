.class public Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WinscopeTrace"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Landroid/view/IWindowManager;

.field private c:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 3

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->b:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->isWindowTraceEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not get window trace status, defaulting to false."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevelopmentTiles"

    .line 206
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private c()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 217
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->a:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v3, "android.ui.ISurfaceComposer"

    .line 220
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->a:Landroid/os/IBinder;

    const/16 v4, 0x402

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 223
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v3

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v2, v0

    :goto_1
    :try_start_2
    const-string v4, "DevelopmentTiles"

    .line 226
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not get layer trace status, defaulting to false."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_1
    :goto_2
    return v1

    :catchall_2
    move-exception v1

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    :goto_3
    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 232
    :cond_2
    throw v1
.end method


# virtual methods
.method protected final a(Z)V
    .locals 7

    const-string v0, "DevelopmentTiles"

    if-eqz p1, :cond_0

    .line 1244
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->b:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->startWindowTrace()V

    goto :goto_0

    .line 1246
    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->b:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->stopWindowTrace()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1249
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not set window trace status."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    .line 1256
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->a:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    .line 1257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "android.ui.ISurfaceComposer"

    .line 1258
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 1259
    :goto_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    iget-object v4, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->a:Landroid/os/IBinder;

    const/16 v5, 0x401

    invoke-interface {v4, v5, v2, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 1267
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 1264
    :goto_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not set layer tracing."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 1267
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    :goto_4
    if-nez p1, :cond_4

    .line 277
    iget-object p1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->c:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v2, :cond_5

    .line 1267
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1269
    :cond_5
    throw p1
.end method

.method protected final a()Z
    .locals 1

    .line 238
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 3

    .line 194
    invoke-super {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->onCreate()V

    .line 195
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->b:Landroid/view/IWindowManager;

    const-string v0, "SurfaceFlinger"

    .line 196
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->a:Landroid/os/IBinder;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Trace files written to /data/misc/wmtrace"

    const/4 v2, 0x1

    .line 199
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;->c:Landroid/widget/Toast;

    return-void
.end method
