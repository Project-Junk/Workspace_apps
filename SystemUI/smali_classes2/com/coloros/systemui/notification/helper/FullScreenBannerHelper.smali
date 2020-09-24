.class public Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "FullScreenBannerHelper.java"

# interfaces
.implements Lcom/color/zoomwindow/ColorZoomWindowManager$OnConfigChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL_NOTIFICATION:Ljava/lang/String; = "oppo.intent.action.CANCEL_NOTIFICAITON"

.field private static final BANNER_ANIM_COLLAPSE_DURATION:I = 0x258

.field private static final BANNER_ANIM_DURATION:I = 0x320

.field private static final BANNER_PADDING_EAR_SCREEN_TOP_PROTRAIT_DP:I = 0x25

.field private static final BANNER_PADDING_TOP_LANDSCAPE:I = 0x12

.field private static final BANNER_PADDING_TOP_PROTRAIT:I = 0x24

.field private static final DIALOG_NOTIFICAION_HIDE_BANNER_DELAY:I = 0x2710

.field private static final FULL_SCREEN_SIMPLE_BANNER_KEY:Ljava/lang/String; = "simple_banner_switch_state"

.field private static final HIDE_BANNER:I = 0x0

.field private static final HIDE_BANNER_DELAY:I = 0x1388

.field private static final OPERATOR_BUTTON_CLICK:Ljava/lang/String; = "3"

.field private static final OPERATOR_CONTENT_CLICK:Ljava/lang/String; = "1"

.field private static final OPERATOR_NONE:Ljava/lang/String; = "0"

.field private static final OPERATOR_REMOVE:Ljava/lang/String; = "2"

.field private static final SHOW_BANNER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FullScreenHelper"


# instance fields
.field private mBannerOperator:Ljava/lang/String;

.field private mBannerRealHeight:I

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

.field private mHandler:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

.field private mHasDialogNotification:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsBannerShowing:Z

.field private mIsSimpleBannerEnable:Z

.field private mLastNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mLastOrientation:I

.field private mOrientationChanged:Z

.field private mPendingDialogNotificationEntrys:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mPendingNotificationEntrys:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteInput:Landroid/app/RemoteInput;

.field private mRemoteInputs:[Landroid/app/RemoteInput;

.field private mRootView:Landroid/widget/LinearLayout;

.field private mSimpleBannerObserver:Landroid/database/ContentObserver;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSupportFreeformPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 2

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mSupportFreeformPkgs:Ljava/util/List;

    const-string p2, "0"

    .line 115
    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerOperator:Ljava/lang/String;

    .line 126
    new-instance p2, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p2, p0, v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mSimpleBannerObserver:Landroid/database/ContentObserver;

    const-string p2, "window"

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mWindowManager:Landroid/view/WindowManager;

    .line 139
    new-instance p2, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;-><init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHandler:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    .line 141
    new-instance p1, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$2;-><init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 155
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 156
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 158
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mPendingNotificationEntrys:Ljava/util/LinkedList;

    .line 159
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mPendingDialogNotificationEntrys:Ljava/util/LinkedList;

    .line 162
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 165
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "simple_banner_switch_state"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mIsSimpleBannerEnable:Z

    .line 166
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 167
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mSimpleBannerObserver:Landroid/database/ContentObserver;

    .line 166
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 168
    invoke-static {}, Lcom/color/zoomwindow/ColorZoomWindowManager;->getInstance()Lcom/color/zoomwindow/ColorZoomWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/color/zoomwindow/ColorZoomWindowManager;->addOnConfigChangedListener(Lcom/color/zoomwindow/ColorZoomWindowManager$OnConfigChangedListener;)Z

    .line 169
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->updateFreeformList()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mIsSimpleBannerEnable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mIsSimpleBannerEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Ljava/util/LinkedList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mPendingDialogNotificationEntrys:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$1102(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHasDialogNotification:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Ljava/util/LinkedList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mPendingNotificationEntrys:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mIsBannerShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mOrientationChanged:Z

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mOrientationChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mLastNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mLastNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p1
.end method

.method static synthetic access$400(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->executeBannerCollpseAnim(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerOperator:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHandler:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    return-object p0
.end method

.method static synthetic access$700(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Landroid/widget/LinearLayout;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRootView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Landroid/view/WindowManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$902(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Lcom/coloros/systemui/notification/view/FullScreenBanner;)Lcom/coloros/systemui/notification/view/FullScreenBanner;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    return-object p1
.end method

.method private buildNotification(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;
    .locals 6

    .line 274
    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    invoke-direct {v1, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    .line 278
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, ""

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 279
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    :goto_0
    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setLabel(Ljava/lang/String;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    .line 280
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 281
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    :goto_1
    invoke-virtual {v1, v4}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setContent(Ljava/lang/String;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 282
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setCloned(Z)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    move-result-object v1

    new-instance v2, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;

    invoke-direct {v2, p0, p2, v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$3;-><init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)V

    .line 283
    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setTouchListener(Lcom/coloros/systemui/notification/view/FullScreenBanner$BannerTouchListener;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    move-result-object v1

    .line 316
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->showPictureInPicture(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/common/util/FreeformUtil;->inFreeForm(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 318
    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f11064c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    new-instance v3, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$3AwLyORV1dUfIV3AOlaHNYumW0s;

    invoke-direct {v3, p0, p2}, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$3AwLyORV1dUfIV3AOlaHNYumW0s;-><init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    goto :goto_3

    .line 325
    :cond_3
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->shouldShowMultiWindowButton(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 326
    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f11064d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    new-instance v3, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$3q-l3D4Ck_RTwLlNw5R5FUCRR8Q;

    invoke-direct {v3, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$3q-l3D4Ck_RTwLlNw5R5FUCRR8Q;-><init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)V

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    .line 335
    :cond_4
    :goto_3
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v2

    const-class v3, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 336
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;->needEncrypted(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 337
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f11059f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 338
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/coloros/common/util/AppInfoUtil;->getAppNameByPkgName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setLabel(Ljava/lang/String;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    move-result-object p0

    .line 339
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setContent(Ljava/lang/String;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    return-object v1

    .line 344
    :cond_5
    iget-object p2, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz p2, :cond_8

    .line 345
    iget-object p2, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 346
    array-length v0, p2

    :goto_4
    if-ge v4, v0, :cond_8

    aget-object v2, p2, v4

    .line 348
    iget-object v3, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_6

    goto :goto_5

    .line 352
    :cond_6
    invoke-direct {p0, v2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->hasRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 354
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z

    .line 355
    iget-object v2, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$C7hrwM2pBFJC1Q1o2N2PPQLOypE;

    invoke-direct {v3, p0, p1}, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$C7hrwM2pBFJC1Q1o2N2PPQLOypE;-><init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Landroid/content/Context;)V

    new-instance v5, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$4NLw08aaWLR0qwty9lhbs_HFQew;

    invoke-direct {v5, p0, p1}, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$4NLw08aaWLR0qwty9lhbs_HFQew;-><init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    goto :goto_5

    .line 365
    :cond_7
    iget-object v3, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$V6UOmkZTGv96MLdQo-XjMy74NCs;

    invoke-direct {v5, p0, v2}, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$V6UOmkZTGv96MLdQo-XjMy74NCs;-><init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Landroid/app/Notification$Action;)V

    invoke-virtual {v1, v3, v5}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    return-object v1
.end method

.method private executeBannerCollpseAnim()V
    .locals 1

    const/4 v0, 0x1

    .line 417
    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->executeBannerCollpseAnim(Z)V

    return-void
.end method

.method private executeBannerCollpseAnim(Z)V
    .locals 4

    .line 421
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 427
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    .line 432
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isEarScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42140000    # 37.0f

    .line 433
    invoke-static {v0, v2}, Lcom/coloros/systemui/common/util/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x24

    .line 437
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    new-array v1, v1, [F

    const/4 v3, 0x0

    int-to-float v0, v0

    aput v0, v1, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerRealHeight:I

    neg-int v3, v3

    add-int/lit8 v3, v3, -0xa

    int-to-float v3, v3

    aput v3, v1, v0

    const-string v0, "translationY"

    invoke-static {v2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    const-wide/16 v1, 0x258

    .line 439
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    .line 441
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 443
    :goto_1
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 445
    new-instance v1, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$4;-><init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 493
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private executeBannerExpandAnim(Z)V
    .locals 5

    .line 387
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "0"

    .line 391
    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerOperator:Ljava/lang/String;

    .line 394
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 396
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/16 v0, 0x12

    goto :goto_0

    .line 401
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isEarScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    const/high16 v2, 0x42140000    # 37.0f

    .line 402
    invoke-static {v0, v2}, Lcom/coloros/systemui/common/util/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x24

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 406
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    new-array v1, v1, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerRealHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v1, v3

    int-to-float v0, v0

    aput v0, v1, v2

    const-string v0, "translationY"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x320

    .line 407
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 408
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/HeadsUpAppearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 409
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 411
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->setTranslationY(F)V

    .line 413
    :goto_1
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mIsBannerShowing:Z

    return-void
.end method

.method private getBannerOuterTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 259
    new-instance v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$dqdmdp0lR3R9T39CNiY6Wg52lKs;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$dqdmdp0lR3R9T39CNiY6Wg52lKs;-><init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)V

    return-object v0
.end method

.method private getGestureLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 512
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07079b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 513
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/16 v5, 0x7de

    const v6, 0x840528

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 523
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x31

    .line 524
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "Simple Banner Window"

    .line 525
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 526
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->getRealBannerHeight()I

    return-object v0
.end method

.method private getRealBannerHeight()I
    .locals 3

    const/4 v0, 0x0

    .line 535
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 536
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 537
    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-virtual {v2, v1, v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->measure(II)V

    .line 538
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerRealHeight:I

    .line 539
    iget p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerRealHeight:I

    return p0
.end method

.method private hasRemoteInput(Landroid/app/Notification$Action;)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 546
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 547
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object p1

    array-length v0, p1

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 548
    invoke-virtual {v2}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method private notLandscape()Z
    .locals 1

    .line 780
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 781
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notLandscapeFullScreen()Z
    .locals 0

    .line 786
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->notLandscape()Z

    move-result p0

    return p0
.end method

.method private sendRemoteInput(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 2

    .line 497
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 498
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v1}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    .line 500
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRemoteInputs:[Landroid/app/RemoteInput;

    invoke-static {v1, p2, v0}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 504
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FullScreenHelper"

    const-string p2, "Unable to send remote input result"

    .line 506
    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static startZoomWindow(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;Z)V
    .locals 3

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startZoomWindow: pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isZoomWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "FullScreenHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 852
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 853
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 854
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 855
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 856
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 857
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 858
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_window_mode"

    if-eqz p2, :cond_0

    .line 860
    sget p2, Lcom/color/zoomwindow/ColorZoomWindowManager;->WINDOWING_MODE_ZOOM:I

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 862
    :cond_0
    sget p2, Lcom/color/zoomwindow/ColorZoomWindowManager;->WINDOWING_MODE_FULLSCREEN:I

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 864
    :goto_0
    invoke-static {}, Lcom/color/zoomwindow/ColorZoomWindowManager;->getInstance()Lcom/color/zoomwindow/ColorZoomWindowManager;

    move-result-object p2

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/color/zoomwindow/ColorZoomWindowManager;->startZoomWindow(Landroid/content/Intent;Landroid/os/Bundle;ILjava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateFullBanner(Landroid/content/Context;Z)V
    .locals 2

    .line 591
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->getGestureLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "window"

    .line 592
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    const v1, -0x20001

    if-eqz p2, :cond_0

    .line 594
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p2, p2, -0x9

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 595
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr p2, v1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p2, 0x30

    .line 596
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_0

    .line 598
    :cond_0
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p2, p2, 0x8

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 599
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr p2, v1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 601
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRootView:Landroid/widget/LinearLayout;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public cancelBanner()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 623
    invoke-direct {p0, v0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->executeBannerCollpseAnim(Z)V

    :cond_0
    return-void
.end method

.method public closeRemoteInputs()V
    .locals 3

    .line 661
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    if-eqz v0, :cond_0

    .line 662
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 665
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->closeRemoteInput()V

    goto :goto_0

    :cond_0
    const-string p0, "FullScreenHelper"

    const-string v0, "mFullScreenBanner is null"

    .line 667
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public hideBanner()V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    if-eqz v0, :cond_1

    .line 606
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->executeBannerCollpseAnim()V

    .line 609
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mLastNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_1

    .line 610
    sget-boolean v0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide simple banner! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mLastNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreenHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mLastNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 615
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    .line 616
    invoke-static {v2}, Lcom/coloros/common/util/AppInfoUtil;->getTopFullScreenApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerOperator:Ljava/lang/String;

    .line 614
    invoke-static {v0, v1, v2, p0}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->collectSimpleBannerUseStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public isSimpleBannerEnable()Z
    .locals 1

    .line 629
    iget-boolean v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mIsSimpleBannerEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/common/util/AppInfoUtil;->getTopIsFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSimpleBannerEnable(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, "android.text"

    const-string v2, "android.title"

    if-eqz p2, :cond_0

    .line 641
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 642
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 644
    :cond_0
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 645
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 647
    :goto_0
    iget-boolean v1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mIsSimpleBannerEnable:Z

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_4

    .line 649
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorOSNavigationBarManager;->getTopIsFullscreen()Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->sBlackScreenEnable:Z

    if-eqz p0, :cond_4

    :cond_1
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 650
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_2

    .line 651
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 652
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->isThirdPartInCallNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    instance-of p0, v2, Ljava/lang/String;

    if-eqz p0, :cond_3

    check-cast v2, Ljava/lang/String;

    .line 653
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_4

    check-cast p2, Ljava/lang/String;

    .line 654
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_1
    const/4 p0, 0x1

    move v0, p0

    :cond_4
    return v0
.end method

.method public synthetic lambda$buildNotification$1$FullScreenBannerHelper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;)V
    .locals 0

    const-string p2, "3"

    .line 320
    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerOperator:Ljava/lang/String;

    .line 321
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->hideBanner()V

    .line 322
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->pipReply(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public synthetic lambda$buildNotification$2$FullScreenBannerHelper(Landroid/view/View;)V
    .locals 0

    const-string p1, "3"

    .line 328
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerOperator:Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->hideBanner()V

    return-void
.end method

.method public synthetic lambda$buildNotification$3$FullScreenBannerHelper(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    const-string p2, "3"

    .line 356
    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerOperator:Ljava/lang/String;

    const/4 p2, 0x1

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->updateFullBanner(Landroid/content/Context;Z)V

    .line 358
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHandler:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->removeMessages(I)V

    return-void
.end method

.method public synthetic lambda$buildNotification$4$FullScreenBannerHelper(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->sendRemoteInput(Landroid/content/Context;Landroid/widget/EditText;)V

    const/4 p2, 0x0

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->updateFullBanner(Landroid/content/Context;Z)V

    .line 362
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->hideBanner()V

    return-void
.end method

.method public synthetic lambda$buildNotification$5$FullScreenBannerHelper(Landroid/app/Notification$Action;Landroid/view/View;)V
    .locals 1

    .line 366
    iget-object p2, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const-string v0, "FullScreenHelper"

    if-eqz p2, :cond_0

    const-string p2, "3"

    .line 367
    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mBannerOperator:Ljava/lang/String;

    .line 369
    :try_start_0
    iget-object p1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    .line 370
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->hideBanner()V

    .line 371
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "oppo.intent.action.CANCEL_NOTIFICAITON"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 373
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sending contentIntent failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "action.actionIntent is null"

    .line 376
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$getBannerOuterTouchListener$0$FullScreenBannerHelper(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 260
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 261
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 262
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->isRemoteInputActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->closeRemoteInputs()V

    .line 266
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHandler:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    const/4 v0, 0x0

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->sendEmptyMessageDelayed(IJ)Z

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onConfigSwitchChanged(Z)V
    .locals 0

    .line 884
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->updateFreeformList()V

    return-void
.end method

.method public onConfigTypeChanged(I)V
    .locals 0

    .line 879
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->updateFreeformList()V

    return-void
.end method

.method public pipReply(Landroid/service/notification/StatusBarNotification;)V
    .locals 9

    const-string v0, "FullScreenHelper"

    if-nez p1, :cond_0

    const-string p0, "Notification--pipReply: sbn is null"

    .line 753
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 756
    :cond_0
    sget-boolean v1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v1, :cond_1

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification--pip reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    .line 762
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->startZoomWindow(Landroid/service/notification/StatusBarNotification;Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Notification"

    const-string v4, "pipReply wrong"

    .line 764
    invoke-static {v3, v0, v4, v2}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 767
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez v0, :cond_2

    .line 768
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 770
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 773
    iget-object v3, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 774
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p0

    const/16 p1, 0x3e7

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    move v5, v1

    const/4 v6, 0x0

    const-string v7, "success"

    const-string v8, "banner"

    .line 773
    invoke-static/range {v3 .. v8}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->collectFreeformLaunchEvent(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldShowMultiWindowButton(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showBanner(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 6

    const-string v0, "FullScreenHelper"

    if-eqz p2, :cond_a

    .line 183
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 189
    :cond_0
    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 190
    iget-boolean v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHasDialogNotification:Z

    const-string v3, "simplebanner"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 194
    :cond_1
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 195
    iput-boolean v2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHasDialogNotification:Z

    .line 200
    :cond_2
    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v3

    const-class v5, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v3, v5}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v3, v2}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForGameSpaceOrSA(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "force_show"

    .line 202
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 203
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    const-class v3, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v1, v3}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    invoke-virtual {v1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->getThirdPartTelAppPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 204
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p0, :cond_3

    const-string p0, "suppress banner!!! remind in screen assistant instead"

    .line 205
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    const-wide/16 v1, 0x1388

    if-eqz v0, :cond_8

    .line 214
    invoke-virtual {v0}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->isRemoteInputActive()Z

    move-result p3

    if-eqz p3, :cond_5

    return-void

    .line 218
    :cond_5
    iget-object p3, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mLastNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p3, :cond_7

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 219
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p3

    iget-object v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    if-eq p3, v0, :cond_7

    .line 220
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHasDialogNotification:Z

    if-eqz p1, :cond_6

    .line 221
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mPendingNotificationEntrys:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 222
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mPendingDialogNotificationEntrys:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_6
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mPendingNotificationEntrys:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 226
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHandler:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    invoke-virtual {p1, v4}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->removeMessages(I)V

    .line 227
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->hideBanner()V

    return-void

    .line 231
    :cond_7
    iget-object p3, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->buildNotification(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner;->updateBanner(Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;)V

    .line 232
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHandler:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    invoke-virtual {p1, v4}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->removeMessages(I)V

    .line 233
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHandler:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    invoke-virtual {p0, v4, v1, v2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 239
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->buildNotification(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/view/FullScreenBanner$Builder;->create()Lcom/coloros/systemui/notification/view/FullScreenBanner;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    .line 241
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRootView:Landroid/widget/LinearLayout;

    .line 242
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->getGestureLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRootView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mFullScreenBanner:Lcom/coloros/systemui/notification/view/FullScreenBanner;

    const/4 v3, -0x2

    invoke-virtual {p1, v0, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 244
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->getBannerOuterTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    invoke-direct {p0, p3}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->executeBannerExpandAnim(Z)V

    .line 246
    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mLastNotificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 247
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHandler:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    invoke-virtual {p1, v4}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->removeMessages(I)V

    .line 250
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHandler:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;

    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mHasDialogNotification:Z

    if-eqz p0, :cond_9

    const-wide/16 v1, 0x2710

    :cond_9
    invoke-virtual {p1, v4, v1, v2}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$BannerDisplayHander;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 184
    :cond_a
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "entry is null or keyguardshowing="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showBanner(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 172
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p0, :cond_0

    const-string p0, "FullScreenHelper"

    const-string p1, "showBanner: do not show banner->panel is not fully collapsed"

    .line 175
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->showBanner(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method public showPictureInPicture(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 695
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->notLandscape()Z

    move-result v0

    const-string v1, "FullScreenHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 696
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p0, :cond_0

    const-string p0, "Notification--not Landscape"

    .line 697
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 717
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_4

    .line 741
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 748
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mSupportFreeformPkgs:Ljava/util/List;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 742
    :cond_4
    :goto_0
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p0, :cond_5

    const-string p0, "Notification--Content intent is not activity"

    .line 743
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v2
.end method

.method protected updateFreeformList()V
    .locals 2

    .line 871
    :try_start_0
    invoke-static {}, Lcom/color/zoomwindow/ColorZoomWindowManager;->getInstance()Lcom/color/zoomwindow/ColorZoomWindowManager;

    move-result-object v0

    const/4 v1, 0x3

    .line 872
    invoke-virtual {v0, v1}, Lcom/color/zoomwindow/ColorZoomWindowManager;->getZoomAppConfigList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mSupportFreeformPkgs:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 567
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, p1, v2

    .line 568
    invoke-virtual {v3}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v4

    .line 569
    iget-object v5, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_5

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    .line 574
    array-length v6, v4

    move-object v7, v5

    move v5, v0

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v8, v4, v5

    .line 575
    invoke-virtual {v8}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v7, v8

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    goto :goto_2

    .line 582
    :cond_4
    iget-object p1, v3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mPendingIntent:Landroid/app/PendingIntent;

    .line 583
    iput-object v4, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 584
    iput-object v7, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mRemoteInput:Landroid/app/RemoteInput;

    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method
