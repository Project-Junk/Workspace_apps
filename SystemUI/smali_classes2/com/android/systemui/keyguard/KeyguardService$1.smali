.class Lcom/android/systemui/keyguard/KeyguardService$1;
.super Lcom/android/internal/policy/IKeyguardService$Stub;
.source "KeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardService;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardService;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 105
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    return-void
.end method

.method public dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 127
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 239
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 257
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onBootCompleted()V

    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 133
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStarted()V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 139
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStopped()V

    return-void
.end method

.method public onFinishedGoingToSleep(IZ)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onFinishedGoingToSleep(IZ)V

    .line 160
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onFinishedWakingUp()V
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardService.mBinder#onFinishedWakingUp"

    .line 175
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 179
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onFinishedWakingUp()V

    .line 181
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 182
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOff()V

    .line 219
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardService.mBinder#onScreenTurnedOn"

    .line 202
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 203
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 204
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOn()V

    .line 205
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 206
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onScreenTurningOff()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 212
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardService.mBinder#onScreenTurningOn"

    .line 187
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 189
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 190
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 191
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 194
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportKeyguardExpVersion()Z

    move-result p1

    if-nez p1, :cond_0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/smartlock/SmartlockMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->onScreenTurningOn()V

    :cond_0
    return-void
.end method

.method public onShortPowerPressedGoHome()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 271
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onShortPowerPressedGoHome()V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1

    .line 146
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportKeyguardExpVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/smartlock/SmartlockMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->onStartedGoingToSleep()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onStartedGoingToSleep(I)V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardService.mBinder#onStartedWakingUp"

    .line 166
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 168
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onStartedWakingUp()V

    .line 169
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$100(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    move-result-object p0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;->dispatch(I)V

    .line 170
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onSystemReady()V
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardService.mBinder#onSystemReady"

    .line 230
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 232
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onSystemReady()V

    .line 233
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public requestKeyguard(Ljava/lang/String;)V
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestKeyguard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->requestKeyguard(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 251
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    return-void
.end method

.method public setOccluded(ZZ)V
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardService.mBinder#setOccluded"

    .line 118
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    .line 121
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 245
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setSwitchingUser(Z)V

    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardService.mBinder#startKeyguardExitAnimation"

    .line 262
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 264
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    .line 265
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3

    const-wide/16 v0, 0x8

    const-string v2, "KeyguardService.mBinder#verifyUnlock"

    .line 110
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 112
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 113
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
