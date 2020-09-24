.class public Lcom/coloros/systemui/notification/helper/KeyguardHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "KeyguardHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeKeyguardSettingsObserver;,
        Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeSettingsObserver;,
        Lcom/coloros/systemui/notification/helper/KeyguardHelper$FocusModeSettingObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISPLAY_DENSITY_DPI:I = 0x1e0

.field private static final DENSITY_DPI:I = 0xa0

.field private static final DENSITY_DPI_FLOAT:F = 160.0f

.field public static final FOCUS_MODE_SWITCH_SETTINGS:Ljava/lang/String; = "focusmode_switch"

.field public static final MODE_DEFAULT:I = 0x0

.field public static final MODE_FOCUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Notification--InCallHelper"

.field public static final ZEN_MODE_DEFAULT:I = 0x0

.field public static final ZEN_MODE_KEYGUARD_ON:I = 0x2

.field public static final ZEN_MODE_ON:I = 0x1

.field private static final ZEN_SUPPRESSED_EFFECT_KEY_GARD:Ljava/lang/String; = "zen_suppressed_effect_key_gard"

.field private static sInitialDisplayDensity:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFocusModeObserver:Lcom/coloros/systemui/notification/helper/KeyguardHelper$FocusModeSettingObserver;

.field private mInMagazineGallery:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastGoKeyguard:J

.field private mLastKeyguardShowing:Z

.field private mMode:I

.field mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mZenModeKeyguardObserver:Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeKeyguardSettingsObserver;

.field private mZenModeKeyguardStatus:I

.field private final mZenModeObserver:Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeSettingsObserver;

.field private mZenModeStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    .line 73
    new-instance v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$FocusModeSettingObserver;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper$FocusModeSettingObserver;-><init>(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mFocusModeObserver:Lcom/coloros/systemui/notification/helper/KeyguardHelper$FocusModeSettingObserver;

    .line 74
    new-instance v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeSettingsObserver;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeSettingsObserver;-><init>(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeObserver:Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeSettingsObserver;

    .line 75
    new-instance v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeKeyguardSettingsObserver;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeKeyguardSettingsObserver;-><init>(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeKeyguardObserver:Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeKeyguardSettingsObserver;

    .line 77
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const-wide v0, 0x7fffffffffffffffL

    .line 86
    iput-wide v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mLastGoKeyguard:J

    .line 94
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mContext:Landroid/content/Context;

    .line 95
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 96
    invoke-virtual {p2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 97
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mLastKeyguardShowing:Z

    .line 98
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->registerObeserver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeStatus:I

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/notification/helper/KeyguardHelper;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeKeyguardStatus:I

    return p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/notification/helper/KeyguardHelper;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeKeyguardStatus:I

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mMode:I

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/notification/helper/KeyguardHelper;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/helper/KeyguardHelper;)Landroid/content/ContentResolver;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private findLockScreenState(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 325
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    .line 326
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->getLockscreenVisibility(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    const/4 p1, 0x1

    const/16 v0, -0x3e8

    if-eq p0, v0, :cond_1

    if-eq p0, p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method private isExpNoClearable(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 311
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFocusModeHideNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 371
    iget p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lcom/coloros/systemui/common/util/NotificationType;->isFocusModeNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private registerObeserver(Landroid/content/Context;)V
    .locals 5

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mResolver:Landroid/content/ContentResolver;

    .line 359
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "focusmode_switch"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mMode:I

    .line 360
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 361
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeStatus:I

    .line 362
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "zen_suppressed_effect_key_gard"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeKeyguardStatus:I

    .line 363
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 364
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 365
    iget-object v3, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mFocusModeObserver:Lcom/coloros/systemui/notification/helper/KeyguardHelper$FocusModeSettingObserver;

    invoke-virtual {v3, p1, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 366
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeObserver:Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeSettingsObserver;

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 367
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeKeyguardObserver:Lcom/coloros/systemui/notification/helper/KeyguardHelper$ZenModeKeyguardSettingsObserver;

    invoke-virtual {p1, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;
    .locals 6

    .line 339
    sget v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->sInitialDisplayDensity:I

    const-string v1, "Notification--InCallHelper"

    if-gtz v0, :cond_0

    .line 341
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 342
    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0

    sput v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->sInitialDisplayDensity:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0x1e0

    .line 344
    sput v2, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->sInitialDisplayDensity:I

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultDisplay getInitialDisplayDensity, e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 349
    sget v2, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->sInitialDisplayDensity:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 351
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDisplayConfiguration "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Keyguard"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getInMagazineGallery()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mInMagazineGallery:Z

    return p0
.end method

.method public getLastGoKeyguard()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mLastGoKeyguard:J

    return-wide v0
.end method

.method public getLastKeyguardShowing()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mLastKeyguardShowing:Z

    return p0
.end method

.method public getMode()I
    .locals 0

    .line 382
    iget p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mMode:I

    return p0
.end method

.method public hideNotificationInLockState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 11

    .line 286
    invoke-static {}, Lcom/coloros/systemui/keyguard/lockdead/LockDeadUtil;->isLockDeadState()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Notification--InCallHelper"

    const-string v3, "Notification"

    if-eqz v0, :cond_0

    const-string p0, "hideNotificationInLockState--is lock dead state"

    .line 287
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 291
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0}, Lcom/coloros/systemui/common/util/NotificationType;->isFocusModeNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    return v4

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showNotificationInLockState--media notification show on keyguard:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 302
    :cond_2
    iget-wide v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->getLastGoKeyguard()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    sub-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideNotificationInLockState--notification comes before lock, [key:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "],entry.postTime:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",mLastGoKeyguard:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->getLastGoKeyguard()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v3, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->isExpNoClearable(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_3
    return v4
.end method

.method public inMagazineGallery()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mInMagazineGallery:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initEntryPostTime(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 278
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->isExpNoClearable(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->isWhiteListNotificationOnKeygurad(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->shouldResetPostTime()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p0

    :goto_0
    iput-wide p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    goto :goto_2

    :cond_2
    :goto_1
    const-wide p0, 0x7fffffffffffffffL

    .line 279
    iput-wide p0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    :goto_2
    return-void
.end method

.method public isColorUIKeyguard()Z
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isColorKeyguardLoad()Z

    move-result p0

    return p0
.end method

.method public isFocusMode()Z
    .locals 1

    .line 378
    iget p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockScreenShowLocalWallpaper()Z
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isLockScreenShowLocalWallpaper()Z

    move-result p0

    return p0
.end method

.method public isNightMode()Z
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getKeyguardUpdateMonitorExt()Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->isNightMode()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method public isWhiteListNotificationOnKeygurad(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    const-class v1, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    .line 316
    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;->isSmartDriveChannelNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    .line 317
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    const-class v1, Lcom/coloros/systemui/notification/helper/DndAlertHelper;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;

    .line 318
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/DndAlertHelper;->isDNDNoticeChannelNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setInMagazineGallery(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mInMagazineGallery:Z

    return-void
.end method

.method public setLastGoKeyguard(J)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mLastGoKeyguard:J

    return-void
.end method

.method public setLastKeyguardShowing(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mLastKeyguardShowing:Z

    return-void
.end method

.method public shouldResetPostTime()Z
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public shouldShowOnKeguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getNotificationEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "Notification--InCallHelper"

    const-string v4, "Notification"

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->channel:Landroid/app/NotificationChannel;

    .line 175
    new-instance v6, Lcom/coloros/systemui/notification/helper/KeyguardHelper$1;

    invoke-direct {v6, p0, v1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/KeyguardHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-static {v4, v3, v6}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/common/util/LogUtil$IDebug;)V

    .line 185
    iget v6, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeStatus:I

    if-ne v6, v2, :cond_2

    .line 186
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationList()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 188
    :cond_1
    iget v1, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mZenModeKeyguardStatus:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_2

    if-eqz v5, :cond_2

    .line 190
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-nez v1, :cond_2

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "canBypassDnd"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v3, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 199
    :cond_2
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->isFocusModeHideNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--shouldShowOnKeguard sbn: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v3, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 204
    :cond_3
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    const-class v5, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {v1, v5}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {v1, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 211
    :cond_4
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    const-class v5, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {v1, v5}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    .line 212
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->isEnvelopeNotification(Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 226
    :cond_5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "small_app"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 227
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "small_app_package"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    sget-boolean v6, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v6, :cond_6

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notification--shouldShowOnKeguard sb: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",smallApp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",smallAppPkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3, v6}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-nez v1, :cond_7

    .line 232
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->findLockScreenState(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v2

    .line 235
    :cond_7
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v5}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->getSmallApp(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/notification/smallApp/SmallApp;

    move-result-object p0

    if-eqz v1, :cond_8

    if-eqz p0, :cond_8

    .line 236
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isNotify()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isLockScreen()Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public shouldShowOnKeguard(Ljava/lang/String;)Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 139
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getNotificationEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 147
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    .line 151
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    :cond_3
    :goto_0
    return v1
.end method

.method public updateGroupSummaryPostTime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 4

    .line 251
    iget-wide v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 252
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 254
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    iget-wide v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    .line 255
    iget-wide p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    :cond_0
    return-void
.end method

.method public updateLastGoKeyguardTime()V
    .locals 2

    .line 243
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->isShowing()Z

    move-result v0

    .line 244
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->getLastKeyguardShowing()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 245
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->setLastKeyguardShowing(Z)V

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;->setLastGoKeyguard(J)V

    :cond_1
    return-void
.end method

.method public updateOlderChildrenToSummaryPostTimeAndClose(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupManager;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 266
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 267
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 268
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 270
    iget-wide v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    iget-wide v5, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 271
    iget-wide v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    iput-wide v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->postTime:J

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
