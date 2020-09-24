.class Lcom/coloros/systemui/notification/util/OppoStorageNotification$2;
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

    .line 98
    iput-object p1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$2;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private findSdcardAndSendNotification()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$2;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {v0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$200(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 118
    iget-object v2, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$2;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {v2, v1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$000(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$2;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0, v1}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$300(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V

    return-void

    :cond_1
    const-string p0, "Common"

    const-string v0, "OppoStorageNotification"

    const-string v1, "Receiver ReadOnly from other app, but no sdcard in SM"

    .line 123
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "storage_type"

    .line 102
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "package_name"

    .line 103
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sdcard"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReadOnlyReceiver receive action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", caller:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OppoStorageNotification"

    const-string v2, "Common"

    invoke-static {v2, v0, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "oppo.intent.action.BAD_STORAGE_NOTICE"

    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification$2;->findSdcardAndSendNotification()V

    goto :goto_0

    :cond_0
    const-string p0, "only support sdcard bad storage notification from other app"

    .line 112
    invoke-static {v2, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
