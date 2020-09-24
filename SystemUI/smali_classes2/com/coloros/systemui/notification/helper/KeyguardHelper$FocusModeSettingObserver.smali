.class Lcom/coloros/systemui/notification/helper/KeyguardHelper$FocusModeSettingObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/KeyguardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusModeSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$FocusModeSettingObserver;->this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    .line 397
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 402
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$FocusModeSettingObserver;->this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->access$300(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "focusmode_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->access$202(Lcom/coloros/systemui/notification/helper/KeyguardHelper;I)I

    .line 403
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mMode = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$FocusModeSettingObserver;->this$0:Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->access$200(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Notification"

    const-string v0, "Notification--InCallHelper"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
