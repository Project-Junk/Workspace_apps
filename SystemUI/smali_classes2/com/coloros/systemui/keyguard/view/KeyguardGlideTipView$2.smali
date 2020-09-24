.class Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$2;
.super Ljava/lang/Object;
.source "KeyguardGlideTipView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$2;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$2;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->access$200(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 219
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$2;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->access$000(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$2;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->access$300(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    return-void
.end method
