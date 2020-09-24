.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;
.super Ljava/lang/Object;
.source "PictorialMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;,
        Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;
    }
.end annotation


# static fields
.field private static final ACTION_CLICK:Ljava/lang/String; = "click"

.field private static final ACTION_LINK_QUICKAPP:Ljava/lang/String; = "link_quickapp"

.field private static final ACTION_MORE:Ljava/lang/String; = "more"

.field private static final ACTION_POWER_OFF:Ljava/lang/String; = "poweroff"

.field private static final ACTION_SHOW:Ljava/lang/String; = "show"

.field private static final ACTION_SHOW_END:Ljava/lang/String; = "show_end"

.field private static final ACTION_TIME_OUT:Ljava/lang/String; = "timeout"

.field private static final ACTION_UN_LOCK:Ljava/lang/String; = "unlock"

.field private static final APK_SHOW_PICTORIAL:I = 0x1

.field private static final AUTO_PLAY_SWITCH:Ljava/lang/String; = "oppo_pictorial_auto_play"

.field private static final AUTO_PLAY_SWITCH_DEFAULT_STATE:I = 0x0

.field private static final CASE:Ljava/lang/String; = "case"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final CATEGORY_IMAGE_SHOW:I = 0x2710

.field private static final CATEGORY_INTERACTIVE:I = 0x2711

.field private static final CATEGORY_STATIC_SHOW:I = 0x2714

.field private static final CLICK_TEXT:Ljava/lang/String; = "clickText"

.field private static final CLICK_TYPE:Ljava/lang/String; = "clicktype"

.field private static final CONTENT:Ljava/lang/String; = "content"

.field private static final CONTENT_COLOR:Ljava/lang/String; = "contentColor"

.field private static final CONTENT_SIZE:Ljava/lang/String; = "contentSize"

.field private static final COPYRIGHT_DESC:Ljava/lang/String; = "copyrightDesc"

.field private static final DECOUPLING_ACTION:Ljava/lang/String; = "com.heytap.pictorial.action.START_DECOUPLING_SERVICE"

.field private static final DECOUPLING_SERVICE:Ljava/lang/String; = "com.heytap.pictorial.PictorialDecouplingService"

.field private static final DEEP_LINK:Ljava/lang/String; = "deepLink"

.field private static final DURATION:Ljava/lang/String; = "duration"

.field private static final ENTRY_SHOW:Ljava/lang/String; = "entryShow"

.field private static final ENTRY_SHOW_IMAGE_ID:Ljava/lang/String; = "entryImageId"

.field private static final EVENT_NAME:Ljava/lang/String; = "eventname"

.field private static final FILE_PATH:Ljava/lang/String; = "filePath"

.field private static final FILE_URI:Ljava/lang/String; = "fileUri"

.field private static final FIRST_ANIMATION_SHOW:Ljava/lang/String; = "firstAnimationShow"

.field private static final GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final GROUP_TYPE:Ljava/lang/String; = "groupType"

.field private static final HINT_SHOW:Ljava/lang/String; = "hint_show"

.field private static final IMAGE_ID:Ljava/lang/String; = "imageId"

.field private static final INSTANT_APP:Ljava/lang/String; = "instantApp"

.field private static final IS_UPDATE_VIEW:I = 0x1

.field private static final KEYGUARD_APK_SHOW_PICTORIAL:Ljava/lang/String; = "keyguard_apk_show_pictorial"

.field private static final KEYGUARD_BACK_FINGER_UNLOCK_URI:Ljava/lang/String; = "content://com.heytap.pictorial.data.provider/keyguard_back_finger_unlock"

.field private static final KEYGUARD_NOTIFY_FINISH:Ljava/lang/String; = "notify_off"

.field private static final KEYGUARD_NOTIFY_FINISH_URL:Ljava/lang/String; = "content://com.heytap.pictorial.data.provider/keyguard_notify_finish"

.field private static final KEYGUARD_POPBACK_ANIMATION_URI:Ljava/lang/String; = "content://com.heytap.pictorial.data.provider/keyguard_popback_animation_show"

.field private static final KEYGUARD_UNLOCK_BY_BACK_FINGER:Ljava/lang/String; = "back_unlock"

.field private static final KEYGUARD_UNLOCK_NOTIFICATION_URL:Ljava/lang/String; = "content://com.heytap.pictorial.data.provider/keyguard_unlock_notification"

.field private static final KEYGUARD_VERSION:I = 0x3

.field private static final LINK_TYPE:Ljava/lang/String; = "linktype"

.field private static final LINK_TYPE_FOR_DEEPLINK:I = 0x3

.field private static final LINK_TYPE_FOR_QUICK_APP:I = 0x2

.field private static final LINK_TYPE_FOR_WEBVIEW:I = 0x1

.field private static final MAG_ICON_CLICK:Ljava/lang/String; = "mag_icon_click"

.field private static final MAG_ICON_SHOW:Ljava/lang/String; = "mag_icon_show"

.field private static final MAIN_SWITCH:Ljava/lang/String; = "oppo_pictorial_apply"

.field private static final MAIN_SWITCH_DEFAULT_STATE:I = 0x0

.field private static final MESSAGE_VIEW_SHOW:Ljava/lang/String; = "messageViewShow"

.field private static final MESSAGE_VIEW_SHOW_URL:Ljava/lang/String; = "content://com.heytap.pictorial.data.provider/keyguard_message_view_show"

.field private static final MSG_OBTAIN_PICTORIAL_MESSAGE_INFO:I = 0x2

.field private static final MSG_OBTAIN_PICTORIAL_WALLPAPER:I = 0x1

.field private static final NO_UPDATE_VIEW:I = 0x0

.field private static final PICTORIAL_IMAGE_URI:Ljava/lang/String; = "content://com.heytap.pictorial.data.provider/keyguard_image_list"

.field private static final PICTORIAL_KEYGUARD_DECOUPLING_VERSION:Ljava/lang/String; = "pictorial_keyguard_decouping_version"

.field public static final PICTORIAL_PACKAGE_NAME:Ljava/lang/String; = "com.heytap.pictorial"

.field private static final PROMPT_ANIMATION_SHOW:Ljava/lang/String; = "promptAnimationShow"

.field private static final RED_DOT_MARGIN_START:Ljava/lang/String; = "redDotMarginLeft"

.field private static final RED_DOT_MARGIN_TOP:Ljava/lang/String; = "redDotMarginTop"

.field private static final RED_DOT_RADIUS:Ljava/lang/String; = "redDotRadius"

.field private static final RED_DOT_SHOW:Ljava/lang/String; = "redDotShow"

.field private static final SLIDE_TYPE:Ljava/lang/String; = "slidetype"

.field private static final SP_FILE_NAME:Ljava/lang/String; = "pictorial_info"

.field private static final STATISTIC_URL:Ljava/lang/String; = "content://com.heytap.pictorial.data.provider/keyguard_buried_point"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final SWITCH_STATE_OFF:I = 0x0

.field private static final SWITCH_STATE_ON:I = 0x1

.field private static final SWITCH_STATE_UNINITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PictorialMediator"

.field private static final TITLE:Ljava/lang/String; = "title"

.field private static final TITLE_COLOR:Ljava/lang/String; = "titleColor"

.field private static final TITLE_SIZE:Ljava/lang/String; = "titleSize"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final URL:Ljava/lang/String; = "url"

.field private static final VIEW_BUTTON_BACKGROUND:Ljava/lang/String; = "viewButtonBackground"

.field private static final VIEW_BUTTON_COLOR:Ljava/lang/String; = "viewButtonColor"

.field private static final VIEW_BUTTON_MARGIN_LEFT:Ljava/lang/String; = "viewButtonMarginLeft"

.field private static final VIEW_BUTTON_PRESSED_ID:Ljava/lang/String; = "viewButtonPressedId"

.field private static final VIEW_BUTTON_SIZE:Ljava/lang/String; = "viewButtonSize"

.field private static final VIEW_STATE_INFO:Ljava/lang/String; = "view_state_info"

.field private static final WEB_URL:Ljava/lang/String; = "webUrl"

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;


# instance fields
.field private mAutoPlaySwitchObserver:Landroid/database/ContentObserver;

.field private mAutoPlaySwitchOn:Z

.field private mBackToKeyguardObserver:Landroid/database/ContentObserver;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDefaultDensityContext:Landroid/content/Context;

.field private mEntryPictorialSlidePage:Z

.field private mExposureStart:Z

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mMainSwitchObserver:Landroid/database/ContentObserver;

.field private mMainSwitchOn:Z

.field private mPictorialExist:Z

.field private mPictorialImageObserver:Landroid/database/ContentObserver;

.field private mPictorialMessageViewObserver:Landroid/database/ContentObserver;

.field private mPictorialResources:Landroid/content/res/Resources;

.field private mPictorialServiceConnected:Z

.field private mPictorialWallpaperLoader:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

.field private mRegisterSwitchObserver:Z

.field private mRegisteredPictorialImageObserver:Z

.field private mReloadPictorialRunnable:Ljava/lang/Runnable;

.field private final mStartPictorialServiceRunnable:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;

.field private final mStopPictorialServiceRunnable:Ljava/lang/Runnable;

.field private mUnLockObserver:Landroid/database/ContentObserver;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$1;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mStartPictorialServiceRunnable:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mCallbacks:Ljava/util/List;

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchOn:Z

    .line 233
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchOn:Z

    .line 246
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$1;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mHandler:Landroid/os/Handler;

    .line 329
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$DsCH-AdhYw3l8WW6R23z4nmnvQ8;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$DsCH-AdhYw3l8WW6R23z4nmnvQ8;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mReloadPictorialRunnable:Ljava/lang/Runnable;

    .line 334
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$2;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 466
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$3;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialImageObserver:Landroid/database/ContentObserver;

    .line 475
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$4;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialMessageViewObserver:Landroid/database/ContentObserver;

    .line 484
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$5;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mBackToKeyguardObserver:Landroid/database/ContentObserver;

    .line 493
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$6;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mUnLockObserver:Landroid/database/ContentObserver;

    .line 930
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$7;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$7;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchObserver:Landroid/database/ContentObserver;

    .line 937
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$8;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$8;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchObserver:Landroid/database/ContentObserver;

    .line 1076
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$9;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mConnection:Landroid/content/ServiceConnection;

    .line 1168
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$10;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$10;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mStopPictorialServiceRunnable:Ljava/lang/Runnable;

    .line 298
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    .line 299
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mDefaultDensityContext:Landroid/content/Context;

    .line 300
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 301
    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 302
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->getInstance()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialWallpaperLoader:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    .line 303
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 304
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportPictorial()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->isPictorialInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialExist:Z

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    .line 306
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->initStatusWhenShowingLocked()V

    .line 308
    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialExist:Z

    if-eqz p1, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->registerSwitchObserver()V

    .line 311
    new-instance p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$Qn9wETVpDufXkvvG5Kq6OlmvLw4;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$Qn9wETVpDufXkvvG5Kq6OlmvLw4;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->registerPictorialObserver()V

    .line 316
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->setDefaultSetting()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->setDefaultSetting()V

    return-void
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialServiceConnected:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialServiceConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mRegisteredPictorialImageObserver:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->notifyBackToKeyguard()V

    return-void
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->notifyUnlockKeyguard()V

    return-void
.end method

.method static synthetic access$1600(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->onChangeMainSwitchState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->onChangeAutoSwitchState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mStartPictorialServiceRunnable:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialResources:Landroid/content/res/Resources;

    return-object p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->initStatusWhenShowingLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)I
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getMainSwitchState()I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Landroid/content/ServiceConnection;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->firstProviderService(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->registerPictorialObserver()V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Ljava/lang/Runnable;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mReloadPictorialRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->unRegisterPictorialObserver()V

    return-void
.end method

.method static synthetic access$900(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialExist:Z

    return p0
.end method

.method private static clearInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 1019
    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->sInstance:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    return-void
.end method

.method private firstProviderService(Z)V
    .locals 2

    .line 1100
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialServiceConnected:Z

    if-eqz v0, :cond_0

    return-void

    .line 1103
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isForBidToConnect()Z

    move-result v0

    const-string v1, "PictorialMediator"

    if-eqz v0, :cond_1

    const-string p0, "firstProviderService, isForBidToConnect() is false, return"

    .line 1104
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1107
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mStartPictorialServiceRunnable:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->hasSameTaskInWorkLooper(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "firstProviderService hasSameTaskInWorkLooper, return"

    .line 1108
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v0, "firstProviderService begin"

    .line 1111
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mStartPictorialServiceRunnable:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;->setDeviceProvisioned(Z)V

    .line 1113
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mStartPictorialServiceRunnable:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$StartPictorialServiceRunnable;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAutoPlaySwitchState()I
    .locals 1

    const-string v0, "oppo_pictorial_auto_play"

    .line 1037
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getSwitchStatusFromSettings(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private getClickUrl(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p2, p0, :cond_2

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1360
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getDeepLink()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1356
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getInstantAppLink()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1358
    :cond_2
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getWebUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getColor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 680
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 681
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    .line 683
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 686
    :catch_0
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    :cond_0
    :goto_0
    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;
    .locals 2

    .line 287
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->sInstance:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    if-nez v0, :cond_1

    .line 288
    const-class v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    monitor-enter v0

    .line 289
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->sInstance:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->sInstance:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    .line 292
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 294
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->sInstance:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    return-object p0
.end method

.method private getMainSwitchState()I
    .locals 1

    const-string v0, "oppo_pictorial_apply"

    .line 923
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getSwitchStatusFromSettings(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public static getPictorialDrawable(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 805
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 808
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 810
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    .line 814
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPictorialDrawable e : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PictorialMediator"

    invoke-static {p2, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getPictorialImageDataList(Z)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "#e6ffffff"

    const-string v3, "copyrightDesc"

    const-string v4, "PictorialMediator"

    .line 530
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 531
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 537
    :try_start_0
    iget-object v9, v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "content://com.heytap.pictorial.data.provider/keyguard_image_list"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const-string v12, "isLightFetch=?"

    const/4 v15, 0x1

    new-array v13, v15, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_0

    :try_start_1
    const-string v14, "1"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v23, v4

    move-wide/from16 v16, v5

    move-object v4, v7

    goto/16 :goto_d

    :cond_0
    :try_start_2
    const-string v14, "0"

    :goto_0
    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v9, :cond_2

    if-eqz v9, :cond_1

    .line 656
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8

    .line 542
    :cond_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_a

    move-object v11, v8

    move-object v12, v11

    move v10, v15

    .line 544
    :goto_1
    invoke-virtual {v0, v9}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getCursorData(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v13

    const-string v14, "imageId"

    .line 545
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v8, "groupId"

    .line 546
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v15, "groupType"

    .line 547
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v16, v5

    :try_start_4
    const-string v5, "fileUri"

    .line 548
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "filePath"

    .line 549
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v11

    .line 551
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v19, v7

    const/4 v7, -0x1

    if-eq v11, v7, :cond_3

    .line 552
    :try_start_5
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v23, v4

    move-object v8, v9

    :goto_2
    move-object/from16 v4, v19

    goto/16 :goto_d

    :cond_3
    const/4 v7, 0x0

    :goto_3
    :try_start_6
    const-string v11, "clickText"

    .line 554
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v20, v3

    const-string v3, "webUrl"

    .line 555
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v12

    const-string v12, "instantApp"

    .line 556
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    const-string v1, "deepLink"

    .line 557
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v2

    const-string v2, "title"

    .line 558
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "content"

    .line 559
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v23, v9

    .line 561
    :try_start_8
    new-instance v9, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-direct {v9}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;-><init>()V

    .line 562
    invoke-virtual {v9, v7}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setCopyrightDesc(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v9, v14}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setImageId(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v9, v15}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setGroupType(I)V

    .line 565
    invoke-virtual {v9, v8}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setGroupId(Ljava/lang/String;)V

    .line 566
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setFileUri(Landroid/net/Uri;)V

    .line 567
    invoke-virtual {v9, v6}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setFilePath(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v9, v13}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setDataMap(Ljava/util/Map;)V

    .line 569
    invoke-virtual {v9, v11}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setClickText(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v9, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWebUrl(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v9, v12}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setInstantAppLink(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v9, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setDeepLink(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v9, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setTextTitle(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v9, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setTextContent(Ljava/lang/String;)V

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPictorialImageDataList : , index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v9}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", content : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v9}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v9}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {v4, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    rem-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_6

    .line 586
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->COVER:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    invoke-virtual {v9, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWallpaperType(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;)V

    const-string v0, "titleSize"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/16 v1, 0xe

    move-object/from16 v2, p0

    move-object/from16 v3, v23

    .line 587
    :try_start_9
    invoke-direct {v2, v3, v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getSize(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    const-string v5, "titleColor"

    move-object/from16 v6, v22

    .line 588
    invoke-direct {v2, v3, v5, v6}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getColor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v7, "contentSize"

    .line 589
    invoke-direct {v2, v3, v7, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getSize(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v1

    const-string v7, "contentColor"

    .line 590
    invoke-direct {v2, v3, v7, v6}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getColor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v8, "viewButtonBackground"

    .line 591
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 592
    iget-object v11, v2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f080c03

    invoke-static {v11, v12, v8, v13}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialDrawable(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const-string v12, "viewButtonPressedId"

    .line 593
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 594
    iget-object v14, v2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v14, v15, v12, v13}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialDrawable(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const-string v14, "viewButtonSize"

    const/16 v15, 0xa

    .line 595
    invoke-direct {v2, v3, v14, v15}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getSize(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v14

    const-string v15, "viewButtonColor"

    move-object/from16 v22, v6

    const-string v6, "#ffffffff"

    .line 596
    invoke-direct {v2, v3, v15, v6}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getColor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v15, "viewButtonMarginLeft"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v23, v4

    const/4 v4, 0x0

    .line 597
    :try_start_a
    invoke-direct {v2, v3, v15, v4}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getSize(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v15

    .line 598
    invoke-virtual {v9, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setTitleSize(I)V

    .line 599
    invoke-virtual {v9, v5}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setTitleColor(I)V

    .line 600
    invoke-virtual {v9, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setContentSize(I)V

    .line 601
    invoke-virtual {v9, v7}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setContentColor(I)V

    .line 602
    invoke-virtual {v9, v8}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonBgRes(I)V

    .line 603
    invoke-virtual {v9, v12}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonPressedBgRes(I)V

    .line 604
    invoke-virtual {v9, v11}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonBg(Landroid/graphics/drawable/Drawable;)V

    .line 605
    invoke-virtual {v9, v13}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonPressedBg(Landroid/graphics/drawable/Drawable;)V

    .line 606
    invoke-virtual {v9, v14}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonSize(I)V

    .line 607
    invoke-virtual {v9, v6}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonColor(I)V

    .line 608
    invoke-virtual {v9, v15}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setMoreButtonMarginLeft(I)V

    .line 611
    iget-object v0, v2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->fitPictorialDetailsIntent(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move/from16 v1, p1

    if-nez v1, :cond_4

    if-nez v10, :cond_4

    .line 617
    :try_start_b
    iget-object v0, v2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialWallpaperLoader:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    iget-object v4, v2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    .line 618
    invoke-virtual {v0, v4, v9, v5}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->loadWallpaperSync(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;Z)Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object v0

    .line 619
    invoke-virtual {v9, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWallpaperDrawable(Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v3

    goto/16 :goto_2

    :cond_4
    :goto_4
    move-object/from16 v8, v21

    .line 623
    :try_start_c
    invoke-static {v8, v9}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->isSameImage(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v0, :cond_5

    .line 624
    :try_start_d
    invoke-virtual {v8}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getWallpaperDrawable()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 625
    invoke-virtual {v9, v8}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->copyWallpaperDrawable(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_5
    move-object/from16 v4, v19

    .line 630
    :try_start_e
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v11, v9

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move/from16 v1, p1

    goto/16 :goto_9

    :catch_5
    move-exception v0

    move/from16 v1, p1

    goto/16 :goto_7

    :cond_6
    move-object/from16 v2, p0

    move/from16 v1, p1

    move-object/from16 v8, v21

    move-object/from16 v3, v23

    move-object/from16 v23, v4

    move-object/from16 v4, v19

    .line 631
    rem-int/lit8 v0, v10, 0x2

    const/4 v5, 0x1

    if-ne v0, v5, :cond_8

    if-eqz v18, :cond_8

    .line 633
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;->NEXT:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;

    invoke-virtual {v9, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWallpaperType(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$WallpaperType;)V

    move-object/from16 v0, v18

    .line 634
    invoke-virtual {v0, v9}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setNextWallpaper(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    if-nez v1, :cond_7

    if-ne v10, v5, :cond_7

    .line 640
    iget-object v0, v2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialWallpaperLoader:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;

    iget-object v6, v2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 641
    invoke-virtual {v0, v6, v9, v7}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperLoader;->loadWallpaperSync(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;Z)Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object v0

    .line 642
    invoke-virtual {v9, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->setWallpaperDrawable(Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    move-object v12, v9

    const/4 v11, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v0, v18

    const/4 v7, 0x0

    move-object v11, v0

    move-object v12, v8

    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 650
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    move-object v0, v2

    move-object v9, v3

    move v15, v7

    move-wide/from16 v5, v16

    move-object/from16 v3, v20

    move-object/from16 v2, v22

    const/4 v8, 0x0

    move-object v7, v4

    move-object/from16 v4, v23

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_6
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v3, v23

    goto/16 :goto_f

    :catch_7
    move-exception v0

    move/from16 v1, p1

    move-object/from16 v3, v23

    :goto_7
    move-object/from16 v23, v4

    goto :goto_9

    :catch_8
    move-exception v0

    move/from16 v1, p1

    goto :goto_8

    :catch_9
    move-exception v0

    :goto_8
    move-object/from16 v23, v4

    move-object v3, v9

    :goto_9
    move-object/from16 v4, v19

    goto :goto_c

    :catch_a
    move-exception v0

    move-object/from16 v23, v4

    goto :goto_b

    :cond_a
    move-object/from16 v23, v4

    move-wide/from16 v16, v5

    move-object v4, v7

    move-object v3, v9

    :goto_a
    if-eqz v3, :cond_b

    .line 656
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v3, v9

    goto :goto_f

    :catch_b
    move-exception v0

    move-object/from16 v23, v4

    move-wide/from16 v16, v5

    :goto_b
    move-object v4, v7

    move-object v3, v9

    :goto_c
    move-object v8, v3

    goto :goto_d

    :catchall_3
    move-exception v0

    const/4 v3, 0x0

    goto :goto_f

    :catch_c
    move-exception v0

    move-object/from16 v23, v4

    move-wide/from16 v16, v5

    move-object v4, v7

    const/4 v8, 0x0

    .line 653
    :goto_d
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v8, :cond_b

    .line 656
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 659
    :cond_b
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPictorialImageDataList cost time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isLightFetch = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v23

    .line 659
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catchall_4
    move-exception v0

    move-object v3, v8

    :goto_f
    if-eqz v3, :cond_c

    .line 656
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 658
    :cond_c
    throw v0
.end method

.method private getPictorialMessageViewInfo()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;
    .locals 13

    const/4 v0, 0x0

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "content://com.heytap.pictorial.data.provider/keyguard_message_view_show"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 796
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 763
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "messageViewShow"

    .line 764
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    const-string v5, "redDotShow"

    .line 765
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v4, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    const-string v6, "redDotMarginLeft"

    .line 766
    invoke-direct {p0, v1, v6, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getSize(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v6

    const-string v7, "redDotMarginTop"

    .line 767
    invoke-direct {p0, v1, v7, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getSize(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "redDotRadius"

    .line 768
    invoke-direct {p0, v1, v8, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getSize(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "entryShow"

    .line 769
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v4, :cond_4

    move v9, v4

    goto :goto_2

    :cond_4
    move v9, v3

    :goto_2
    const-string v10, "entryImageId"

    .line 770
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 771
    iget-object v11, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialResources()Landroid/content/res/Resources;

    move-result-object p0

    const v12, 0x7f080c04

    invoke-static {v11, p0, v10, v12}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialDrawable(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v11, "firstAnimationShow"

    .line 774
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-ne v11, v4, :cond_5

    move v11, v4

    goto :goto_3

    :cond_5
    move v11, v3

    :goto_3
    const-string v12, "promptAnimationShow"

    .line 775
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-ne v12, v4, :cond_6

    move v3, v4

    .line 777
    :cond_6
    new-instance v4, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-direct {v4}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;-><init>()V

    .line 778
    invoke-virtual {v4, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setMessageViewShow(Z)V

    .line 779
    invoke-virtual {v4, v5}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setRedDotShow(Z)V

    .line 780
    invoke-virtual {v4, v9}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setEntryShow(Z)V

    .line 781
    invoke-virtual {v4, v11}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setFirstAnimationShow(Z)V

    .line 782
    invoke-virtual {v4, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setPromptAnimationShow(Z)V

    .line 783
    invoke-virtual {v4, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setEntryDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 784
    invoke-virtual {v4, v10}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setEntryDrawableRes(I)V

    .line 785
    invoke-virtual {v4, v6}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setRedPointMarginLeft(I)V

    .line 786
    invoke-virtual {v4, v7}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setRedPointMarginTop(I)V

    .line 787
    invoke-virtual {v4, v8}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setRedPointR(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_7

    .line 796
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v4

    :cond_8
    if-eqz v1, :cond_9

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v1, v0

    .line 793
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_9

    .line 796
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v0

    :catchall_1
    move-exception p0

    :goto_6
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 798
    :cond_a
    throw p0
.end method

.method private getSize(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 0

    .line 668
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 670
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mDefaultDensityContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->dp2px(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    .line 672
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mDefaultDensityContext:Landroid/content/Context;

    invoke-static {p0, p3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->dp2px(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getSwitchStatusFromSettings(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    .line 1047
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1049
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPictorialSwitchState switch = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  SettingNotFoundException return = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictorialMediator"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method private getViewStateInfoFromSP()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;
    .locals 5

    .line 842
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "pictorial_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "view_state_info"

    const-string v3, ""

    .line 843
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/gson/ExclusionStrategy;

    new-instance v4, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo$SkipStrategy;

    invoke-direct {v4}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo$SkipStrategy;-><init>()V

    aput-object v4, v3, v1

    .line 845
    invoke-virtual {v2, v3}, Lcom/google/gson/GsonBuilder;->setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 846
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    const/4 v2, 0x0

    .line 848
    :try_start_0
    const-class v3, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    if-nez v0, :cond_0

    return-object v2

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 853
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->getEntryDrawableRes()I

    move-result v3

    const v4, 0x7f080c04

    .line 852
    invoke-static {v1, p0, v3, v4}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialDrawable(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setEntryDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 856
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method private initStatusWhenShowingLocked()V
    .locals 3

    .line 1056
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getMainSwitchState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchOn:Z

    .line 1057
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchOn:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getAutoPlaySwitchState()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchOn:Z

    return-void
.end method

.method private isForBidToConnect()Z
    .locals 1

    .line 1061
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialExist:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1062
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1063
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isMainSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    .line 1065
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result p0

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

.method private modifyMessageViewInfo(Ljava/lang/String;I)V
    .locals 1

    .line 1204
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialServiceConnected:Z

    if-nez v0, :cond_0

    return-void

    .line 1207
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isForBidToConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1210
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1211
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1212
    new-instance p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$-FHlR7-HQt3XRQ20tPCgbAevabA;

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$-FHlR7-HQt3XRQ20tPCgbAevabA;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/content/ContentValues;)V

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyBackToKeyguard()V
    .locals 2

    const-string v0, "PictorialMediator"

    const-string v1, "notifyBackToKeyguard"

    .line 862
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isForBidToConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "notifyBackToKeyguard isForBidToConnect return"

    .line 864
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 867
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->dispatchBackToKeyguard()V

    .line 868
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->doKeyguardNotifyLock()V

    :cond_1
    return-void
.end method

.method private notifyUnlockKeyguard()V
    .locals 2

    const-string v0, "PictorialMediator"

    const-string v1, "notifyUnlockKeyguard"

    .line 874
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isMainSwitchOn()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "notifyUnlockKeyguard isMainSwitchOn is off"

    .line 876
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 879
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->dispatchUnLockKeyguard()V

    return-void
.end method

.method private onChangeAutoSwitchState()V
    .locals 7

    .line 963
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getAutoPlaySwitchState()I

    move-result v0

    .line 964
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getMainSwitchState()I

    move-result v1

    .line 965
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result v2

    .line 966
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pictorial auto play switch change, autoPlaySwitchState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mainSwitchState = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v5, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isDefaultKeyguard = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "PictorialMediator"

    invoke-static {v6, v3}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v5, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    .line 970
    :goto_2
    iput-boolean v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchOn:Z

    if-ne v0, v5, :cond_3

    if-ne v1, v5, :cond_3

    if-eqz v2, :cond_3

    move v4, v5

    .line 971
    :cond_3
    iput-boolean v4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchOn:Z

    .line 974
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchOn:Z

    if-eqz v0, :cond_4

    .line 975
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->obtainPictorialMessageViewInfo()V

    .line 977
    :cond_4
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchOn:Z

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->dispatchPictorialAutoSwitchChange(Z)V

    return-void
.end method

.method private onChangeMainSwitchState()V
    .locals 6

    .line 945
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getMainSwitchState()I

    move-result v0

    .line 946
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getAutoPlaySwitchState()I

    move-result v1

    .line 947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pictorial switch change, mainSwitchState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", autoPlaySwitchState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "PictorialMediator"

    invoke-static {v5, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v3

    .line 949
    :goto_2
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchOn:Z

    if-ne v1, v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v3

    .line 950
    :goto_3
    iput-boolean v4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchOn:Z

    .line 951
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchOn:Z

    if-eqz v0, :cond_4

    .line 952
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->registerPictorialObserver()V

    .line 953
    invoke-direct {p0, v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->firstProviderService(Z)V

    .line 954
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->obtainPictorialMessageViewInfo()V

    goto :goto_4

    .line 956
    :cond_4
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->unRegisterPictorialObserver()V

    .line 957
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->stopProviderService()V

    .line 959
    :goto_4
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchOn:Z

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->dispatchPictorialMainSwitchChange(Z)V

    return-void
.end method

.method private registerPictorialObserver()V
    .locals 5

    .line 883
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isForBidToConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "PictorialMediator"

    const-string v0, "isForBidToConnect, return"

    .line 884
    invoke-static {p0, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 888
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mRegisteredPictorialImageObserver:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "content://com.heytap.pictorial.data.provider/keyguard_image_list"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialImageObserver:Landroid/database/ContentObserver;

    .line 890
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 889
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 891
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "content://com.heytap.pictorial.data.provider/keyguard_message_view_show"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialMessageViewObserver:Landroid/database/ContentObserver;

    .line 892
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 891
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 893
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "content://com.heytap.pictorial.data.provider/keyguard_popback_animation_show"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mBackToKeyguardObserver:Landroid/database/ContentObserver;

    .line 894
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 893
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 895
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "content://com.heytap.pictorial.data.provider/keyguard_unlock_notification"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mUnLockObserver:Landroid/database/ContentObserver;

    .line 896
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 895
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 898
    :cond_1
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mRegisteredPictorialImageObserver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 900
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private reportStatisticData(Landroid/content/ContentValues;)V
    .locals 1

    .line 1268
    invoke-virtual {p1}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1271
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialServiceConnected:Z

    if-nez v0, :cond_1

    return-void

    .line 1274
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isForBidToConnect()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "PictorialMediator"

    const-string p1, "reportStatisticData, isForBidToConnect() is true, return"

    .line 1275
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1279
    :cond_2
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$TUNQA9BimXPNiFNJAPShiOHboV0;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$TUNQA9BimXPNiFNJAPShiOHboV0;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveViewStateInfoToSP(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V
    .locals 4

    .line 820
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "pictorial_info"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 821
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/gson/ExclusionStrategy;

    new-instance v3, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo$SkipStrategy;

    invoke-direct {v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo$SkipStrategy;-><init>()V

    aput-object v3, v2, v0

    .line 822
    invoke-virtual {v1, v2}, Lcom/google/gson/GsonBuilder;->setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 823
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 826
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setFirstAnimationShow(Z)V

    .line 827
    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setPromptAnimationShow(Z)V

    .line 828
    invoke-virtual {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;->setRedDotShow(Z)V

    .line 829
    const-class v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 831
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 833
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 836
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "view_state_info"

    .line 837
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 838
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setDefaultSetting()V
    .locals 3

    .line 324
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    .line 325
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "keyguard_apk_show_pictorial"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 326
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "pictorial_keyguard_decouping_version"

    const/4 v2, 0x3

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private stopProviderService()V
    .locals 2

    const-string v0, "PictorialMediator"

    const-string v1, "stopProviderService begin"

    .line 1156
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialServiceConnected:Z

    if-nez v1, :cond_0

    const-string p0, "stopProviderService not connect, return"

    .line 1158
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1161
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mStopPictorialServiceRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->hasSameTaskInWorkLooper(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "stopProviderService hasSameTaskInWorkLooper, return"

    .line 1162
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1165
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mStopPictorialServiceRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unRegisterPictorialObserver()V
    .locals 2

    .line 906
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mRegisteredPictorialImageObserver:Z

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialImageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 908
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialMessageViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 909
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mBackToKeyguardObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 910
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mUnLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    .line 912
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mRegisteredPictorialImageObserver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 914
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public actionForClickEntryIcon()V
    .locals 3

    const-string v0, "PictorialMediator"

    const-string v1, "actionForClickEntryIcon"

    .line 1420
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x2711

    .line 1422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "eventname"

    const-string v2, "mag_icon_click"

    .line 1423
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->reportStatisticData(Landroid/content/ContentValues;)V

    return-void
.end method

.method public actionOpenQuickApp(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1403
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActionOpenQuickApp : imageInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialMediator"

    .line 1403
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x2710

    .line 1407
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "eventname"

    const-string v2, "link_quickapp"

    .line 1408
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "case"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1410
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "groupType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1413
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getInstantAppLink()Ljava/lang/String;

    move-result-object p1

    const-string p2, "url"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->reportStatisticData(Landroid/content/ContentValues;)V

    return-void
.end method

.method public actionSleep(II)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "poweroff"

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string v0, "timeout"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1373
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1376
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionSleep : why = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", caseType = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", eventName = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PictorialMediator"

    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x2711

    .line 1380
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "eventname"

    .line 1381
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "case"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1384
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->reportStatisticData(Landroid/content/ContentValues;)V

    return-void
.end method

.method public actionUnlock(II)V
    .locals 3

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actionUnlock : caseState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unlockType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialMediator"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x2711

    .line 1391
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "eventname"

    const-string v2, "unlock"

    .line 1392
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "case"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1394
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1396
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->reportStatisticData(Landroid/content/ContentValues;)V

    return-void
.end method

.method public clickDetail(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1338
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickDetail : imageInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialMediator"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x2711

    .line 1340
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "eventname"

    const-string v2, "click"

    .line 1341
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "groupType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    .line 1345
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "case"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1346
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "linktype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "clicktype"

    const-string v2, "more"

    .line 1347
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getClickUrl(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "url"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->reportStatisticData(Landroid/content/ContentValues;)V

    return-void
.end method

.method public closeConnection()V
    .locals 0

    .line 1073
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->stopProviderService()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1012
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->stopObserver()V

    .line 1013
    invoke-static {}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->clearInstance()V

    const/4 v0, 0x0

    .line 1014
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mExposureStart:Z

    const/4 v0, 0x0

    .line 1015
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-void
.end method

.method public enablePictorialSwitch(Z)V
    .locals 3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enablePictorialSwitch authorize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PictorialMediator"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    .line 424
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "oppo_pictorial_apply"

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 425
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v2, "oppo_pictorial_auto_play"

    invoke-static {p1, v2, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 426
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchOn:Z

    .line 427
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchOn:Z

    return-void
.end method

.method public exposureEnd(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;JI)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1312
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mExposureStart:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1315
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mExposureStart:Z

    .line 1316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exposureEnd : imageInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialMediator"

    .line 1316
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x2710

    .line 1321
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "eventname"

    const-string v2, "show_end"

    .line 1322
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "groupId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "groupType"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    .line 1326
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "case"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1327
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "type"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1328
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "slidetype"

    invoke-virtual {v0, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1329
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1331
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->reportStatisticData(Landroid/content/ContentValues;)V

    return-void
.end method

.method public exposureStart(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1292
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mExposureStart:Z

    if-eqz v0, :cond_1

    return-void

    .line 1295
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exposureStart : imageInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getTextTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PictorialMediator"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1296
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mExposureStart:Z

    .line 1297
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/16 v2, 0x2710

    .line 1298
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "category"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "eventname"

    const-string v3, "show"

    .line 1299
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageId"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupId"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getGroupType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "groupType"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1303
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "case"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1305
    invoke-direct {p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->reportStatisticData(Landroid/content/ContentValues;)V

    return-void
.end method

.method public getCursorData(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 694
    new-instance p0, Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 695
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 696
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 697
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 698
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    goto :goto_1

    .line 712
    :cond_0
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 709
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 706
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 703
    :cond_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    .line 700
    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public getPictorialResources()Landroid/content/res/Resources;
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 438
    :cond_0
    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialExist:Z

    if-nez v2, :cond_1

    return-object v1

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialResources:Landroid/content/res/Resources;

    if-nez v1, :cond_2

    .line 442
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->getPictorialResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialResources:Landroid/content/res/Resources;

    .line 444
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public inPictorialSlidePage()Z
    .locals 0

    .line 1258
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mEntryPictorialSlidePage:Z

    return p0
.end method

.method public isAutoPlaySwitchOn()Z
    .locals 0

    .line 1033
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchOn:Z

    return p0
.end method

.method public isMainSwitchOn()Z
    .locals 0

    .line 919
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchOn:Z

    return p0
.end method

.method public isPictorialExist()Z
    .locals 0

    .line 431
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialExist:Z

    return p0
.end method

.method public synthetic lambda$modifyMessageViewInfo$4$PictorialMediator(Landroid/content/ContentValues;)V
    .locals 2

    .line 1214
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "content://com.heytap.pictorial.data.provider/keyguard_message_view_show"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictorialMediator"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$PictorialMediator()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->getPictorialResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialResources:Landroid/content/res/Resources;

    return-void
.end method

.method public synthetic lambda$new$1$PictorialMediator()V
    .locals 1

    const/4 v0, 0x0

    .line 330
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->firstProviderService(Z)V

    .line 331
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->registerPictorialObserver()V

    return-void
.end method

.method public synthetic lambda$notifyBackFingerUnlock$5$PictorialMediator(Landroid/content/ContentValues;)V
    .locals 2

    .line 1230
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "content://com.heytap.pictorial.data.provider/keyguard_back_finger_unlock"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictorialMediator"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyPictorialFinish$6$PictorialMediator(Landroid/content/ContentValues;)V
    .locals 2

    .line 1246
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "content://com.heytap.pictorial.data.provider/keyguard_notify_finish"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictorialMediator"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$obtainPictorialMessageViewInfo$3$PictorialMediator(I)V
    .locals 3

    .line 729
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const-string v1, "PictorialMediator"

    if-eq p1, v0, :cond_0

    .line 730
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "obtainPictorialMessageViewInfo not same userID in runnable, return, userId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", KeyguardUpdateMonitor.getCurrentUser() = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 730
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 737
    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialServiceConnected:Z

    if-eqz v2, :cond_1

    .line 738
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialMessageViewInfo()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 741
    new-instance v2, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    invoke-direct {v2, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V

    invoke-direct {p0, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->saveViewStateInfoToSP(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V

    goto :goto_0

    .line 743
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getViewStateInfoFromSP()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    const-string p0, "obtainPictorialMessageViewInfo viewInfo is null, return"

    .line 746
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 749
    :cond_3
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 750
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 751
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 752
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public synthetic lambda$obtainPictorialWallpaper$2$PictorialMediator(IZZ)V
    .locals 3

    .line 514
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 515
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "obtainPictorialWallpaper not same userID in runnable, return, userId = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", KeyguardUpdateMonitor.getCurrentUser() = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictorialMediator"

    .line 515
    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 520
    :cond_0
    invoke-direct {p0, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getPictorialImageDataList(Z)Ljava/util/List;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 522
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 523
    iput p1, v1, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 524
    :cond_2
    :goto_0
    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 525
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public synthetic lambda$reportStatisticData$7$PictorialMediator(Landroid/content/ContentValues;)V
    .locals 1

    .line 1281
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "content://com.heytap.pictorial.data.provider/keyguard_buried_point"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "e = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PictorialMediator"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyBackFingerUnlock()V
    .locals 3

    .line 1222
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isForBidToConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PictorialMediator"

    const-string v1, "notifyBackFingerUnlock"

    .line 1225
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 1227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "back_unlock"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1228
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$48DbBKwtkwt7baqPq39NsyDM054;

    invoke-direct {v1, p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$48DbBKwtkwt7baqPq39NsyDM054;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/content/ContentValues;)V

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyEntryPictorialSlidePage(Z)V
    .locals 0

    .line 1254
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mEntryPictorialSlidePage:Z

    return-void
.end method

.method public notifyFirstAnimationAlreadyShow()V
    .locals 2

    const-string v0, "PictorialMediator"

    const-string v1, "notifyFirstAnimationAlreadyShow"

    .line 1189
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "firstAnimationShow"

    const/4 v1, 0x0

    .line 1190
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->modifyMessageViewInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyPictorialFinish(Z)V
    .locals 2

    .line 1238
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isForBidToConnect()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "PictorialMediator"

    const-string v0, "notifyPictorialFinish"

    .line 1241
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x1

    .line 1243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "notify_off"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1244
    new-instance v0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$R639gMiVDNPYCOykecUMcxy9xAM;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$R639gMiVDNPYCOykecUMcxy9xAM;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;Landroid/content/ContentValues;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyPromptAnimationAlreadyShow()V
    .locals 2

    const-string v0, "PictorialMediator"

    const-string v1, "notifyPromptAnimationAlreadyShow"

    .line 1199
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "promptAnimationShow"

    const/4 v1, 0x0

    .line 1200
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->modifyMessageViewInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyRedDotAlreadyShow()V
    .locals 2

    const-string v0, "PictorialMediator"

    const-string v1, "notifyRedDotAlreadyShow"

    .line 1194
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "redDotShow"

    const/4 v1, 0x0

    .line 1195
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->modifyMessageViewInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public obtainPictorialMessageViewInfo()V
    .locals 2

    .line 722
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isForBidToConnect()Z

    move-result v0

    const-string v1, "PictorialMediator"

    if-eqz v0, :cond_0

    const-string p0, "obtainPictorialMessageViewInfo isForBidToConnect, return"

    .line 723
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "obtainPictorialMessageViewInfo"

    .line 726
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 728
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$GxpK3OwYp698c_Waqa_XIqNT7JM;

    invoke-direct {v1, p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$GxpK3OwYp698c_Waqa_XIqNT7JM;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;I)V

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public obtainPictorialWallpaper(ZZ)V
    .locals 2

    .line 503
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->isForBidToConnect()Z

    move-result v0

    const-string v1, "PictorialMediator"

    if-eqz v0, :cond_0

    const-string p0, "obtainPictorialWallpaper isForBidToConnect, return"

    .line 504
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 507
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialServiceConnected:Z

    if-nez v0, :cond_1

    const-string p0, "obtainPictorialWallpaper mPictorialServiceConnected is not, return"

    .line 508
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "obtainPictorialWallpaper"

    .line 511
    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 513
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$YeuSQkcB_zY07BcTnmoaCINgTX0;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialMediator$YeuSQkcB_zY07BcTnmoaCINgTX0;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;IZZ)V

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public openConnection()V
    .locals 1

    const/4 v0, 0x0

    .line 1069
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->firstProviderService(Z)V

    return-void
.end method

.method public registerCallback(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "PictorialMediator"

    const-string p1, "registerCallback error as callback == null,check your methods if need"

    .line 449
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public registerSwitchObserver()V
    .locals 5

    .line 982
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mRegisterSwitchObserver:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "oppo_pictorial_apply"

    .line 984
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchObserver:Landroid/database/ContentObserver;

    .line 986
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 983
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 987
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "oppo_pictorial_auto_play"

    .line 988
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchObserver:Landroid/database/ContentObserver;

    .line 990
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 987
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 992
    :cond_0
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mRegisterSwitchObserver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 994
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-void
.end method

.method public statisticEntryIconUsers()V
    .locals 3

    const-string v0, "PictorialMediator"

    const-string v1, "statisticEntryIconUsers"

    .line 1436
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x2714

    .line 1438
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "eventname"

    const-string v2, "mag_icon_show"

    .line 1439
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->reportStatisticData(Landroid/content/ContentValues;)V

    return-void
.end method

.method public statisticSlideAnimatorUsers()V
    .locals 3

    const-string v0, "PictorialMediator"

    const-string v1, "statisticSlideAnimatorUsers"

    .line 1428
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x2714

    .line 1430
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "eventname"

    const-string v2, "hint_show"

    .line 1431
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->reportStatisticData(Landroid/content/ContentValues;)V

    return-void
.end method

.method public stopObserver()V
    .locals 2

    .line 1023
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1025
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1026
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mRegisteredPictorialImageObserver:Z

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mPictorialImageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unRegisterSwitchObserver()V
    .locals 2

    .line 1000
    :try_start_0
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mRegisterSwitchObserver:Z

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mMainSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1002
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mAutoPlaySwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x0

    .line 1004
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mRegisterSwitchObserver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1006
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterCallback(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
