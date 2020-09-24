.class public Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;
.super Ljava/lang/Object;
.source "FingprintSwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingprintSwitchHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;ILandroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2, p3, p4}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->removeManagedProfileFingerprintsAndFinishIfNecessary(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;ILandroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public static deleteAllCompelete(Landroid/content/Context;)V
    .locals 3

    .line 143
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 144
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteAllCompelete : MSG_DELETE_ALL "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingprintSwitchHelper"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->deleteAllCompelete(Landroid/content/Context;I)V

    return-void
.end method

.method public static deleteAllCompelete(Landroid/content/Context;I)V
    .locals 0

    .line 151
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerprintCount(Landroid/content/Context;I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 153
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockEnabled(Landroid/content/Context;Z)V

    .line 154
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptEnabled(Landroid/content/Context;Z)V

    .line 155
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptFileEnabled(Landroid/content/Context;Z)V

    .line 156
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setEncryptForSecurityCenter(Landroid/content/Context;Z)V

    .line 157
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->deleteLastFingerprintCompelete(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static deleteAllFingerprints(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    .line 51
    :cond_0
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_1

    return-void

    .line 55
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 57
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deleteAllFingerprints : MSG_DELETE_ALL "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FingprintSwitchHelper"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_4

    .line 62
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/ColorFingerprintSettings;->getDefaultUnlockWay()I

    move-result v3

    const-string v4, "way_to_unlock_when_screen_off"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    :cond_3
    new-instance v1, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper$BatchRemoveCallback;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;ILandroid/os/Handler;)V

    .line 67
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 70
    new-instance p2, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p2

    move v5, p1

    invoke-direct/range {v3 .. v8}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 71
    invoke-virtual {v0, p2, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 72
    invoke-static {p0, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerprintCount(Landroid/content/Context;I)V

    return-void

    .line 74
    :cond_4
    invoke-static {p0, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->deleteAllCompelete(Landroid/content/Context;I)V

    return-void
.end method

.method public static erollComplete(Landroid/content/Context;)V
    .locals 4

    const-string v0, "FingprintSwitchHelper"

    if-eqz p0, :cond_3

    .line 24
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 25
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "erollComplete fingerCount = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_1

    .line 29
    invoke-static {p0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerprintCount(Landroid/content/Context;I)V

    .line 30
    invoke-static {p0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onFingerEnrollCompleted(Landroid/content/Context;I)V

    .line 32
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreUnlockEnabled(Landroid/content/Context;)V

    .line 34
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreSecurityVerifyEnabled(Landroid/content/Context;)V

    return-void

    :cond_1
    const-string p0, "erollComplete has no Fingerprints"

    .line 37
    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string p0, "context is null"

    .line 40
    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static removeManagedProfileFingerprintsAndFinishIfNecessary(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;ILandroid/os/Handler;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 3

    .line 125
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 126
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 127
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    .line 130
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 132
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 133
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 134
    invoke-virtual {p4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    iget p0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, p0, p3}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->deleteAllFingerprints(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
