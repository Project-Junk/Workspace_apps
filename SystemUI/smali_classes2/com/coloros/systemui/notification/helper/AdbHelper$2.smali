.class Lcom/coloros/systemui/notification/helper/AdbHelper$2;
.super Landroid/database/ContentObserver;
.source "AdbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/AdbHelper;->initContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/AdbHelper;Landroid/os/Handler;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    iget-object p1, p1, Lcom/coloros/systemui/notification/helper/AdbHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/AdbHelper;->access$200(Landroid/content/Context;)Z

    move-result p1

    .line 114
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "observer adb enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdbHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    .line 118
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->cancelAutoCloseAlarm()V

    goto :goto_0

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/AdbHelper;->access$000(Lcom/coloros/systemui/notification/helper/AdbHelper;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 120
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/AdbHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/AdbHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/AdbHelper;->setAutoCloseAlarm()V

    :cond_2
    :goto_0
    return-void
.end method
