.class Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$2;
.super Ljava/lang/Object;
.source "ClockExtraTextController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$000(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;->finishedWakingUp()V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$2;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$000(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;->startedGoingToSleep()V

    return-void
.end method
