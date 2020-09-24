.class Lcom/android/systemui/statusbar/phone/StatusBar$13;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


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

    .line 4121
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onFinishedGoingToSleep$0$StatusBar$13()V
    .locals 1

    .line 4140
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCameraLaunchGestureDetected(I)V

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 3

    .line 4124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAffordanceLaunchEnded()V

    .line 4125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$800(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4126
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$902(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 4128
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1002(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1102(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 4130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setScreenOn(Z)V

    .line 4131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 4133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelCurrentTouch()V

    .line 4135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1302(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$13$PK4LPzc31fGbhCJLmpNT4dPjpFw;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$13$PK4LPzc31fGbhCJLmpNT4dPjpFw;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$13;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 4142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    .line 4146
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews(Z)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 3

    .line 4175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(Z)V

    .line 4176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$900(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->launchCamera(ZI)V

    .line 4178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$902(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 4180
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateScrimController()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    .line 4152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyHeadsUpGoingToSleep()V

    .line 4154
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 4159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDeviceInteractive:Z

    .line 4160
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWakingUp(Z)V

    .line 4161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AmbientPulseManager;->releaseAllImmediately()V

    .line 4162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->setScreenOn(Z)V

    .line 4163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateVisibleToUser()V

    .line 4164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    .line 4165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->stopDozing()V

    .line 4169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 4170
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onStartedWakingUp()V

    return-void
.end method
