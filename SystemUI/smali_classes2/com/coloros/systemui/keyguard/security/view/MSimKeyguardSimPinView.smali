.class public Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;
.super Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView$MSimCheckSimPinThread;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MSimKeyguardSimPinView"


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

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSlotId:I

    .line 51
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSubId:I

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method private getDisplayName()Ljava/lang/String;
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSlotId:I

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    .line 106
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayName(), displayName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getRemainMessage(I)Ljava/lang/String;
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    const p1, 0x7f1103ba

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnlySingleCard()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f110655

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM PIN "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

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

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSlotId:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected varargs getHeadingMsg([I)Ljava/lang/String;
    .locals 3

    .line 88
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSlotId:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 89
    array-length v2, p1

    if-lez v2, :cond_0

    .line 90
    aget v0, p1, v1

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 94
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    const v0, 0x7f11047d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    const p1, 0x7f110463

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs updateMessageDisplay(I[Ljava/lang/Object;)V
    .locals 3

    .line 55
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSimStateHelper:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getSimPinLockedIds()[I

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 56
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 57
    aget v1, p1, p2

    iput v1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSlotId:I

    .line 58
    aget p1, p1, v0

    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSubId:I

    .line 60
    :cond_0
    sget-object p1, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMessageDisplay(), mSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSlotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-array p1, v0, [I

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSlotId:I

    aput v0, p1, p2

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->getHeadingMsg([I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->supportShowPinPukRemains()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSimStateHelper:Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSlotId:I

    invoke-virtual {p2, v0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getSimPinRemains(I)I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 65
    invoke-direct {p0, p2}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->getRemainMessage(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    sget-object p2, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageDisplay getRemainMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnlySingleCard()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportKeyguardExpVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    new-array p1, p2, [I

    invoke-super {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->getHeadingMsg([I)Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyPasswordAndUnlock(), entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mSimCheckInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_2

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->showSimPinUnlockProgressDialog()V

    .line 137
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    if-nez v1, :cond_1

    .line 138
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    .line 139
    sget-object v1, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    const-string v2, "startCheckSimPin(), Multi SIM enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView$1;

    iget v2, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSlotId:I

    iget v3, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSubId:I

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;Ljava/lang/String;II)V

    .line 166
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView$1;->start()V

    :cond_1
    return-void

    .line 129
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v2, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mSlotId:I

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->getHeadingMsg([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mContext:Landroid/content/Context;

    const v2, 0x7f1103ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->clearTexts()V

    .line 132
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mKeyguardUtils:Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->vibrateLongWhenVerify()V

    .line 133
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method
