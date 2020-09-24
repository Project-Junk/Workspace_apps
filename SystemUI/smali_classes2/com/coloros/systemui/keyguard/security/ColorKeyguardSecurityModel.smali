.class public Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityModel;
.super Ljava/lang/Object;
.source "ColorKeyguardSecurityModel.java"


# static fields
.field private static final LENGTH_FOUR:I = 0x4

.field private static final LENGTH_SIX:I = 0x6

.field private static final TAG:Ljava/lang/String; = "ColorKeyguardSecurityModel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 1

    .line 133
    sget-object v0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityModel$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const p0, 0x7f0d0092

    return p0

    :pswitch_1
    const p0, 0x7f0d0094

    return p0

    :pswitch_2
    const p0, 0x7f0d0097

    return p0

    .line 148
    :pswitch_3
    invoke-static {}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isMultiSimEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0d0149

    return p0

    :cond_0
    const p0, 0x7f0d009c

    return p0

    .line 143
    :pswitch_4
    invoke-static {}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isMultiSimEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0d0148

    return p0

    :cond_1
    const p0, 0x7f0d009b

    return p0

    :pswitch_5
    const p0, 0x7f0d0095

    return p0

    :pswitch_6
    const p0, 0x7f0d0098

    return p0

    :pswitch_7
    const p0, 0x7f0d0096

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getNumericPwdLength(Landroid/content/Context;I)I
    .locals 3

    const-string v0, "ColorKeyguardSecurityModel"

    const/4 v1, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "PASSWORD_LENGTH"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getNumericPwdLength(), length="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumericPwdLength(), e="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public static getSecurityMode(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 2

    .line 28
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityModel;->getSecurityModeInSimCard(Landroid/content/Context;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 32
    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityModel;->getSecurityModeInSettings(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method private static getSecurityModeInSettings(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 5

    .line 53
    invoke-static {}, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->isLockDeadState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->LockDead:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 56
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 59
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 60
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 61
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecurityModeInSettings(), security="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ColorKeyguardSecurityModel"

    invoke-static {v4, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_8

    const/high16 v3, 0x20000

    if-eq v2, v3, :cond_4

    const/high16 v3, 0x30000

    if-eq v2, v3, :cond_4

    const/high16 p0, 0x40000

    if-eq v2, p0, :cond_2

    const/high16 p0, 0x50000

    if-eq v2, p0, :cond_2

    const/high16 p0, 0x60000

    if-eq v2, p0, :cond_2

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown unlock mode:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    :goto_0
    move-object v0, p0

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 67
    invoke-static {p0, v1}, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityModel;->getNumericPwdLength(Landroid/content/Context;I)I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_5

    .line 68
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_5
    const/4 p1, 0x6

    if-ne p0, p1, :cond_6

    .line 69
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PINSix:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 70
    :cond_6
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Numeric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 72
    :cond_7
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    goto :goto_1

    .line 82
    :cond_8
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 83
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    :cond_9
    :goto_1
    return-object v0
.end method

.method private static getSecurityModeInSimCard(Landroid/content/Context;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 5

    .line 36
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 38
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 39
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_1

    .line 40
    array-length v3, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 41
    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 42
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_0

    .line 43
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    .line 44
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isPukUnlockEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_2
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public static getViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 1

    .line 104
    sget-object v0, Lcom/coloros/systemui/keyguard/security/ColorKeyguardSecurityModel$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const p0, 0x7f0a0308

    return p0

    :pswitch_1
    const p0, 0x7f0a01aa

    return p0

    :pswitch_2
    const p0, 0x7f0a01ad

    return p0

    .line 117
    :pswitch_3
    invoke-static {}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isMultiSimEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0a03cd

    return p0

    :cond_0
    const p0, 0x7f0a01b0

    return p0

    .line 112
    :pswitch_4
    invoke-static {}, Lcom/coloros/systemui/keyguard/telephony/SimStateHelper;->isMultiSimEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0a03cc

    return p0

    :cond_1
    const p0, 0x7f0a01af

    return p0

    :pswitch_5
    const p0, 0x7f0a01ab

    return p0

    :pswitch_6
    const p0, 0x7f0a01ae

    return p0

    :pswitch_7
    const p0, 0x7f0a01ac

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
