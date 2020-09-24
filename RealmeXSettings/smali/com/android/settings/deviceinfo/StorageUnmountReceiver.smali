.class public Lcom/android/settings/deviceinfo/StorageUnmountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageUnmountReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 33
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    .line 35
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-virtual {v0, p2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    new-instance p2, Lcom/android/settings/deviceinfo/StorageSettings$b;

    invoke-direct {p2, p1, v0}, Lcom/android/settings/deviceinfo/StorageSettings$b;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Lcom/android/settings/deviceinfo/StorageSettings$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 40
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Missing volume "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "StorageSettings"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
