.class final Lcom/android/ims/h$e;
.super Lcom/android/ims/h$a;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/h$a<",
        "Landroid/telephony/ims/aidl/IImsConfigCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/android/ims/h;


# direct methods
.method public constructor <init>(Lcom/android/ims/h;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/android/ims/h$e;->e:Lcom/android/ims/h;

    .line 388
    invoke-direct {p0, p2, p3}, Lcom/android/ims/h$a;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(Landroid/os/IInterface;)V
    .locals 1

    .line 386
    check-cast p1, Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 2393
    iget-object v0, p0, Lcom/android/ims/h$e;->e:Lcom/android/ims/h;

    .line 2798
    invoke-virtual {v0}, Lcom/android/ims/h;->b()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2400
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2402
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ImsService is not available!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p1, "MmTelFeatureConnection"

    const-string v0, "ProvisioningCallbackManager - couldn\'t register, binder is null."

    .line 2396
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ImsConfig is not available!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic d(Landroid/os/IInterface;)V
    .locals 2

    .line 386
    check-cast p1, Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 1408
    iget-object v0, p0, Lcom/android/ims/h$e;->e:Lcom/android/ims/h;

    .line 1798
    invoke-virtual {v0}, Lcom/android/ims/h;->b()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    const-string v1, "MmTelFeatureConnection"

    if-nez v0, :cond_0

    const-string p1, "ProvisioningCallbackManager - couldn\'t unregister, binder is null."

    .line 1410
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1414
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsConfig;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "ProvisioningCallbackManager - couldn\'t unregister, binder is dead."

    .line 1416
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
