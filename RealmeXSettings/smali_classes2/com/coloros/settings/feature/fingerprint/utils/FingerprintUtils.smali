.class public Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"


# static fields
.field public static final ADD_FINGER:I = 0x5

.field public static final ADD_FINGER_OTHER:I = 0x7

.field public static final ANDROID_FINGERPRINT_SUPPORT:Ljava/lang/String; = "android.hardware.fingerprint"

.field public static final ANDROID_VERSION_BIGGER_51:Z

.field public static final BACK_TOUCH_SERSOR:Ljava/lang/String; = "oppo.back.touch.fingerprint.sensor"

.field public static final BOOT_INDEX:I = 0x4

.field public static final BUSINESS:Ljava/lang/String; = "oppo.business.custom"

.field public static final BUSINESS_FINGERPRINT:Ljava/lang/String; = "oppo_settings_manager_fingerprint"

.field private static final CHANGE_TTILE_FOR_FINGERPRINT:Ljava/lang/String; = "change_title_for_fingerprint"

.field public static final CLICK_PASSWORD:I = 0x6

.field public static final CLOSE:Ljava/lang/String; = "close"

.field public static final COLOROS_FACE_SECURITY_VERIFY_SWITCH:Ljava/lang/String; = "coloros_face_security_verify_switch"

.field public static final COLOROS_FACE_UNLOCK_APP_ENCRYPT_SWITCH:Ljava/lang/String; = "coloros_face_unlock_app_encryption_switch"

.field public static final COLOROS_FACE_UNLOCK_EYES_CONDITION:Ljava/lang/String; = "coloros_face_unlock_eyes_condition"

.field public static final COLOROS_FACE_UNLOCK_FILE_ENCRYPT_SWITCH:Ljava/lang/String; = "coloros_face_unlock_file_encryption_switch"

.field public static final COLOROS_FACE_UNLOCK_SCREEN_FILL_LIGHT:Ljava/lang/String; = "coloros_face_unlock_screen_fill_light"

.field public static final COLOROS_FACE_UNLOCK_SWITCH_AUTO_CHECK_SETTINGS:Ljava/lang/String; = "coloros_face_unlock_auto_check_switch"

.field public static final COLOROS_FACE_UNLOCK_SWITCH_REMAIN_UNLOCK_SETTINGS:Ljava/lang/String; = "coloros_face_unlock_remain_unlock_switch"

.field public static final COLOROS_FACE_UNLOCK_SWITCH_SETTINGS:Ljava/lang/String; = "coloros_face_unlock_switch"

.field public static final COLOROS_FINGERPRINT_APP_ENCRYPT_SWITCH:Ljava/lang/String; = "coloros_fingerprint_app_encryption_switch"

.field public static final COLOROS_FINGERPRINT_ENROLLED_COUNT:Ljava/lang/String; = "coloros_finerprint_enrolled_count"

.field public static final COLOROS_FINGERPRINT_FILE_ENCRYPT_SWITCH:Ljava/lang/String; = "coloros_fingerprint_file_encryption_switch"

.field public static final COLOROS_FINGERPRINT_SECURITY_VERTIFY_SWITCH:Ljava/lang/String; = "coloros_fingerprint_security_vertify_switch"

.field public static final COLOROS_FINGERPRINT_UNLOCK_SWITCH:Ljava/lang/String; = "coloros_fingerprint_unlock_switch"

.field public static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field public static final DELETE_LAST_FINGERPRINT:Ljava/lang/String; = "coloros.intent.action.fingerprint.DELETE_LAST_FINGERPRINT"

.field public static final EXTRA_ALLOW_SKIP_ENROLL:Ljava/lang/String; = "extra_allow_skip_enroll"

.field public static final EXTRA_ALLOW_SKIP_REGISTER:Ljava/lang/String; = "extra_allow_skip_register"

.field public static final EXTRA_BOOT_REGISTER_FACE:Ljava/lang/String; = "extra_boot_register_face"

.field public static final EXTRA_BOOT_REGISTER_FINGERPRINT:Ljava/lang/String; = "extra_boot_register_fingerprint"

.field public static final EXTRA_KEY_EROLL_TYPE:Ljava/lang/String; = "start_enroll_source"

.field public static final EXTRA_KEY_HAS_FINGERPRINT:Ljava/lang/String; = "has_fingerprint"

.field public static final EXTRA_KEY_OPEN_FINGERPRINT_UNLOCK:Ljava/lang/String; = "open_fingerprint_unlock"

.field public static final FACE_SCREEN_FILL_LIGHT_SWITCH:Ljava/lang/String; = "screen_fill_light_switch"

.field private static final FINGERPRINT_FACE_COMBINATION_UNLOCK_SWITCH:Ljava/lang/String; = "fingerprint_face_combination_unlock_switch"

.field public static final FINGERPRINT_FACE_UNLOCK_SWITCH_NONE:I = -0x1

.field private static final FINGERPRINT_FACE_UNLOCK_SWITCH_VALUE_DISABLE:I = 0x0

.field public static final FINGERPRINT_FACE_UNLOCK_SWITCH_VALUE_ENABLE:I = 0x1

.field public static final FINGERPRINT_SUPPORT:Ljava/lang/String; = "oppo.fingerprint.support"

.field public static final FRONT_PRESS_SERSOR:Ljava/lang/String; = "oppo.front.press.fingerprint.sensor"

.field public static final FRONT_TOUCH_SERSOR:Ljava/lang/String; = "oppo.front.touch.fingerprint.sensor"

.field public static final KEY_FINGER_ID:Ljava/lang/String; = "finger_id"

.field public static final KEY_FINGER_INSTANCE:Ljava/lang/String; = "fingerprint"

.field public static final KEY_FINGER_NAME:Ljava/lang/String; = "finger_name"

.field private static final KEY_LOCK_MODE_ACTION:Ljava/lang/String; = "com.oppo.intent.action.KEY_LOCK_MODE"

.field public static final KEY_LOCK_MODE_HOME:I = 0x3

.field public static final KEY_LOCK_MODE_NORMAL:I = 0x0

.field private static final KEY_NAME_IN_SETTINGS:[Ljava/lang/String;

.field public static final MANUFACTURER_GOODIX_MARK:Ljava/lang/String; = "G_"

.field public static final MANUFACTURER_ID_FILE_PATH:Ljava/lang/String; = "/proc/fp_id"

.field public static final MANUFACTURER_ID_PROPERTIES:Ljava/lang/String; = "persist.vendor.fingerprint.fp_id"

.field public static final MANUFACTURER_SILEAD_ALGORITHM_NEW:Ljava/lang/String; = "1"

.field public static final MANUFACTURER_SILEAD_ALGORITHM_NONE:Ljava/lang/String; = "-1"

.field public static final MANUFACTURER_SILEAD_ALGORITHM_OLD:Ljava/lang/String; = "0"

.field public static final MANUFACTURER_SILEAD_MARK:Ljava/lang/String; = "S_"

.field public static final MAX_FINGERPRINTS_NUMBER:I = 0x5

.field public static final MSG_ASYNC_INIT_FINGERPRINTS:I = 0x3f2

.field public static final MSG_ASYNC_REMOVE_ALL_ERROR:I = 0x3f7

.field public static final MSG_REFRESH_FINGERPRINT_UI:I = 0x3ed

.field public static final OPEN:Ljava/lang/String; = "open"

.field private static final OPTICAL_FINGERPRINT:Ljava/lang/String; = "oppo.hardware.fingerprint.optical.support"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final PERMISSIONS:[Ljava/lang/String;

.field public static final PERMISSION_DELETE_FINGERPRINT:Ljava/lang/String; = "com.android.settings.fingerprint.permission.DELETE_FINGERPRINT"

.field public static final SDK_INT_22:I = 0x16

.field private static final SIDE_FINGERPRINT:Ljava/lang/String; = "oppo.side.touch.fingerprint.sensor"

.field public static final SWITCH_APP_INDEX:I = 0x1

.field public static final SWITCH_FILE_INDEX:I = 0x2

.field public static final SWITCH_UNLOCK_INDEX:I = 0x0

.field public static final SWITCH_VERTIFY_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static final TALKBACK_COMPONENT_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

.field private static final WALLTET_PACKGE_NAME:Ljava/lang/String; = "com.oppo.owallet"

.field private static sIsOpticalFingerprint:Ljava/lang/Boolean;

.field private static sMediumTypeface:Landroid/graphics/Typeface;

.field private static sSupportFingerprint:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->ANDROID_VERSION_BIGGER_51:Z

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 141
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->PERMISSIONS:[Ljava/lang/String;

    const-string v0, "coloros_fingerprint_unlock_switch"

    const-string v1, "coloros_fingerprint_app_encryption_switch"

    const-string v2, "coloros_fingerprint_file_encryption_switch"

    const-string v3, "coloros_fingerprint_security_vertify_switch"

    .line 142
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->KEY_NAME_IN_SETTINGS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 160
    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sSupportFingerprint:Ljava/lang/Boolean;

    .line 161
    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sIsOpticalFingerprint:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppPermission(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 511
    sget-object v1, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->PERMISSIONS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 512
    invoke-virtual {p0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static deleteLastFingerprintCompelete(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 550
    new-instance v0, Landroid/content/Intent;

    const-string v1, "coloros.intent.action.fingerprint.DELETE_LAST_FINGERPRINT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oppo.owallet"

    .line 551
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 550
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static getDefaultPasswordType(Landroid/content/Context;)I
    .locals 1

    .line 456
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getPasswordTypeFormDmp(Landroid/content/Context;)I

    move-result p0

    const v0, 0x30002

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method public static getFingerFaceSwitchValue(Landroid/content/Context;)I
    .locals 4

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_face_combination_unlock_switch"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 372
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getFingerFaceSwitchValue value = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Utils"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/coloros/settings/utils/al;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 375
    check-cast p0, Landroid/app/Activity;

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get Activity name "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 378
    invoke-virtual {p0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 379
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "get fragments name "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Fragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getKeyNameInSettings()[Ljava/lang/String;
    .locals 1

    .line 177
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->KEY_NAME_IN_SETTINGS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getOpticalFingerIconLocation()I
    .locals 3

    :try_start_0
    const-string v0, "persist.vendor.fingerprint.optical.iconlocation"

    const-string v1, ""

    .line 627
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getOpticalFingerIconSize()I
    .locals 3

    :try_start_0
    const-string v0, "persist.vendor.fingerprint.optical.iconsize"

    const-string v1, ""

    .line 645
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getPasswordTypeFormDmp(Landroid/content/Context;)I
    .locals 1

    const-string v0, "device_policy"

    .line 543
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public static getPermissions()[Ljava/lang/String;
    .locals 1

    .line 181
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static hasFingerprints(Landroid/content/Context;)Z
    .locals 0

    .line 319
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->hasFingerprints(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static initStatusCombination(Landroid/content/Context;Z)V
    .locals 9

    .line 388
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 389
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintUnlockDisabled(Landroid/content/Context;)Z

    move-result v1

    .line 390
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerUnlockEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 391
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v3

    .line 392
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->hasFingerprints(Landroid/content/Context;)Z

    move-result v4

    .line 393
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result v5

    .line 394
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v6

    .line 395
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "initStatusCombination status opticalFingerPrint = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", faceUnlockEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", fingerEnable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", has3DCamera = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Utils"

    invoke-static {v8, v7}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    .line 401
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->putFingerFaceSwitchValue(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    const p1, 0x7f120f63

    const/4 v0, 0x0

    .line 403
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 404
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static isFingerAppEncryptEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 656
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "coloros_fingerprint_app_encryption_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isFingerFileEncryptEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "coloros_fingerprint_file_encryption_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isFingerprintSupport(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 165
    sget-object v1, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sSupportFingerprint:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "oppo.fingerprint.support"

    .line 167
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.fingerprint"

    .line 168
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 167
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sSupportFingerprint:Ljava/lang/Boolean;

    .line 170
    :cond_2
    sget-object p0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sSupportFingerprint:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    return v0
.end method

.method public static isFingerprintUnlockDisabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "device_policy"

    .line 411
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFingerprintUnlockEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 315
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerUnlockEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isFrontSensor(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 426
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "oppo.front.press.fingerprint.sensor"

    .line 427
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "oppo.front.touch.fingerprint.sensor"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isOpticalFingerPrint(Landroid/content/Context;)Z
    .locals 4

    .line 323
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sIsOpticalFingerprint:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 327
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.hardware.fingerprint.optical.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 328
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isOpticalFingerPrint: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Utils"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 329
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sIsOpticalFingerprint:Ljava/lang/Boolean;

    .line 331
    :cond_2
    sget-object p0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sIsOpticalFingerprint:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isPressSensor(Landroid/content/Context;)Z
    .locals 1

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.front.press.fingerprint.sensor"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isProvisioned(Landroid/content/Context;)Z
    .locals 2

    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "device_provisioned"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static isSdkVersionM()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSecure(Landroid/content/Context;)Z
    .locals 2

    .line 293
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    .line 297
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 v0, 0x10000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isSideFingerPrint(Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 340
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.side.touch.fingerprint.sensor"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 341
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSideFingerPrint: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isTalkbackEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 561
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    .line 560
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 565
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "enabled_accessibility_services"

    .line 564
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 567
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 568
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public static isTalkbackServiceEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "accessibility"

    .line 580
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_1

    .line 582
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static isTouchSensor(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 450
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "oppo.front.touch.fingerprint.sensor"

    .line 451
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "oppo.back.touch.fingerprint.sensor"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static putFingerFaceSwitchValue(Landroid/content/Context;Z)V
    .locals 4

    .line 347
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    .line 348
    invoke-static {}, Lcom/coloros/settings/utils/bh;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 350
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_face_combination_unlock_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "putFingerFaceSwitchValue isSet = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , isOpen = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/coloros/settings/utils/al;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 357
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 358
    check-cast p0, Landroid/app/Activity;

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "put Activity name "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 361
    invoke-virtual {p0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 362
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "put fragments name "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Fragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static readFpIdFromProperties()Ljava/lang/String;
    .locals 3

    const-string v0, "persist.vendor.fingerprint.fp_id"

    .line 587
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fdId: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/utils/aa;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public static readStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "Utils"

    const/4 v1, 0x0

    .line 595
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 597
    invoke-static {}, Lcom/coloros/settings/utils/al;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "readStringFromFile, not exists:"

    .line 598
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 602
    :cond_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 603
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v2, v1

    .line 605
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/coloros/settings/utils/al;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "readStringFromFile, exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    if-eqz v2, :cond_3

    .line 611
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    return-object v1

    :catchall_2
    move-exception p0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 615
    :catch_4
    :cond_4
    throw p0
.end method

.method public static setBackupPasswordForResult(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-static {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setBackupPasswordForResult(Landroid/app/Activity;IZ)V

    if-eqz p0, :cond_0

    const p1, 0x7f01006b

    const v0, 0x7f010074

    .line 191
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static setBackupPasswordForResult(Landroid/app/Activity;IZ)V
    .locals 2

    if-eqz p0, :cond_0

    .line 203
    new-instance p2, Landroid/content/Intent;

    const-string v0, "oppo.app.action.SET_NEW_PASSWORD"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "change_title_for_fingerprint"

    .line 204
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getDefaultPasswordType(Landroid/content/Context;)I

    move-result v0

    const-string v1, "lockscreen.password_type"

    .line 205
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "confirm_credentials"

    .line 207
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static setHomeKeyLocked(Landroid/content/Context;I)V
    .locals 2

    .line 480
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFrontSensor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setHomeKeyLocked: type = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.intent.action.KEY_LOCK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KeyLockMode"

    .line 484
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ProcessName"

    const-string v1, "com.android.settings"

    .line 485
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static setHomeKeyLocked(Landroid/content/Context;Z)V
    .locals 2

    .line 491
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setHomeKeyLocked: lock = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.intent.action.KEY_LOCK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "KeyLockMode"

    .line 494
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "ProcessName"

    const-string v1, "com.android.settings"

    .line 495
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static setPasswordForResult(Landroid/app/Activity;IZIJ)V
    .locals 3

    if-eqz p0, :cond_1

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    const-string v2, "minimum_quality"

    .line 217
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "has_challenge"

    .line 220
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    .line 221
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p3, 0x1

    const-string v1, "change_title_for_fingerprint"

    .line 222
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getDefaultPasswordType(Landroid/content/Context;)I

    move-result p3

    const-string v1, "lockscreen.password_type"

    .line 223
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p3, 0x0

    const-string v1, "confirm_credentials"

    .line 225
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p2, "challenge"

    .line 227
    invoke-virtual {v0, p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 230
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f01006b

    const p2, 0x7f010074

    .line 232
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public static setPasswordForResult(Landroid/app/Activity;IZIJZJ)V
    .locals 10

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-wide/from16 v8, p7

    .line 240
    invoke-static/range {v0 .. v9}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setPasswordForResult(Landroid/app/Activity;IZZIJZJ)V

    return-void
.end method

.method public static setPasswordForResult(Landroid/app/Activity;IZZIJZJ)V
    .locals 3

    if-eqz p0, :cond_4

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000

    const-string v2, "minimum_quality"

    .line 250
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "has_challenge"

    .line 252
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "has_face_challenge"

    .line 253
    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    .line 254
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p4, 0x0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, p4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "change_title_for_fingerprint"

    .line 255
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getDefaultPasswordType(Landroid/content/Context;)I

    move-result v1

    const-string v2, "lockscreen.password_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "change_title_for_face"

    .line 257
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "confirm_credentials"

    .line 258
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p3, :cond_2

    const-string p2, "challenge"

    .line 260
    invoke-virtual {v0, p2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_2
    if-eqz p7, :cond_3

    const-string p2, "face_challenge"

    .line 263
    invoke-virtual {v0, p2, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 266
    :cond_3
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const p1, 0x7f01006b

    const p2, 0x7f010074

    .line 268
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_4
    return-void
.end method

.method public static setSpannableString(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    .line 280
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 281
    new-instance p1, Landroid/text/style/AlignmentSpan$Standard;

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {p1, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 283
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setTextViewTypeFace(Landroid/widget/TextView;)V
    .locals 2

    .line 527
    sget-boolean v0, Loppo/content/res/OppoFontUtils;->isFlipFontUsed:Z

    if-eqz v0, :cond_0

    .line 528
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    .line 530
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sMediumTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "/system/fonts/ColorOSUI-Medium.ttf"

    .line 532
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sMediumTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 534
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sMediumTypeface:Landroid/graphics/Typeface;

    const-string v0, "Utils"

    const-string v1, "create special typeface fail"

    .line 535
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->sMediumTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static showMessageCenter(Landroid/app/Dialog;)V
    .locals 1

    if-eqz p0, :cond_0

    const v0, 0x102000b

    .line 502
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 503
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 504
    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method
