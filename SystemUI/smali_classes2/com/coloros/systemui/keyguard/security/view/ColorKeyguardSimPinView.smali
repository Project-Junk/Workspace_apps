.class public Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;
.super Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;
.source "ColorKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$CheckSimPinThread;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "KeyguardSimPinView"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method private getRemainMessage(I)Ljava/lang/String;
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mContext:Landroid/content/Context;

    const p1, 0x7f1103ba

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM PIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mContext:Landroid/content/Context;

    const v1, 0x7f110655

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected varargs getHeadingMsg([I)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mSimStateHelper:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getIsAuTelstra()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f110482

    goto :goto_0

    :cond_0
    const p0, 0x7f110480

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected showSimPinUnlockProgressDialog()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mUnlockProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const v0, 0x7f110483

    .line 126
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->getUnlockProgressDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mUnlockProgressDialog:Landroid/app/Dialog;

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mUnlockProgressDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected varargs updateMessageDisplay(I[Ljava/lang/Object;)V
    .locals 2

    const/4 p1, 0x0

    .line 40
    new-array p2, p1, [I

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->getHeadingMsg([I)Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-static {}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->supportShowPinPukRemains()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mSimStateHelper:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getSimPinRemains(I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->getRemainMessage(I)Ljava/lang/String;

    move-result-object p2

    .line 45
    sget-object p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageDisplay getRemainMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    const v1, 0x7f1103ba

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(I)V

    .line 87
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->clearTexts()V

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 89
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerify()V

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->showSimPinUnlockProgressDialog()V

    .line 93
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mSimCheckInProgress:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->mSimCheckInProgress:Z

    .line 95
    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;

    invoke-direct {v1, p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$1;->start()V

    :cond_1
    return-void
.end method
