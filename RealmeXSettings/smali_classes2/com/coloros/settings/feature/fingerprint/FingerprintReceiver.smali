.class public Lcom/coloros/settings/feature/fingerprint/FingerprintReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintReceiver.java"


# static fields
.field private static final MY_USER_ID:I

.field public static final OPPO_ACTION_CLOSE_FINGERPRINT_UNLOCK:Ljava/lang/String; = "oppo.intent.action.CLOSE_FINGERPRINT_UNLOCK"

.field public static final OPPO_ACTION_DELETE_FINGERPRINT:Ljava/lang/String; = "oppo.intent.action.DELETE_FINGERPRINTS"

.field private static final OPPO_ACTION_PASSWORD_QUALITY_UNSPECIFIED:Ljava/lang/String; = "oppo.intent.action.PASSWORD_QUALITY_UNSPECIFIED"

.field private static final OPPO_ACTION_SET_PASSWORD:Ljava/lang/String; = "oppo.intent.action.SET_UNLOCK_PASSWORD"

.field private static final OPPO_ACTION_SET_PASSWORD_EXTRA:Ljava/lang/String; = "setOn"

.field private static final TAG:Ljava/lang/String; = "FingerprintReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/coloros/settings/feature/fingerprint/FingerprintReceiver;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "FingerprintReceiver"

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "action = "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "oppo.intent.action.PASSWORD_QUALITY_UNSPECIFIED"

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 43
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "from_fingerprint_ui"

    .line 44
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_8

    .line 45
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 46
    sget p2, Lcom/coloros/settings/feature/fingerprint/FingerprintReceiver;->MY_USER_ID:I

    invoke-static {p1, p2, v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->deleteAllFingerprints(Landroid/content/Context;ILandroid/os/Handler;)V

    .line 49
    :cond_1
    invoke-static {p1}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 50
    sget p2, Lcom/coloros/settings/feature/fingerprint/FingerprintReceiver;->MY_USER_ID:I

    invoke-static {p1, p2, v4, v4}, Lcom/coloros/settings/feature/face/c;->a(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Handler;)V

    .line 53
    :cond_2
    invoke-static {p1, v4, v4}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Lcom/coloros/settings/privacy/a/g;[B)V

    return-void

    :cond_3
    const-string p1, "Utils.isSecure is true"

    .line 56
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "oppo.intent.action.DELETE_FINGERPRINTS"

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 60
    sget p2, Lcom/coloros/settings/feature/fingerprint/FingerprintReceiver;->MY_USER_ID:I

    invoke-static {p1, p2, v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->deleteAllFingerprints(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void

    :cond_5
    const-string v0, "oppo.intent.action.CLOSE_FINGERPRINT_UNLOCK"

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    invoke-static {p1, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockEnabled(Landroid/content/Context;Z)V

    .line 64
    invoke-static {p1, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockBackupEnabled(Landroid/content/Context;Z)V

    return-void

    :cond_6
    const-string v0, "oppo.intent.action.SET_UNLOCK_PASSWORD"

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "setOn"

    .line 66
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 68
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 69
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->hasFingerprints(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 70
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreUnlockEnabled(Landroid/content/Context;)V

    .line 71
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreSecurityVerifyEnabled(Landroid/content/Context;)V

    .line 74
    :cond_7
    invoke-static {p1}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 75
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceUnlockEnabled(Landroid/content/Context;)V

    :cond_8
    return-void

    .line 35
    :cond_9
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "intent is null "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-nez p2, :cond_a

    move p2, v3

    goto :goto_1

    :cond_a
    move p2, v1

    :goto_1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", context is null "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_b

    move v1, v3

    :cond_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
