.class public Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ColorKeyguardMessageArea.java"


# static fields
.field private static final ERROR_MSG_DISAPPEAR_DURATION:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "ColorKeyguardMessageArea"


# instance fields
.field private mEmptyMsg:Ljava/lang/String;

.field private mIsErrorMsgShowing:Z

.field private mNormalMsg:Ljava/lang/String;

.field private mShowErrorMsgRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {}, Lcom/coloros/common/util/Util;->getCommonColorFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setTypeface(Landroid/graphics/Typeface;)V

    const p2, 0x7f110408

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mEmptyMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearMsg()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mNormalMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ColorKeyguardMessageArea"

    const-string v1, "clearMsg()"

    .line 69
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mEmptyMsg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mNormalMsg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mIsErrorMsgShowing:Z

    .line 73
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mShowErrorMsgRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public synthetic lambda$setErrorMsg$0$ColorKeyguardMessageArea()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mIsErrorMsgShowing:Z

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mNormalMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setErrorMsg(), errorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", normalMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorKeyguardMessageArea"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mIsErrorMsgShowing:Z

    .line 55
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mNormalMsg:Ljava/lang/String;

    .line 56
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mShowErrorMsgRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    .line 57
    new-instance p1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardMessageArea$dwjptZYZFdT9nRbZhxcpW-ibOak;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardMessageArea$dwjptZYZFdT9nRbZhxcpW-ibOak;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mShowErrorMsgRunnable:Ljava/lang/Runnable;

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mShowErrorMsgRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setMessage(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mIsErrorMsgShowing:Z

    const-string v1, "ColorKeyguardMessageArea"

    if-eqz v0, :cond_1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessage(), errorMsg showing, normalMsg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mNormalMsg:Ljava/lang/String;

    return-void

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessage(), normalMsg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->mNormalMsg:Ljava/lang/String;

    return-void
.end method
