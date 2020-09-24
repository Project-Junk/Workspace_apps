.class Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$3;
.super Ljava/lang/Object;
.source "WakeupScreenHelper.java"

# interfaces
.implements Lcom/coloros/common/util/LogUtil$IDebug;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->pokeWakeLock(Landroid/service/notification/StatusBarNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debugInfo()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--pokeWakeLock not pass--switch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$3;->this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    iget-object v1, v1, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->isNoticeWakeUpSwitchTurnedOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {}, Lcom/coloros/systemui/common/helper/StatusBarStateHelper;->getBarState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ongoing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
