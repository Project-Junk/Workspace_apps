.class final Lcom/android/ims/h$d;
.super Lcom/android/ims/h$a;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/ims/h$a<",
        "Landroid/telephony/ims/aidl/IImsRegistrationCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/android/ims/h;


# direct methods
.method public constructor <init>(Lcom/android/ims/h;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/android/ims/h$d;->e:Lcom/android/ims/h;

    .line 293
    invoke-direct {p0, p2, p3}, Lcom/android/ims/h$a;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic c(Landroid/os/IInterface;)V
    .locals 1

    .line 289
    check-cast p1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 2298
    iget-object v0, p0, Lcom/android/ims/h$d;->e:Lcom/android/ims/h;

    invoke-static {v0}, Lcom/android/ims/h;->a(Lcom/android/ims/h;)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2301
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsRegistration;->addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2303
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ImsRegistrationCallbackAdapter: MmTelFeature binder is dead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string p1, "MmTelFeatureConnection"

    const-string v0, "ImsRegistrationCallbackAdapter: ImsRegistration is null"

    .line 2307
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ImsRegistrationCallbackAdapter: MmTelFeature isnot available!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic d(Landroid/os/IInterface;)V
    .locals 2

    .line 289
    check-cast p1, Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 1315
    iget-object v0, p0, Lcom/android/ims/h$d;->e:Lcom/android/ims/h;

    invoke-static {v0}, Lcom/android/ims/h;->a(Lcom/android/ims/h;)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    const-string v1, "MmTelFeatureConnection"

    if-eqz v0, :cond_0

    .line 1318
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/IImsRegistration;->removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "ImsRegistrationCallbackAdapter - unregisterCallback: couldn\'t remove registration callback"

    .line 1320
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "ImsRegistrationCallbackAdapter: ImsRegistration is null"

    .line 1324
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
