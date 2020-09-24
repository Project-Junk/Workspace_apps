.class Lcom/android/systemui/keyguard/KeyguardViewMediator$7;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 2135
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(I)V
    .locals 2

    .line 2181
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->keyguardGoingAway(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "Error while calling WindowManager"

    .line 2183
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v0, 0x8

    const-string v2, "KeyGuardGoingAwayRunnable.run"

    .line 2138
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v2, "KeyguardViewMediator"

    const-string v3, "keyguardGoingAway"

    .line 2139
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->keyguardGoingAway()V

    .line 2144
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    .line 2145
    invoke-static {v2}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceAuthStayOnKeyguard()Z

    move-result v2

    .line 2147
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->shouldDisableWindowAnimationsForUnlock()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2152
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2153
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x2

    .line 2158
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isGoingToNotificationShade()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 2159
    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$4900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    or-int/lit8 v3, v3, 0x1

    .line 2162
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isUnlockWithWallpaper()Z

    move-result v5

    if-eqz v5, :cond_5

    or-int/lit8 v3, v3, 0x4

    .line 2167
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthSucceed()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    .line 2168
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;

    move-result-object v2

    invoke-virtual {v2, v6, v4}, Lcom/coloros/systemui/keyguard/helper/LauncherMessenger;->sendMessage(IZ)V

    .line 2171
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    .line 2179
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/UiOffloadThread;

    move-result-object p0

    new-instance v2, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$7$KooXr448I10DQHquWhJeRDn4i_w;

    invoke-direct {v2, v3}, Lcom/android/systemui/keyguard/-$$Lambda$KeyguardViewMediator$7$KooXr448I10DQHquWhJeRDn4i_w;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2186
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
