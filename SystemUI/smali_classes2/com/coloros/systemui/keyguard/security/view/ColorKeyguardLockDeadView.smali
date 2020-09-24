.class public final Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;
.super Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;
.source "ColorKeyguardLockDeadView.java"


# static fields
.field private static final LEAVE_PHONE_NUM_DEFAULT_TEXT_SIZE_DP:I = 0xd

.field private static final TAG:Ljava/lang/String; = "KeyguardLockDeadView"

.field private static final UNLOCK_FINDPHONE_KEYGUARD_ACTION:Ljava/lang/String; = "oppo.intent.action.unlock_findphone_keyguard"

.field private static final UNLOCK_FINDPHONE_KEYGUARD_PACKAGE:Ljava/lang/String; = "com.coloros.findmyphone"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updatePhoneNum()V
    .locals 4

    const v0, 0x7f0a034a

    .line 72
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->setTextSizeWithoutScale(Landroid/widget/TextView;F)V

    .line 74
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->mContext:Landroid/content/Context;

    const v2, 0x7f1104e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->getLockDeadPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {}, Lcom/coloros/common/util/Util;->getCommonColorFont()Landroid/graphics/Typeface;

    move-result-object v3

    .line 77
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0, v3}, Lcom/color/support/widget/ColorEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 84
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p0, 0x8

    .line 81
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method protected canSwitchState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getDefaultOkKeyState()Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;
    .locals 0

    .line 105
    sget-object p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->GO_DONE:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    return-object p0
.end method

.method protected getPasswordMode()Ljava/lang/String;
    .locals 0

    const-string p0, "lock_dead"

    return-object p0
.end method

.method protected needShowNavigationBar()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->onFinishInflate()V

    .line 44
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->updatePhoneNum()V

    return-void
.end method

.method protected onPendingLockCheckedSuccess(I)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->onPendingLockCheckedSuccess(I)V

    .line 64
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->closeLockDeadState(Landroid/content/Context;)V

    const-string p1, "KeyguardLockDeadView"

    const-string v0, "onPendingLockCheckedSuccess: send unlock broadcast to findPhone."

    .line 65
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance p1, Landroid/content/Intent;

    const-string v0, "oppo.intent.action.unlock_findphone_keyguard"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.coloros.findmyphone"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume(I)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPasswordView;->onResume(I)V

    .line 51
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->updatePhoneNum()V

    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs updateMessageDisplay(I[Ljava/lang/Object;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->mContext:Landroid/content/Context;

    const v1, 0x7f1104ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardLockDeadView;->mContext:Landroid/content/Context;

    const v0, 0x7f1104ef

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    return-void
.end method
