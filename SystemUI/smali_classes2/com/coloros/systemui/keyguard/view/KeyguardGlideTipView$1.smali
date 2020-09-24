.class Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardGlideTipView.java"


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

    .line 195
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$1;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 199
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 200
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$1;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->access$000(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    .line 201
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView$1;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;->access$100(Lcom/coloros/systemui/keyguard/view/KeyguardGlideTipView;)V

    return-void
.end method
