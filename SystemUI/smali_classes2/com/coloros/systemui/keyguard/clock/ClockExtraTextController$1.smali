.class Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$1;
.super Ljava/lang/Object;
.source "ClockExtraTextController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 64
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$000(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$000(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;->access$100(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;->updateExtraTextInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
