.class public final Lcom/android/ims/h$b;
.super Lcom/android/ims/h$a;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/h$a<",
        "Landroid/telephony/ims/aidl/IImsCapabilityCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/android/ims/h;


# direct methods
.method public constructor <init>(Lcom/android/ims/h;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/android/ims/h$b;->e:Lcom/android/ims/h;

    .line 332
    invoke-direct {p0, p2, p3}, Lcom/android/ims/h$a;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(Landroid/os/IInterface;)V
    .locals 2

    .line 329
    check-cast p1, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 2338
    iget-object v0, p0, Lcom/android/ims/h$b;->e:Lcom/android/ims/h;

    invoke-static {v0}, Lcom/android/ims/h;->b(Lcom/android/ims/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2340
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/h$b;->e:Lcom/android/ims/h;

    invoke-static {v1}, Lcom/android/ims/h;->c(Lcom/android/ims/h;)V

    .line 2341
    iget-object v1, p0, Lcom/android/ims/h$b;->e:Lcom/android/ims/h;

    iget-object v1, v1, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/ims/h;->a(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2346
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 2349
    :try_start_2
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 2351
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, " CapabilityCallbackManager - MmTelFeature binder is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p1, "MmTelFeatureConnection"

    const-string v0, "CapabilityCallbackManager, register: Couldn\'t get binder"

    .line 2355
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CapabilityCallbackManager: MmTelFeature is not available!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2343
    :catch_1
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "CapabilityCallbackManager - MmTelFeature binder is dead."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2346
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final synthetic d(Landroid/os/IInterface;)V
    .locals 2

    .line 329
    check-cast p1, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 1364
    iget-object v0, p0, Lcom/android/ims/h$b;->e:Lcom/android/ims/h;

    invoke-static {v0}, Lcom/android/ims/h;->b(Lcom/android/ims/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1366
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/h$b;->e:Lcom/android/ims/h;

    invoke-static {v1}, Lcom/android/ims/h;->c(Lcom/android/ims/h;)V

    .line 1367
    iget-object v1, p0, Lcom/android/ims/h$b;->e:Lcom/android/ims/h;

    iget-object v1, v1, Lcom/android/ims/h;->b:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/ims/h;->a(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1373
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 1376
    :try_start_2
    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    const-string p1, "MmTelFeatureConnection"

    const-string v0, "CapabilityCallbackManager, unregister: Binder is dead."

    .line 1378
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "MmTelFeatureConnection"

    const-string v0, "CapabilityCallbackManager, unregister: binder is null."

    .line 1381
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    :try_start_3
    const-string p1, "MmTelFeatureConnection"

    const-string v1, "CapabilityCallbackManager, unregister: couldn\'t get binder."

    .line 1370
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    monitor-exit v0

    return-void

    .line 1373
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
