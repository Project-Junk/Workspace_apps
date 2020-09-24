.class public Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;
.super Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$MSimCheckSimPukThread;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MSimKeyguardSimPukView"


# instance fields
.field private mSlotId:I

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSlotId:I

    .line 46
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSubId:I

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method private getRemainMessage(I)Ljava/lang/String;
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    const p1, 0x7f1103bb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnlySingleCard()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f110655

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM PUK "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSlotId:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " PUK "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    .line 75
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateSubIdAndSlotId()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSimStateHelper:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getSimPukLockedIds()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 92
    aget v1, v0, v1

    iput v1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSlotId:I

    .line 93
    aget v0, v0, v2

    iput v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSubId:I

    .line 95
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSimKeyguardSimPukView--updateSubIdAndSlotId(), mSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSlotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSlotId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected varargs getHeadingMsg([I)Ljava/lang/String;
    .locals 3

    .line 82
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSlotId:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 83
    array-length v2, p1

    if-lez v2, :cond_0

    .line 84
    aget v0, p1, v1

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mContext:Landroid/content/Context;

    const p1, 0x7f110464

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/Object;

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs updateMessageDisplay(I[Ljava/lang/Object;)V
    .locals 2

    .line 51
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnlySingleCard()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportKeyguardExpVersion()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    new-array p1, p2, [I

    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->getHeadingMsg([I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->updateSubIdAndSlotId()V

    const/4 p1, 0x1

    .line 55
    new-array p1, p1, [I

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSlotId:I

    aput v0, p1, p2

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->getHeadingMsg([I)Ljava/lang/String;

    move-result-object p1

    .line 57
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->supportShowPinPukRemains()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 58
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSimStateHelper:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSlotId:I

    invoke-virtual {p2, v0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getSimPukRemains(I)I

    move-result p2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    .line 60
    invoke-direct {p0, p2}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->getRemainMessage(I)Ljava/lang/String;

    move-result-object p1

    .line 61
    sget-object p2, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageDisplay getRemainMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method protected verifyPukAndUpdatePin()V
    .locals 8

    .line 113
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->showSimPukUnlockProgressDialog()V

    .line 114
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSimCheckInProgress:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSimCheckInProgress:Z

    .line 116
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->updateSubIdAndSlotId()V

    .line 117
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyPasswordAndUnlock(), mSimCheckInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSimCheckInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mStateMachine:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->getPin()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mStateMachine:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->getPuk()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSlotId:I

    iget v7, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->mSubId:I

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;II)V

    .line 147
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$1;->start()V

    :cond_0
    return-void
.end method
