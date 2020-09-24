.class Lcom/coloros/systemui/notification/helper/KeyguardHelper$1;
.super Ljava/lang/Object;
.source "KeyguardHelper.java"

# interfaces
.implements Lcom/coloros/common/util/LogUtil$IDebug;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/KeyguardHelper;->shouldShowOnKeguard(Landroid/service/notification/StatusBarNotification;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/KeyguardHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debugInfo()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldShowOnKeguard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  mZenModeStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    .line 179
    invoke-static {v1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->access$000(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  !entry.shouldSuppressNotificationList():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$1;->val$entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 180
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationList()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mZenModeKeyguardStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    .line 181
    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->access$100(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
