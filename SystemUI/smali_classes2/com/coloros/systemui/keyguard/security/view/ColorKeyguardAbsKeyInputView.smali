.class public abstract Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;
.super Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;
.source "ColorKeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "KeyguardAbsKeyInputView"


# instance fields
.field private mBackLabel:Ljava/lang/String;

.field protected mCheckBox:Landroid/widget/CheckBox;

.field protected mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

.field private mDoneLabel:Ljava/lang/String;

.field protected mEditContainer:Landroid/view/View;

.field protected mEditText:Lcom/color/support/widget/ColorEditText;

.field protected mEditTextBg:Landroid/view/View;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mKeyboardGoState:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

.field protected mKeyboardHelper:Lcom/color/support/widget/help/KeyboardHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f11044f

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mBackLabel:Ljava/lang/String;

    const p2, 0x7f1104a1

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mDoneLabel:Ljava/lang/String;

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getSelectionStart()I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 189
    :cond_1
    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_2

    .line 187
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->append(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private disableShowActionMenu()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 268
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$2;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method private isConfirmKey(I)Z
    .locals 0

    const/16 p0, 0x42

    if-eq p1, p0, :cond_1

    const/16 p0, 0x17

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected clearTexts()V
    .locals 1

    .line 217
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected abstract getDefaultOkKeyState()Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;
.end method

.method public synthetic lambda$onFinishInflate$0$ColorKeyguardAbsKeyInputView(Landroid/view/View;)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$1$ColorKeyguardAbsKeyInputView(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    if-eqz p2, :cond_0

    const/16 p1, 0x91

    goto :goto_0

    :cond_0
    const/16 p1, 0x81

    :goto_0
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->setInputType(I)V

    return-void
.end method

.method public synthetic lambda$onFinishInflate$2$ColorKeyguardAbsKeyInputView(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    :cond_0
    move p2, p1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-eqz p3, :cond_2

    .line 107
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_2

    move p3, p1

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    return v0

    .line 110
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V

    return p1
.end method

.method public synthetic lambda$setInputEnabled$3$ColorKeyguardAbsKeyInputView()V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 205
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->findFocus()Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onCharacter(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 166
    sget-object p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$3;->$SwitchMap$com$coloros$systemui$keyguard$security$view$ColorKeyguardAbsKeyInputView$OkKeyGoState:[I

    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mKeyboardGoState:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->verifyPasswordAndUnlock()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 168
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->onBackActionClicked(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 176
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance p1, Landroid/view/KeyEvent;

    const/4 p2, 0x0

    const/16 v0, 0x43

    invoke-direct {p1, p2, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 178
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->append(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 293
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 294
    new-instance p1, Lcom/color/support/widget/help/KeyboardHelper;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorKeyboardView;->getKeyboardView()Lcom/color/support/widget/SecurityKeyboardView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/color/support/widget/help/KeyboardHelper;-><init>(Landroid/content/Context;Lcom/color/support/widget/SecurityKeyboardView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mKeyboardHelper:Lcom/color/support/widget/help/KeyboardHelper;

    .line 295
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mKeyboardHelper:Lcom/color/support/widget/help/KeyboardHelper;

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorKeyboardView;->setKeyboardHelper(Lcom/color/support/widget/help/KeyboardHelper;)V

    .line 296
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorKeyboardView;->getKeyboardView()Lcom/color/support/widget/SecurityKeyboardView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/color/support/widget/SecurityKeyboardView;->setOnKeyboardCharListener(Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;)V

    .line 297
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorKeyboardView;->getKeyboardView()Lcom/color/support/widget/SecurityKeyboardView;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboardType(I)V

    .line 298
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    .line 299
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(), mKeyboardGoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mKeyboardGoState:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", needUpdateOkKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardAbsKeyInputView"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->getDefaultOkKeyState()Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->updateKeyboardOkKey(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;Z)V

    goto :goto_2

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mKeyboardGoState:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->updateKeyboardOkKey(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;Z)V

    :goto_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .line 82
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onFinishInflate()V

    const v0, 0x7f0a01a2

    .line 83
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditContainer:Landroid/view/View;

    const v0, 0x7f0a01a3

    .line 84
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorEditText;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    .line 85
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setSelected(Z)V

    .line 90
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    new-instance v2, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardAbsKeyInputView$LPfqtx-lvXSO1EJYqqNo1MEr4cQ;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardAbsKeyInputView$LPfqtx-lvXSO1EJYqqNo1MEr4cQ;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;)V

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setInputType(I)V

    .line 93
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorEditText;->setShowSoftInputOnFocus(Z)V

    .line 94
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->disableShowActionMenu()V

    const v0, 0x7f0a01a4

    .line 95
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditTextBg:Landroid/view/View;

    const v0, 0x7f0a01a5

    .line 96
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mCheckBox:Landroid/widget/CheckBox;

    .line 97
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardAbsKeyInputView$Vb5ipkAStGxsRxOrt0Tst9abIYw;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardAbsKeyInputView$Vb5ipkAStGxsRxOrt0Tst9abIYw;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v1}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 101
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mIsClosedSuperFirewall:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardAbsKeyInputView$3HoC5ayzyLwVOpccjB5g-X2UJdc;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardAbsKeyInputView$3HoC5ayzyLwVOpccjB5g-X2UJdc;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;)V

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    const v0, 0x7f0a01a7

    .line 116
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorKeyboardView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorKeyboardView;->getTopView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorKeyboardView;->getKeyboardView()Lcom/color/support/widget/SecurityKeyboardView;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingTop()I

    move-result v3

    .line 120
    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Lcom/color/support/widget/SecurityKeyboardView;->getPaddingBottom()I

    move-result v5

    .line 121
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070443

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 119
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/color/support/widget/SecurityKeyboardView;->setPadding(IIII)V

    .line 122
    invoke-virtual {v0, p0}, Lcom/color/support/widget/SecurityKeyboardView;->setOnKeyboardCharListener(Lcom/color/support/widget/SecurityKeyboardView$OnKeyboardCharListener;)V

    const/4 v2, 0x2

    .line 123
    invoke-virtual {v0, v2}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboardType(I)V

    .line 124
    new-instance v2, Lcom/color/support/widget/help/KeyboardHelper;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/color/support/widget/help/KeyboardHelper;-><init>(Landroid/content/Context;Lcom/color/support/widget/SecurityKeyboardView;Landroid/view/View;)V

    iput-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mKeyboardHelper:Lcom/color/support/widget/help/KeyboardHelper;

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mKeyboardHelper:Lcom/color/support/widget/help/KeyboardHelper;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorKeyboardView;->setKeyboardHelper(Lcom/color/support/widget/help/KeyboardHelper;)V

    .line 126
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    if-eqz v0, :cond_1

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    const/4 p0, 0x0

    return p0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorEditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onResume(I)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onResume(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->getDefaultOkKeyState()Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->updateKeyboardOkKey(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;Z)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setInputEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAbsKeyInputView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorKeyboardView;->getKeyboardView()Lcom/color/support/widget/SecurityKeyboardView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/color/support/widget/SecurityKeyboardView;->setKeyboardViewEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setFocusable(Z)V

    .line 198
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setFocusableInTouchMode(Z)V

    if-eqz p1, :cond_0

    .line 202
    new-instance p1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardAbsKeyInputView$T1x_km7ZY1t1H_PQkX13z4t_gAg;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$ColorKeyguardAbsKeyInputView$T1x_km7ZY1t1H_PQkX13z4t_gAg;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;)V

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mEditText:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->clearFocus()V

    .line 210
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorKeyboardView;->getKeyboardView()Lcom/color/support/widget/SecurityKeyboardView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/color/support/widget/SecurityKeyboardView;->setPopupOffset(II)V

    .line 211
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mColorKeyboardView:Lcom/color/support/widget/ColorKeyboardView;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorKeyboardView;->getKeyboardView()Lcom/color/support/widget/SecurityKeyboardView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/color/support/widget/SecurityKeyboardView;->clearPressState()V

    :goto_0
    return-void
.end method

.method protected updateKeyboardOkKey(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mKeyboardGoState:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    if-eq v0, p1, :cond_4

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateKeyboardOkKey(), state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forceUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardAbsKeyInputView"

    invoke-static {v0, p2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->getDefaultOkKeyState()Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    move-result-object p1

    .line 151
    :cond_1
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mKeyboardGoState:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    .line 152
    sget-object p2, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$3;->$SwitchMap$com$coloros$systemui$keyguard$security$view$ColorKeyguardAbsKeyInputView$OkKeyGoState:[I

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mKeyboardHelper:Lcom/color/support/widget/help/KeyboardHelper;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mDoneLabel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/help/KeyboardHelper;->updateEndKey(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mKeyboardHelper:Lcom/color/support/widget/help/KeyboardHelper;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;->mBackLabel:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/help/KeyboardHelper;->updateEndKey(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected abstract verifyPasswordAndUnlock()V
.end method
