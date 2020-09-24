.class Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;
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

    .line 163
    iput-object p1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isInternalStorage(Landroid/os/storage/StorageVolume;)Z
    .locals 0

    .line 202
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/storage/sdcard0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 166
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.storage.extra.STORAGE_VOLUME"

    .line 167
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageVolume;

    const-string v0, "OppoStorageNotification"

    const-string v1, "Common"

    if-nez p2, :cond_0

    const-string p0, "volume is null!"

    .line 169
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 171
    :cond_0
    invoke-direct {p0, p2}, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;->isInternalStorage(Landroid/os/storage/StorageVolume;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "inner sdcard!"

    .line 172
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_1
    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "Emulated storage!"

    .line 175
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_2
    iget-object v2, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {v2}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1200(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "OTG is disabled in GEV, RETURN !"

    .line 178
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 181
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.MEDIA_CHECKING"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1300(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "android.intent.action.MEDIA_MOUNTED_RO"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1300(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1300(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_6
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1300(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_7
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    .line 190
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 191
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1300(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_8
    const-string v0, "android.intent.action.MEDIA_REMOVED"

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1300(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_9
    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 194
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 195
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1300(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_a
    const-string v0, "android.intent.action.MEDIA_EJECT"

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 197
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$4;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1300(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_b
    :goto_0
    return-void
.end method
