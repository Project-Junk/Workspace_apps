.class public Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;
.super Ljava/lang/Object;
.source "KeyguardVerifyState.java"


# static fields
.field private static final CODE_GET_RPMB_FAILED_REASON:Ljava/lang/String; = "getPwdFromRPMBFailedReason"

.field private static final CODE_GET_RPMB_RESULT:Ljava/lang/String; = "isGetPwdFromRPMBSuccess"

.field private static final CODE_IS_FACE_OPEN:Ljava/lang/String; = "isFaceOpen"

.field private static final CODE_IS_FLASH_LOCK:Ljava/lang/String; = "isBootFlashLocked"

.field private static final CODE_IS_FP_OPEN:Ljava/lang/String; = "isFingerPrintOpen"

.field private static final CODE_IS_NEED_VERIFY_PWD:Ljava/lang/String; = "isNeedVerifyPwdWhenReboot"

.field private static final CODE_RESTATR_MODE:Ljava/lang/String; = "oppoRestartMode"

.field private static final CODE_RPMB_VERIFY_RESULT:Ljava/lang/String; = "isRPMBVerifySuccessInTimes"

.field private static final CODE_SECURITY_MODE:Ljava/lang/String; = "securityMode"

.field private static final CODE_SILENT_REBOOT_TIME:Ljava/lang/String; = "silentRebootTime"

.field private static final CODE_SYSTEM_REBOOT:Ljava/lang/String; = "systemReboot"

.field private static final FLASH_LOCK_UNLOCKED:Ljava/lang/String; = "0"

.field private static final RO_BOOT_FLASH_LOCKED:Ljava/lang/String; = "ro.boot.flash.locked"

.field private static final TAG:Ljava/lang/String; = "KeyguardVerifyState"


# instance fields
.field private mInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->mInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method private addInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addInfo(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "true"

    goto :goto_0

    :cond_0
    const-string p2, "false"

    .line 49
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method addGetRpmbResult(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "isGetPwdFromRPMBSuccess"

    .line 61
    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addInfo(Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    const-string p1, "getPwdFromRPMBFailedReason"

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method addNeedVerifyPwd(Z)V
    .locals 1

    const-string v0, "isNeedVerifyPwdWhenReboot"

    .line 53
    invoke-direct {p0, v0, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method addRPMBVerifyResult(ZI)V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRPMBVerifySuccessInTimes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method addSecurityModeInfo(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "securityMode"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getInfoMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->mInfoMap:Ljava/util/HashMap;

    return-object p0
.end method

.method handleSystemRebooted(IJIZZ)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-string v2, "oppoRestartMode"

    .line 35
    invoke-direct {p0, v2, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addInfo(Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    cmp-long p1, p2, v2

    if-lez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    const-string p2, "silentRebootTime"

    .line 36
    invoke-direct {p0, p2, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addInfo(Ljava/lang/String;Z)V

    if-lez p4, :cond_2

    move v0, v1

    :cond_2
    const-string p1, "systemReboot"

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addInfo(Ljava/lang/String;Z)V

    const-string p1, "isFingerPrintOpen"

    .line 38
    invoke-direct {p0, p1, p5}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addInfo(Ljava/lang/String;Z)V

    const-string p1, "isFaceOpen"

    .line 39
    invoke-direct {p0, p1, p6}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addInfo(Ljava/lang/String;Z)V

    const-string p1, "ro.boot.flash.locked"

    .line 40
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "isBootFlashLocked"

    invoke-direct {p0, p2, p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->addInfo(Ljava/lang/String;Z)V

    return-void
.end method
