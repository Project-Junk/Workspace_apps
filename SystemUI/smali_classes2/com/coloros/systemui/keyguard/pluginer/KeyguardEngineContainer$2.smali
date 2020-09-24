.class Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$2;
.super Ljava/lang/Object;
.source "KeyguardEngineContainer.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$2;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$2;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$100(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/keyguard/base/IKeyguardCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$2;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$100(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/keyguard/base/IKeyguardCtrl;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/base/IKeyguardCtrl;->onFinishedWakingUp()V

    :cond_0
    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$2;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$100(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/keyguard/base/IKeyguardCtrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$2;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$100(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/keyguard/base/IKeyguardCtrl;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/base/IKeyguardCtrl;->onStartedGoingToSleep()V

    :cond_0
    return-void
.end method
