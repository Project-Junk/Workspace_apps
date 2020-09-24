.class public Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;
.super Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;
.source "ColorKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$CheckSimPukThread;,
        Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "KeyguardSimPukView"


# instance fields
.field protected mStateMachine:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    new-instance p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mStateMachine:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getRemainMessage(I)Ljava/lang/String;
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 159
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    const p1, 0x7f1103bb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM PUK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

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

    .line 153
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mSimStateHelper:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getIsAuTelstra()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f110432

    goto :goto_0

    :cond_0
    const p0, 0x7f110431

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onResume(I)V
    .locals 0

    .line 135
    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->onResume(I)V

    .line 136
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mStateMachine:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->reset()V

    return-void
.end method

.method protected showSimPukUnlockProgressDialog()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mUnlockProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const v0, 0x7f110483

    .line 222
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->getUnlockProgressDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mUnlockProgressDialog:Landroid/app/Dialog;

    .line 224
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mUnlockProgressDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected varargs updateMessageDisplay(I[Ljava/lang/Object;)V
    .locals 2

    const/4 p1, 0x0

    .line 141
    new-array p2, p1, [I

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->getHeadingMsg([I)Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-static {}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->supportShowPinPukRemains()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mSimStateHelper:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getSimPukRemains(I)I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->getRemainMessage(I)Ljava/lang/String;

    move-result-object p2

    .line 146
    sget-object p1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageDisplay getRemainMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mStateMachine:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->next()V

    return-void
.end method

.method protected verifyPukAndUpdatePin()V
    .locals 3

    .line 183
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->showSimPukUnlockProgressDialog()V

    .line 184
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mSimCheckInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mSimCheckInProgress:Z

    .line 186
    new-instance v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mStateMachine:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->getPuk()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mStateMachine:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->getPin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$1;->start()V

    :cond_0
    return-void
.end method
