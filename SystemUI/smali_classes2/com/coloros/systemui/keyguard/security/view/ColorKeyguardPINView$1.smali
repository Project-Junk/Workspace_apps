.class Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;
.super Ljava/lang/Object;
.source "ColorKeyguardPINView.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLeft()V
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->TAG:Ljava/lang/String;

    const-string v0, "onClickLeft"

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClickNumber(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    .line 61
    sget-object v2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->DIGIT:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget-object v3, v3, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClickNumber, index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget v5, v5, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isValid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget v3, v2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    .line 65
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget v2, v2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget v3, v3, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mMaxLength:I

    if-le v2, v3, :cond_1

    .line 66
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget-object v2, v2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnItemTouch, length > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget v4, v4, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mMaxLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", return."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    invoke-virtual {v2, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->setInputEnabled(Z)V

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget v2, v2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget v3, v3, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mMaxLength:I

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget v2, v2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    if-lez v2, :cond_2

    .line 70
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget-object v2, v2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mColorSimpleLock:Lcom/color/support/widget/ColorSimpleLock;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget v3, v3, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/color/support/widget/ColorSimpleLock;->setOneCode(I)V

    .line 71
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget-object v2, v2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mPwds:[Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget v3, v3, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    sub-int/2addr v3, v1

    sget-object v1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->DIGIT:[Ljava/lang/String;

    aget-object p1, v1, p1

    aput-object p1, v2, v3

    .line 72
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    sget-object v1, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_DELETE_PWD_INPUT:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    invoke-virtual {p1, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->updateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;)V

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->access$000(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;)V

    .line 76
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget p1, p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mInputPsdNum:I

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget v1, v1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->mMaxLength:I

    if-lt p1, v1, :cond_3

    .line 77
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->setInputEnabled(Z)V

    .line 78
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->verifyPasswordAndUnlock()V

    :cond_3
    return-void
.end method

.method public onClickRight()V
    .locals 1

    .line 89
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->TAG:Ljava/lang/String;

    const-string v0, "onClickRight"

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
