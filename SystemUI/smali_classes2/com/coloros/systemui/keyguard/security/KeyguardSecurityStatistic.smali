.class public Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;
.super Ljava/lang/Object;
.source "KeyguardSecurityStatistic.java"


# static fields
.field private static final CODE_KEYGUARD_PWD_CHECK_RESULT:Ljava/lang/String; = "check_result"

.field private static final CODE_KEYGUARD_PWD_SECURITY_MODE:Ljava/lang/String; = "security_mode"

.field public static final CODE_SECURITY_MODE_LOCKDEAD:Ljava/lang/String; = "lock_dead"

.field public static final CODE_SECURITY_MODE_NUMERIC:Ljava/lang/String; = "numeric"

.field public static final CODE_SECURITY_MODE_PASSWORD:Ljava/lang/String; = "password"

.field public static final CODE_SECURITY_MODE_PATTERN:Ljava/lang/String; = "pattern"

.field public static final CODE_SECURITY_MODE_PIN:Ljava/lang/String; = "pin"

.field public static final CODE_SECURITY_MODE_PIN_SIX:Ljava/lang/String; = "pin_six"

.field public static final CODE_SECURITY_MODE_SIM_PIN:Ljava/lang/String; = "sim_pin"

.field public static final CODE_SECURITY_MODE_SIM_PUK:Ljava/lang/String; = "sim_puk"

.field private static final EXPANSION_HIDDEN:F = 1.0f

.field private static final EXPANSION_VISIBLE:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendOnBackPressed(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, "virtual_back_button_in_security_view"

    goto :goto_0

    :cond_0
    const-string p1, "keyboard_back_button_in_security_view"

    goto :goto_0

    :cond_1
    const-string p1, "physical_back_button_in_security_view"

    .line 54
    :goto_0
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static sendOnClickEmergencyButton(Landroid/content/Context;)V
    .locals 1

    const-string v0, "emergency_button_in_security_view"

    .line 65
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static sendOnKeyguardUnlock(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unlock_with_default_keyguard"

    .line 34
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "unlock_with_not_default_keyguard"

    .line 36
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static sendOnMoveToNormalView(Landroid/content/Context;FF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    cmpg-float p1, p2, v0

    if-gez p1, :cond_0

    const-string p1, "move_to_normal_view_in_security_view"

    .line 90
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static sendOnNeedVerifyWhenReboot(Landroid/content/Context;)V
    .locals 1

    const-string v0, "needs_verify_pwd_when_rebooted"

    .line 73
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static sendOnNeedVerifyWhenTimeout(Landroid/content/Context;)V
    .locals 1

    const-string v0, "needs_verify_pwd_beyond_72_hours"

    .line 77
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static sendOnPasswordChecked(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string v1, "check_result"

    .line 59
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "security_mode"

    .line 60
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "check_inputed_pwd_in_security_view"

    .line 61
    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static sendOnPwdLockout(Landroid/content/Context;)V
    .locals 1

    const-string v0, "verify_pwd_attempt_lockout"

    .line 69
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static sendOnUnlockByFingerprint(Landroid/content/Context;)V
    .locals 1

    const-string v0, "check_fp_in_security_view"

    .line 81
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static sendOnUnlockByFingerprintLockout(Landroid/content/Context;)V
    .locals 1

    const-string v0, "check_fp_attempt_lockout"

    .line 85
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static sendRebootState(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keyguard_reboot_state"

    .line 95
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
