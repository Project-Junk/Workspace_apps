.class Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OperatorNameViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;


# direct methods
.method constructor <init>(Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout$1;->this$0:Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout$1;->this$0:Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;

    invoke-static {v0, p1}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->access$002(Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;Z)Z

    if-nez p1, :cond_0

    .line 59
    iget-object p0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout$1;->this$0:Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;

    invoke-static {p0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->access$100(Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;)V

    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout$1;->this$0:Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;

    invoke-static {p0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->access$100(Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;)V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0

    .line 71
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSimStateChanged() - slotId invalid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string p2, "CustomOperatorNameView"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout$1;->this$0:Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;

    invoke-static {p0}, Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;->access$100(Lcom/coloros/customize/systemui/statusbar/widget/OperatorNameViewLayout;)V

    return-void
.end method
