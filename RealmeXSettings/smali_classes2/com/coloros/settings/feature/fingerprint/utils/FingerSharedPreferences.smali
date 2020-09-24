.class public Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;
.super Ljava/lang/Object;
.source "FingerSharedPreferences.java"


# static fields
.field private static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final FACE_ENROLL_CLICKED:Ljava/lang/String; = "face_enroll_clicked"

.field private static final FACE_REMAIN_UNLOCK_DEFAULT_VALUE_TRUE:Z = true

.field private static final FACE_UNLOCK_SWITCH_BACKUP_PREFS:Ljava/lang/String; = "face_unlock_backup"

.field private static final FACE_UNLOCK_SWITCH_PREFS:Ljava/lang/String; = "face_unlock"

.field private static final FACE_UNLOCK_SWITCH_REMAIN_UNLOCK_BACKUP_PREFS:Ljava/lang/String; = "face_unlock_remain_unlock_backup"

.field private static final FACE_UNLOCK_SWITCH_REMAIN_UNLOCK_PREFS:Ljava/lang/String; = "face_unlock_remain_unlock"

.field private static final FACE_UNLOCK_SWITCH_SREEN_FILL_LIGHT_BACKUP_PREFS:Ljava/lang/String; = "face_unlock_screen_fill_light_backup"

.field private static final FACE_UNLOCK_SWITCH_SREEN_FILL_LIGHT_PREFS:Ljava/lang/String; = "face_unlock_screen_fill_light"

.field public static final FINGERPRINT_COUNT:Ljava/lang/String; = "fingerprint_count"

.field public static final FINGERPRINT_ENCRYPT:Ljava/lang/String; = "fingerprint_encrypt"

.field public static final FINGERPRINT_ENCRYPT_FILE:Ljava/lang/String; = "fingerprint_encrypt_file"

.field public static final FINGERPRINT_SECRITY_CENTER:Ljava/lang/String; = "fingerprint_security_verify"

.field private static final FINGERPRINT_SECRITY_CENTER_BACKUP:Ljava/lang/String; = "fingerprint_security_verify_backup"

.field public static final FINGERPRINT_UNLOCK:Ljava/lang/String; = "fingerprint_unlock"

.field private static final FINGERPRINT_UNLOCK_BACKUP:Ljava/lang/String; = "fingerprint_unlock_backup"

.field private static final HAS_COPY_PREFERENCES:Ljava/lang/String; = "has_copy_preference_version_N"

.field private static final HAS_INIT_SETTING_VALUES:Ljava/lang/String; = "has_init_settings_values_version_M"

.field public static final HAS_STATISTICS_SWITCH:Ljava/lang/String; = "has_statistics_switches"

.field private static final KEY_FINGER_RESET_DIALOG_NO_SHOW_ANYMORE:Ljava/lang/String; = "finger_reset_dialog_no_show_anymore"

.field private static final KEY_NAME_IN_PREFERENCES:[Ljava/lang/String;

.field private static final KEY_OPTICAL_FINGERPRINT_TYPE:Ljava/lang/String; = "optical_fingerprint_manufacturer_type"

.field public static final KEY_OPTICAL_FINGERPRINT_TYPE_GOODIX:I = 0x2

.field public static final KEY_OPTICAL_FINGERPRINT_TYPE_NONE:I = 0x0

.field public static final KEY_OPTICAL_FINGERPRINT_TYPE_OTHER:I = 0x3

.field public static final KEY_OPTICAL_FINGERPRINT_TYPE_SILEAD:I = 0x1

.field private static final LAST_FINGERPRINT_ID:Ljava/lang/String; = "last_fingerprint_id"

.field public static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "fingerprint_preferences"

.field private static final TAG:Ljava/lang/String; = "FingerprintApp_SharedPreferences"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "fingerprint_unlock"

    const-string v1, "fingerprint_encrypt"

    const-string v2, "fingerprint_encrypt_file"

    const-string v3, "fingerprint_security_verify"

    .line 50
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->KEY_NAME_IN_PREFERENCES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFingerprintsCount(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 219
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "fingerprint_count"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getKeyNameInPreferences()[Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->KEY_NAME_IN_PREFERENCES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getLatestUsedFingerprintId(Landroid/content/Context;)I
    .locals 2

    if-eqz p0, :cond_0

    .line 278
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "last_fingerprint_id"

    .line 279
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getNextValidFingerprintId(Landroid/content/Context;)I
    .locals 0

    .line 270
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getLatestUsedFingerprintId(Landroid/content/Context;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getOpticalFingerprintType(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 681
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "optical_fingerprint_manufacturer_type"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getScreenLightState(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 601
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "face_unlock_screen_fill_light"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "fingerprint_preferences"

    .line 72
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static hasFingerprints(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 212
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "fingerprint_count"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static hasInitPreferences(Landroid/content/Context;)Z
    .locals 2

    .line 377
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "has_init_settings_values_version_M"

    .line 379
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 381
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "hasInitPreferences hasInited = "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "FingerprintApp_SharedPreferences"

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static initRemainUnlock(Landroid/content/Context;Z)V
    .locals 4

    .line 487
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "FingerprintApp_SharedPreferences"

    if-eqz p1, :cond_0

    const-string v2, "face_unlock_remain_unlock"

    .line 488
    invoke-interface {p0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "initRemainUnlock need set FACE_UNLOCK_SWITCH_REMAIN_UNLOCK_PREFS default value is false."

    .line 489
    invoke-static {v1, v3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 491
    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_0
    const-string v2, "initRemainUnlock no need set, FACE_UNLOCK_SWITCH_REMAIN_UNLOCK_PREFS already init"

    .line 494
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "face_unlock_remain_unlock_backup"

    .line 496
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "initRemainUnlock need set FACE_UNLOCK_SWITCH_REMAIN_UNLOCK_BACKUP_PREFS default value is false."

    .line 497
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 499
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 500
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    const-string p0, "initRemainUnlock no need set, FACE_UNLOCK_SWITCH_REMAIN_UNLOCK_BACKUP_PREFS already init"

    .line 502
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initSettingsValues(Landroid/content/Context;)V
    .locals 10

    .line 343
    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSdkVersionM()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FingerprintApp_SharedPreferences"

    if-eqz v0, :cond_2

    const-string v2, "has_init_settings_values_version_M"

    const/4 v3, 0x0

    .line 346
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "initSettingsValues hasInited = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 350
    :cond_0
    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getKeyNameInSettings()[Ljava/lang/String;

    move-result-object v4

    .line 351
    array-length v5, v4

    .line 352
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "initSettingsValues len = "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    .line 354
    sget-object v7, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->KEY_NAME_IN_PREFERENCES:[Ljava/lang/String;

    aget-object v7, v7, v6

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 356
    aget-object v8, v4, v6

    invoke-static {p0, v8, v7}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 359
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "i = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "fingerprint_count"

    .line 362
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "coloros_finerprint_enrolled_count"

    .line 363
    invoke-static {p0, v4, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 365
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "count value = "

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "initSettingsValues end"

    .line 367
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "initSettingsValues preferences is null"

    .line 370
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static isEncryptForSecurityCenterBackupEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 179
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fingerprint_security_verify_backup"

    .line 181
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "FingerprintApp_SharedPreferences"

    if-eqz v3, :cond_1

    .line 182
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 183
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "contains CENTER_BACKUP enable = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "fingerprint_security_verify"

    .line 185
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 186
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no contains CENTER_BACKUP enable = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setEncryptForSecurityCenterBackupEnabled(Landroid/content/Context;Z)V

    move p0, v0

    :goto_0
    return p0
.end method

.method public static isEncryptForSecurityCenterEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 255
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "fingerprint_security_verify"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isFaceEnrollClicked(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 576
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "face_enroll_clicked"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isFaceRemainUnlockBackupEnabled(Landroid/content/Context;)Z
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 557
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "face_unlock_remain_unlock_backup"

    .line 559
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "FingerprintApp_SharedPreferences"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 560
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0

    :cond_1
    const-string p0, "isFaceRemainUnlockBackupEnabled not init, set default value and return: true"

    .line 562
    invoke-static {v3, p0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 564
    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 565
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 568
    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isFaceRemainUnlockBackupEnabled:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static isFaceRemainUnlockEnabled(Landroid/content/Context;)Z
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 520
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "face_unlock_remain_unlock"

    .line 522
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "FingerprintApp_SharedPreferences"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 523
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0

    :cond_1
    const-string p0, "isFaceRemainUnlockEnabled not init, set default value and return: true"

    .line 525
    invoke-static {v3, p0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 527
    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 528
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 531
    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "isFaceRemainUnlockEnabled:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static isFaceScreenLightBackupEnabled(Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 626
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "face_unlock_screen_fill_light_backup"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isFaceSwitchForSecurityCenterEnable(Landroid/content/Context;)Z
    .locals 2

    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "coloros_face_security_verify_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static isFaceUnLockSwitchOpen(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 405
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "coloros_face_unlock_switch"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 407
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "isFaceUnLockSwitchOpen isOpen = "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "FingerprintApp_SharedPreferences"

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isFaceUnlockAppEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 433
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "coloros_face_unlock_app_encryption_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static isFaceUnlockBackupEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 468
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "face_unlock_backup"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 469
    invoke-static {p0}, Lcom/coloros/settings/custom/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    invoke-static {p0, v0}, Lcom/coloros/settings/custom/b;->b(Landroid/content/Context;Z)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static isFaceUnlockEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 479
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "face_unlock"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 480
    invoke-static {p0}, Lcom/coloros/settings/custom/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    invoke-static {p0, v0}, Lcom/coloros/settings/custom/b;->b(Landroid/content/Context;Z)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static isFaceUnlockFileEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 440
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "coloros_face_unlock_file_encryption_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static isFingerEncryptEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 237
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "fingerprint_encrypt"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isFingerEncryptFileEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 296
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "coloros_fingerprint_file_encryption_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static isFingerResetDialogNoShowAnymore(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 646
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "finger_reset_dialog_no_show_anymore"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public static isFingerUnlockBackupEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fingerprint_unlock_backup"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 161
    invoke-static {p0}, Lcom/coloros/settings/custom/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-static {p0, v0}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Z)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static isFingerUnlockEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 140
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "fingerprint_unlock"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 141
    invoke-static {p0}, Lcom/coloros/settings/custom/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-static {p0, v0}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Z)Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 129
    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSdkVersionM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "putSecureSettings end "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintApp_SharedPreferences"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static readFingerTypeAndSave(Landroid/content/Context;)V
    .locals 2

    .line 651
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v0

    .line 652
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    .line 654
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getOpticalFingerprintType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4

    .line 655
    invoke-static {}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->readFpIdFromProperties()Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "/proc/fp_id"

    .line 657
    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    const-string v1, "S_"

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 661
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setOpticalFingerprintType(Landroid/content/Context;I)V

    return-void

    :cond_2
    const-string v1, "G_"

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 663
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setOpticalFingerprintType(Landroid/content/Context;I)V

    return-void

    :cond_3
    const/4 v0, 0x3

    .line 665
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setOpticalFingerprintType(Landroid/content/Context;I)V

    :cond_4
    return-void
.end method

.method public static restoreFaceRemainUnlockEnabled(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 548
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceRemainUnlockBackupEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 549
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "restoreFaceRemainUnlockEnabled isFaceRemainUnlockBackupEnabled = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintApp_SharedPreferences"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockRemainUnlockEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method public static restoreFaceScreenLightEnabled(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceScreenLightBackupEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 609
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isFaceScreenLightBackupEnabled "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintApp_SharedPreferences"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setScreenLightState(Landroid/content/Context;Z)V

    return-void
.end method

.method public static restoreFaceUnlockEnabled(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 460
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockBackupEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 461
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method public static restoreSecurityVerifyEnabled(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isEncryptForSecurityCenterBackupEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 205
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setEncryptForSecurityCenter(Landroid/content/Context;Z)V

    return-void
.end method

.method public static restoreUnlockEnabled(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerUnlockBackupEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 172
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setAppEncryptApply(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "fingerprint_encrypt"

    .line 311
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 314
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerEncryptEnabled(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    invoke-static {p0, p1, p2, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method private static setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 101
    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eq p3, p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 105
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 106
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return p3
.end method

.method public static setEncryptForSecurityCenter(Landroid/content/Context;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->KEY_NAME_IN_PREFERENCES:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    const-string v0, "coloros_fingerprint_security_vertify_switch"

    .line 247
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 248
    invoke-static {p0, v2, p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public static setEncryptForSecurityCenterBackupEnabled(Landroid/content/Context;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "fingerprint_security_verify_backup"

    .line 197
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setFaceEnrollClicked(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 583
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "face_enroll_clicked"

    .line 584
    invoke-static {p0, v1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static setFaceRemainUnlockBackupEnabled(Landroid/content/Context;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 540
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setFaceRemainUnlockBackupEnabled enabled = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintApp_SharedPreferences"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "face_unlock_remain_unlock_backup"

    invoke-static {p0, v1, p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)Z

    return-void
.end method

.method public static setFaceSwitchForSecurityCenter(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "coloros_face_security_verify_switch"

    .line 426
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setFaceUnlockAppEnabled(Landroid/content/Context;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "coloros_face_unlock_app_encryption_switch"

    .line 415
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setFaceUnlockAutoCheckEnabled(Landroid/content/Context;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "coloros_face_unlock_auto_check_switch"

    .line 633
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setFaceUnlockBackupEnabled(Landroid/content/Context;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 452
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "face_unlock_backup"

    .line 453
    invoke-static {p0, v1, p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)Z

    return-void
.end method

.method public static setFaceUnlockEnabled(Landroid/content/Context;Z)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 389
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/custom/b;->m(Landroid/content/Context;)Z

    move-result v0

    .line 390
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setFaceUnlockEnabled isCustomFaceDisabled "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintApp_SharedPreferences"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    .line 394
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "face_unlock"

    .line 395
    invoke-static {v0, v3, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    .line 396
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setFaceUnlockEnabled need update "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enabled = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    const-string v0, "coloros_face_unlock_switch"

    .line 397
    invoke-static {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 398
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockAutoCheckEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method public static setFaceUnlockFileEnabled(Landroid/content/Context;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "coloros_face_unlock_file_encryption_switch"

    .line 422
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setFaceUnlockRemainUnlockEnabled(Landroid/content/Context;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 510
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "face_unlock_remain_unlock"

    .line 511
    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFaceUnlockRemainUnlockEnabled need update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enabled = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintApp_SharedPreferences"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "coloros_face_unlock_remain_unlock_switch"

    .line 513
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setFingerEncryptEnabled(Landroid/content/Context;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 226
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 228
    sget-object v1, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->KEY_NAME_IN_PREFERENCES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    const-string v0, "coloros_fingerprint_app_encryption_switch"

    .line 229
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 230
    invoke-static {p0, v2, p1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public static setFingerEncryptFileEnabled(Landroid/content/Context;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "coloros_fingerprint_file_encryption_switch"

    .line 288
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 289
    invoke-static {p0, v0, p1, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public static setFingerResetDialogNoShowAnymore(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 638
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "finger_reset_dialog_no_show_anymore"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static setFingerUnlockBackupEnabled(Landroid/content/Context;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "fingerprint_unlock_backup"

    .line 153
    invoke-static {p0, v1, p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)Z

    return-void
.end method

.method public static setFingerUnlockEnabled(Landroid/content/Context;Z)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/custom/b;->k(Landroid/content/Context;)Z

    move-result v0

    .line 80
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setFingerUnlockEnabled isCustomFingerDisabled "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintApp_SharedPreferences"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    .line 84
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    sget-object v3, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->KEY_NAME_IN_PREFERENCES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v0, v3, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setFingerUnlockEnabled need update "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enabled = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    const-string v3, "coloros_fingerprint_unlock_switch"

    .line 87
    invoke-static {p0, v3, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 88
    invoke-static {p0, v1, p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public static setFingerprintCount(Landroid/content/Context;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "fingerprint_count"

    .line 264
    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    const-string v0, "coloros_finerprint_enrolled_count"

    .line 265
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static setIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    const/4 v0, -0x1

    .line 117
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 121
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 122
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return v0
.end method

.method private static setOpticalFingerprintType(Landroid/content/Context;I)V
    .locals 1

    .line 673
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "optical_fingerprint_manufacturer_type"

    .line 674
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setIntValue(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setScreenLightState(Landroid/content/Context;Z)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 591
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "face_unlock_screen_fill_light"

    .line 592
    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setScreenLightState need update "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", enabled = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintApp_SharedPreferences"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "coloros_face_unlock_screen_fill_light"

    .line 594
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->putSecureSettings(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setScreenLightStateBackupEnabled(Landroid/content/Context;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "face_unlock_screen_fill_light_backup"

    .line 619
    invoke-static {p0, v1, p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setBooleanValue(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)Z

    return-void
.end method

.method public static setSecurityApply(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "fingerprint_security_verify"

    .line 331
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 334
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setEncryptForSecurityCenter(Landroid/content/Context;Z)V

    .line 335
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setEncryptForSecurityCenterBackupEnabled(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
