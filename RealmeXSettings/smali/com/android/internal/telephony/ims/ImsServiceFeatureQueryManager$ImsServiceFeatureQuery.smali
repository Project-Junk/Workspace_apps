.class final Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;
.super Ljava/lang/Object;
.source "ImsServiceFeatureQueryManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImsServiceFeatureQuery"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceFeatureQuery"


# instance fields
.field private final mIntentFilter:Ljava/lang/String;

.field private final mName:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    .line 49
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    return-void
.end method

.method private cleanup()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$000(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$200(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$300(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private queryImsFeatures(Landroid/telephony/ims/aidl/IImsServiceController;)V
    .locals 2

    .line 88
    :try_start_0
    invoke-interface {p1}, Landroid/telephony/ims/aidl/IImsServiceController;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object p1

    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$100(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onComplete(Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void

    :catch_0
    move-exception p1

    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "queryImsFeatures - error: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsServiceFeatureQuery"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 92
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$100(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onError(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 71
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected for component: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceFeatureQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 73
    invoke-static {p2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->queryImsFeatures(Landroid/telephony/ims/aidl/IImsServiceController;)V

    return-void

    .line 75
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onServiceConnected: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " binder null, cleaning up."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected for component: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsServiceFeatureQuery"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final start()Z
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start: intent filter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceFeatureQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->access$000(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x4000041

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    :cond_0
    return v0
.end method
