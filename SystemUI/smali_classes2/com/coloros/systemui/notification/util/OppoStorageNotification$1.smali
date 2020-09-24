.class Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;
.super Landroid/content/BroadcastReceiver;
.source "OppoStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/util/OppoStorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private unmount(Ljava/lang/String;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1$1;-><init>(Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1$1;->start()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.os.storage.extra.STORAGE_VOLUME"

    .line 72
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageVolume;

    const-string p2, "OppoStorageNotification"

    const-string v0, "Common"

    if-nez p1, :cond_0

    const-string p0, "receive unmount action for null volume"

    .line 74
    invoke-static {v0, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive unmount action for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p2}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$100(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {v1, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$000(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p2, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;->unmount(Ljava/lang/String;)V

    return-void
.end method
