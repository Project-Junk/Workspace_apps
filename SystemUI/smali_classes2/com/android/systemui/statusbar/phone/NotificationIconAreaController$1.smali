.class Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;
.super Ljava/lang/Object;
.source "NotificationIconAreaController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusBarIconsBehaviorChanged(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->access$000(Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->useNewInterruptionModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mShowLowPriority:Z

    .line 67
    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->mNotificationScrollLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateStatusBarIcons()V

    :cond_0
    return-void
.end method
