.class Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;
.super Ljava/lang/Object;
.source "ColorKeyguardNumericView.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLeft()V
    .locals 0

    return-void
.end method

.method public onClickNumber(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 170
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$000()[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickNumber, index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$100(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardNumericView"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$100(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$100(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$108(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)I

    .line 175
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$200()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$300(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$200()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    sget-object v1, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_DELETE_PWD_INPUT:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->updateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;)V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-static {}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$000()[I

    move-result-object v1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->sendDownUpKeyEvents(I)V

    .line 182
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$400(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V

    .line 185
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->access$500(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;)V

    return-void
.end method

.method public onClickRight()V
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardNumericView;->verifyPasswordAndUnlock()V

    return-void
.end method
