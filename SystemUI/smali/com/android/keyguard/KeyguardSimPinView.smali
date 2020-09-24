.class public Lcom/android/keyguard/KeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "KeyguardSimPinView"

.field public static final TAG:Ljava/lang/String; = "KeyguardSimPinView"


# instance fields
.field private mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

.field private mRemainingAttempts:I

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mShowDefaultMessage:Z

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSlotId:I

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    .line 64
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 68
    new-instance p1, Lcom/android/keyguard/KeyguardSimPinView$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSimPinView$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSimPinView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPinView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->setLockedSimMessage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSimPinView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardSimPinView;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSimPinView;IZ)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-object p1
.end method

.method private getPinPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f11046a

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_0
    if-lez p1, :cond_4

    .line 183
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    if-le v2, v1, :cond_2

    if-eqz p2, :cond_1

    const p2, 0x7f0f0004

    goto :goto_0

    :cond_1
    const p2, 0x7f0f0007

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSlotId:I

    .line 188
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, p2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    const p2, 0x7f0f0003

    goto :goto_1

    :cond_3
    const p2, 0x7f0f0006

    .line 192
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, p2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    const p2, 0x7f110480

    goto :goto_2

    :cond_5
    const p2, 0x7f110468

    .line 197
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 199
    :goto_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 200
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f11047f

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 201
    invoke-virtual {p0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 203
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayMessage="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardSimPinView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object p1

    .line 310
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 311
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 312
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f1105b3

    const/4 v0, 0x0

    .line 314
    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 316
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 321
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    const v2, 0x7f110483

    .line 299
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private handleSubInfoChangeIfNeeded()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    .line 158
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    const/4 v0, -0x1

    .line 161
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    :cond_0
    return-void
.end method

.method private setLockedSimMessage()V
    .locals 9

    .line 107
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSlotId:I

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v0

    .line 109
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 110
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 112
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    new-array v5, v1, [I

    const/4 v6, 0x0

    const v7, 0x7f0405d2

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, -0x1

    .line 113
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 114
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    const v2, 0x7f110480

    .line 116
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_1

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 119
    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    const v7, 0x7f110481

    .line 121
    new-array v8, v1, [Ljava/lang/Object;

    aput-object v4, v8, v6

    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_2

    .line 123
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v5

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    const v0, 0x7f11047f

    .line 127
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v6

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 133
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private showDefaultMessage()V
    .locals 3

    .line 137
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->setLockedSimMessage()V

    .line 138
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    if-ltz v0, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$2;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    const-string v2, ""

    invoke-direct {v0, p0, v2, v1}, Lcom/android/keyguard/KeyguardSimPinView$2;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    .line 152
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView$2;->start()V

    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 0

    const p0, 0x7f0a0536

    return p0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_string_keyguard_accessibility_sim_pin_unlock:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->resetState()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 221
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    :cond_0
    const v0, 0x7f0a0314

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onResume(I)V
    .locals 1

    .line 236
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onResume(I)V

    .line 237
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->resetState()V

    return-void
.end method

.method public resetState()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    const-string v0, "KeyguardSimPinView"

    const-string v1, "Resetting state"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChangeIfNeeded()V

    .line 97
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->showDefaultMessage()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v0

    const v1, 0x7f0a02fd

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardEsimArea;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 103
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardEsimArea;->setVisibility(I)V

    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v1, 0x7f110460

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    const/4 v0, 0x1

    .line 331
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(ZZ)V

    .line 332
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    if-nez v0, :cond_1

    .line 339
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardSimPinView$3;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 386
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->start()V

    :cond_1
    return-void
.end method
