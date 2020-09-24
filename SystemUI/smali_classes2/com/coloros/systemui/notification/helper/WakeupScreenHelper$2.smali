.class Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$2;
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

.field final synthetic val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$2;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debugInfo()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pokeWakeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mZenModeStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    .line 161
    invoke-static {v1}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->access$100(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  !entry.shouldSuppressNotificationList():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$2;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 162
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationList()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mZenModeKeyguardStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    .line 163
    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;->access$200(Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
