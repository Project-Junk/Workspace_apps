.class Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$1;
.super Ljava/lang/Object;
.source "ClockExtraTextView.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/clock/ClockExtraTextController$ClockExtraTextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishedWakingUp()V
    .locals 1

    .line 71
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->setSelected(Z)V

    return-void
.end method

.method public startedGoingToSleep()V
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->setSelected(Z)V

    return-void
.end method

.method public updateExtraTextInfo(Ljava/lang/String;)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update extra info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClockExtraTextView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
