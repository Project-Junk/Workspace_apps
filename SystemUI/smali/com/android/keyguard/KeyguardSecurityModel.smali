.class public Lcom/android/keyguard/KeyguardSecurityModel;
.super Ljava/lang/Object;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsPukScreenAvailable:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 61
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_bool_config_enable_puk_unlock_screen:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mIsPukScreenAvailable:Z

    return-void
.end method


# virtual methods
.method getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 2

    .line 72
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityModel;->getSecurityMode(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 78
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mIsPukScreenAvailable:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 79
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v1

    .line 78
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 83
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v0

    .line 83
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 88
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_7

    const/high16 p1, 0x10000

    if-eq p0, p1, :cond_6

    const/high16 p1, 0x20000

    if-eq p0, p1, :cond_5

    const/high16 p1, 0x30000

    if-eq p0, p1, :cond_5

    const/high16 p1, 0x40000

    if-eq p0, p1, :cond_4

    const/high16 p1, 0x50000

    if-eq p0, p1, :cond_4

    const/high16 p1, 0x60000

    if-eq p0, p1, :cond_4

    const/high16 p1, 0x80000

    if-ne p0, p1, :cond_3

    goto :goto_0

    .line 106
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown security quality:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_4
    :goto_0
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 92
    :cond_5
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 101
    :cond_6
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 103
    :cond_7
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityModel;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method
