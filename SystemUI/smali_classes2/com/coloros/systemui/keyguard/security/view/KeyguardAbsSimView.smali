.class public abstract Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;
.super Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;
.source "KeyguardAbsSimView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;
    }
.end annotation


# static fields
.field private static final DIGIT:[Ljava/lang/String;

.field private static final DONE_BUTTON_DEFAULT_TEXT_SIZE_DP:I = 0xf

.field protected static final INVAILD_REMAIN:I = -0x1

.field protected static final PIN_LENGTH:I = 0x4

.field private static final PROGRESS_VALUE:I = 0x64

.field protected static final PUK_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "AbsKeyguardSimView"


# instance fields
.field private mActionDoneBtn:Landroid/widget/TextView;

.field private mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

.field private mKeyboardClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

.field protected mPasswordEntry:Lcom/color/support/widget/ColorEditText;

.field protected volatile mSimCheckInProgress:Z

.field protected mSimStateHelper:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

.field protected mUnlockProgressDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    .line 62
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->DIGIT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    new-instance p1, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mKeyboardClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    .line 132
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mSimStateHelper:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->DIGIT:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$onFinishInflate$0(Landroid/view/View;Z)V
    .locals 1

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnFocusChangeListener onFocusChange hasFocus = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbsKeyguardSimView"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 215
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 217
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mActionDoneBtn:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    if-eqz p1, :cond_1

    .line 219
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    sget-object p1, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_DELETE_PWD_INPUT:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->updateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mActionDoneBtn:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    if-eqz p1, :cond_1

    .line 224
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mNavigationBar:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    sget-object p1, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->forceUpdateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected canSwitchState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected clearTexts()V
    .locals 1

    .line 187
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected dismissProgressDialog()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mUnlockProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mUnlockProgressDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected varargs abstract getHeadingMsg([I)Ljava/lang/String;
.end method

.method protected getUnlockProgressDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 266
    new-instance v0, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x64

    .line 267
    invoke-virtual {v0, v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setMax(I)V

    .line 268
    invoke-virtual {v0, v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setProgress(I)V

    .line 269
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 271
    invoke-virtual {v0, p1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setCancelable(Z)V

    .line 272
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mContext:Landroid/content/Context;

    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x7d9

    .line 275
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    :cond_0
    return-object v0
.end method

.method protected hideProgressDialog()V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mUnlockProgressDialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01a6

    if-ne p1, v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->verifyPasswordAndUnlock()V

    :cond_0
    return-void
.end method

.method public onDeleteActionLongClickRepeated()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 138
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onFinishInflate()V

    const v0, 0x7f0a01a3

    .line 139
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorEditText;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    const/4 v0, 0x1

    .line 140
    new-array v1, v0, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 141
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v2, v1}, Lcom/color/support/widget/ColorEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 142
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1, p0}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 145
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorEditText;->setSelected(Z)V

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/ColorEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    sget-object v1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardAbsSimView$aEtWYLZ0F9k4bjwnixf1psMOsio;->INSTANCE:Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardAbsSimView$aEtWYLZ0F9k4bjwnixf1psMOsio;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorEditText;->setShowSoftInputOnFocus(Z)V

    const v0, 0x7f0a01a6

    .line 151
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mActionDoneBtn:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mActionDoneBtn:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->setTextSizeWithoutScale(Landroid/widget/TextView;F)V

    .line 153
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mActionDoneBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mActionDoneBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;-><init>(Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a01a9

    .line 155
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorNumericKeyboard;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    .line 156
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mKeyboardClickItemListener:Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/ColorNumericKeyboard;->setOnClickItemListener(Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 0

    .line 200
    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onPause()V

    .line 201
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->dismissProgressDialog()V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorEditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public onResume(I)V
    .locals 1

    .line 238
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSecurityView;->onResume(I)V

    .line 241
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorNumericKeyboard;->setTactileFeedbackEnabled(Z)V

    const/4 p1, 0x1

    .line 242
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->setFocusableInTouchMode(Z)V

    .line 243
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    const/4 p1, 0x0

    .line 244
    new-array v0, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->updateMessageDisplay(I[Ljava/lang/Object;)V

    return-void
.end method

.method protected onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimStateChanged(), subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", slotId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", simState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AbsKeyguardSimView"

    invoke-static {p2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p3, p1, :cond_0

    .line 303
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 p1, 0x1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected reportSimUnlocked()V
    .locals 1

    .line 295
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    return-void
.end method

.method public setInputEnabled(Z)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInputEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsKeyguardSimView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mColorNumericKeyboard:Lcom/color/support/widget/ColorNumericKeyboard;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorNumericKeyboard;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setFocusable(Z)V

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setFocusableInTouchMode(Z)V

    if-eqz p1, :cond_0

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    goto :goto_0

    .line 182
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->clearFocus()V

    :goto_0
    return-void
.end method

.method protected shouldLockout()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract verifyPasswordAndUnlock()V
.end method
