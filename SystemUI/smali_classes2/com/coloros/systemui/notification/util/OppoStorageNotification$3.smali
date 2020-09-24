.class Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;
.super Landroid/os/Handler;
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

    .line 127
    iput-object p1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 130
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 132
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0, v0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1100(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    .line 152
    :pswitch_1
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0, v0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$1000(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    .line 149
    :pswitch_2
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0, v0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$900(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0, v0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$800(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    .line 143
    :pswitch_4
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0, v0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$700(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    .line 140
    :pswitch_5
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0, v0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$600(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    .line 137
    :pswitch_6
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0, v0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$500(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    .line 134
    :pswitch_7
    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$3;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {p0, v0}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$400(Lcom/coloros/systemui/notification/util/OppoStorageNotification;Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    :cond_0
    const-string p0, "Common"

    const-string p1, "OppoStorageNotification"

    const-string v0, "no StorageVolume"

    .line 158
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
