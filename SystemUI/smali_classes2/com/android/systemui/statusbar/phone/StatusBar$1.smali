.class Lcom/android/systemui/statusbar/phone/StatusBar$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSetupChanged()V
    .locals 3

    .line 486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 487
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v1

    .line 486
    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isUserSetup(I)Z

    move-result v0

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUserSetupObserver - DeviceProvisionedListener called for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 489
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatusBar"

    .line 488
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-eq v0, v1, :cond_2

    .line 496
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    .line 497
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapseQuickSettings()V

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mUserSetup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setUserSetupComplete(Z)V

    .line 502
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$100(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    :cond_2
    return-void
.end method
