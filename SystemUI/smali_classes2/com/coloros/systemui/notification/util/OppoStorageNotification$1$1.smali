.class Lcom/coloros/systemui/notification/util/OppoStorageNotification$1$1;
.super Ljava/lang/Thread;
.source "OppoStorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;->unmount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1$1;->this$1:Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;

    iput-object p2, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "OppoStorageNotification"

    const-string v1, "Common"

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1$1;->this$1:Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;

    iget-object v2, v2, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1;->this$0:Lcom/coloros/systemui/notification/util/OppoStorageNotification;

    invoke-static {v2}, Lcom/coloros/systemui/notification/util/OppoStorageNotification;->access$200(Lcom/coloros/systemui/notification/util/OppoStorageNotification;)Landroid/os/storage/StorageManager;

    move-result-object v2

    iget-object p0, p0, Lcom/coloros/systemui/notification/util/OppoStorageNotification$1$1;->val$id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/os/storage/StorageManager;->unmount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unmount exception wrong!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unmount wrong!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
