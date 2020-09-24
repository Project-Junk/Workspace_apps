.class public Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationLayout"


# instance fields
.field private mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mColorMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private mContext:Landroid/content/Context;

.field private mCurvedDisplayCallColor:Ljava/lang/String;

.field private mCurvedDisplayCallSwitch:I

.field private mCurvedDisplayNotificationColor:Ljava/lang/String;

.field private mCurvedDisplayNotificationSwitch:I

.field private mCurvedDisplayView:Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;

.field private mDelayHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHasShowNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconColor:I

.field private mIconSize:I

.field private mIsNeedShowNotification:Z

.field private mNotiLightRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationIconMargin:I

.field private mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReceivedNotification:Landroid/service/notification/StatusBarNotification;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mShowCurvedNotification:Ljava/lang/Runnable;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mZenMode:I

.field private mZenModeCurveDisplay:I

.field private mZenModeNotification:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 106
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mPackages:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 85
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayCallSwitch:I

    .line 86
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayNotificationSwitch:I

    .line 87
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mZenMode:I

    .line 88
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mZenModeNotification:I

    .line 89
    iput p2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mZenModeCurveDisplay:I

    const/4 p3, -0x1

    .line 93
    iput p3, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mIconColor:I

    const/4 p3, 0x0

    .line 95
    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mBlackList:Ljava/util/List;

    .line 547
    new-instance p3, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$1;-><init>(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)V

    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mShowCurvedNotification:Ljava/lang/Runnable;

    .line 661
    new-instance p3, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$2;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout$2;-><init>(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)V

    iput-object p3, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mDelayHandler:Landroid/os/Handler;

    .line 107
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->setOrientation(I)V

    .line 109
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;JZ)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->showSideFlashWhenNotification(JZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Ljava/util/HashMap;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mNotiLightRecordMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayView:Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;

    return-object p0
.end method

.method private addSideFlash(Z)V
    .locals 5

    const-string v0, "NotificationLayout"

    const-string v1, "Aod"

    const-string v2, "addSideFlash"

    .line 581
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->initWaveView(Z)V

    .line 583
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 587
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 588
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->updateAodDozeStateAndStart(I)V

    .line 589
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/coloros/systemui/aod/aodclock/off/notification/-$$Lambda$NotificationLayout$9vtmLIly6xvOj5O7SmSQHu43V2Y;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/-$$Lambda$NotificationLayout$9vtmLIly6xvOj5O7SmSQHu43V2Y;-><init>(Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 592
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayView:Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/common/DreamHelper;->addCurvedDisplayView(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)V

    :goto_0
    const-string p0, "addCurvedDisplayView"

    .line 594
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkIfInCall()Z
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 599
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private checkStatus()Z
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodIsInShow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->checkIfInCall()Z

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

.method private getDrawableForCustomizeApp(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 503
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isExpRegion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    .line 507
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v5

    goto :goto_0

    :sswitch_1
    const-string v2, "com.android.mms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "com.android.contacts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v2, "com.tencent.mm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v4

    :cond_1
    :goto_0
    const-string p1, "NotificationLayout"

    const-string v2, "Aod"

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    const-string v0, "getDrawableForCustomizeApp: pacekageName is others"

    .line 521
    invoke-static {v2, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 518
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08055b

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 515
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08055e

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 512
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08055c

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 509
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08055d

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    const-string v1, "getDrawableForCustomizeApp: start tint drawable"

    .line 525
    invoke-static {v2, p1, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mIconColor:I

    invoke-static {v0, p0}, Lcom/color/support/util/ColorTintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x3a01688a -> :sswitch_3
        -0x3260a241 -> :sswitch_2
        -0x29760a19 -> :sswitch_1
        0x15924f98 -> :sswitch_0
    .end sparse-switch
.end method

.method private init()V
    .locals 7

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHandler:Landroid/os/Handler;

    .line 114
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mResolver:Landroid/content/ContentResolver;

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 119
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 120
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isExpRegion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 127
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->isShowNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mIsNeedShowNotification:Z

    goto :goto_2

    .line 133
    :cond_2
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    .line 134
    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableNotification()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getAodEnableClockOnly()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mIsNeedShowNotification:Z

    .line 139
    :goto_2
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mIsNeedShowNotification:Z

    const-string v3, "NotificationLayout"

    const-string v4, "Aod"

    if-eqz v0, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0700cf

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mIconSize:I

    .line 145
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0700ce

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mNotificationIconMargin:I

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v5, 0x0

    .line 148
    invoke-virtual {v0, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 149
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v5, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mColorMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mViewMap:Ljava/util/HashMap;

    .line 151
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object v0

    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getTextColorForLockScreen(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mIconColor:I

    .line 152
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->setVisibility(I)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " expRegion = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isExpRegion()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/16 v0, 0x8

    .line 155
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->setVisibility(I)V

    .line 158
    :goto_3
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportCurvedDisplay()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "oppo_aod_curved_display_notification_switch"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayNotificationSwitch:I

    .line 161
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "zen_mode"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mZenMode:I

    .line 163
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mResolver:Landroid/content/ContentResolver;

    .line 164
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const-string v6, "zen_suppressed_effect_notification_list"

    .line 163
    invoke-static {v0, v6, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mZenModeNotification:I

    .line 165
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mResolver:Landroid/content/ContentResolver;

    .line 166
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    const-string v6, "zen_suppressed_effect_curved_dispaly"

    .line 165
    invoke-static {v0, v6, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mZenModeCurveDisplay:I

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    iget v5, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayNotificationSwitch:I

    if-ne v5, v1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setCurvedDisplaySwitchOn(Z)V

    .line 169
    :cond_6
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportCurvedDisplay()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isCurvedDisplaySwitchOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->initCurvedDisplayData()V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurvedDisplay switch: inCall : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayCallSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " notification : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayNotificationSwitch:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " CurvedDisplay color: inCall : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayCallColor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayNotificationColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_7
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getBlackList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mBlackList:Ljava/util/List;

    :cond_8
    return-void
.end method

.method private initCurvedDisplayData()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "oppo_comm_incallui_curved_display_call_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayCallColor:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayCallColor:Ljava/lang/String;

    const-string v1, "red"

    if-nez v0, :cond_0

    .line 204
    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayCallColor:Ljava/lang/String;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "oppo_comm_incallui_curved_display_notification_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayNotificationColor:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayNotificationColor:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 210
    iput-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayNotificationColor:Ljava/lang/String;

    .line 213
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mNotiLightRecordMap:Ljava/util/HashMap;

    return-void
.end method

.method private initWaveView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayCallColor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayNotificationColor:Ljava/lang/String;

    .line 197
    :goto_0
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayView:Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;

    return-void
.end method

.method private isNeedUpdate(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodIsInShow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return v1

    .line 440
    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oppo.logkit"

    .line 442
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 446
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 447
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateNotificationView: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already show, return!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Aod"

    const-string v0, "NotificationLayout"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isShowNotificationOnRealmeWithBlacklist(Ljava/lang/String;)Z
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mBlackList:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private removeNotificationView(Ljava/lang/String;)V
    .locals 3

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeNotificationView: packageName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "NotificationLayout"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 540
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->updateAodDozeStateAndStart(I)V

    .line 541
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 542
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->removeView(Landroid/view/View;)V

    .line 543
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->setAodSuspendState()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showCurvedView(Ljava/lang/String;I)V
    .locals 4

    .line 605
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 608
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportCurvedDisplay()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayNotificationSwitch:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const-string v0, "com.android.incallui"

    .line 610
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 616
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    const-string v2, "NotificationLayout"

    const-string v3, "Aod"

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isShowNotificationOnRealmeWithBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "showCurvedView: don\'t need to show curved view with blackList"

    .line 617
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 622
    :cond_2
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isExpRegion()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "showCurvedView: don\'t need to show curved view"

    .line 623
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 627
    :cond_3
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mZenMode:I

    if-ne v0, v1, :cond_5

    .line 628
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mZenModeNotification:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mZenModeCurveDisplay:I

    if-eq v0, v1, :cond_5

    :cond_4
    const-string p0, "is zenmode refuse curved display "

    .line 629
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "com.tencent.mm"

    .line 635
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x28

    if-ne p2, v0, :cond_6

    return-void

    :cond_6
    const-string v0, "com.tencent.mobileqq"

    .line 639
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f020b30

    if-eq p2, v0, :cond_7

    const/16 v0, 0x81

    if-ne p2, v0, :cond_8

    :cond_7
    return-void

    .line 645
    :cond_8
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isShowingCurvedDisplay()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 646
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "is showing  notification anamation "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 650
    :cond_9
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->checkIfInCall()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p0, "isInCall,don\'t show notification curved display"

    .line 651
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 657
    :cond_a
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mShowCurvedNotification:Ljava/lang/Runnable;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void
.end method

.method private showSideFlashWhenNotification(JZ)V
    .locals 2

    .line 569
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->checkIfInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mDelayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isShowingCurvedDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setShowingCurvedDisplay(Z)V

    .line 575
    invoke-direct {p0, p3}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->addSideFlash(Z)V

    .line 577
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mDelayHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    .line 289
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    .line 290
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oppo.logkit"

    .line 293
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive notification  package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    .line 298
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    .line 299
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isForegroundService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    .line 300
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isForegroundService()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ongoing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    .line 301
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationLayout"

    const-string v2, "Aod"

    .line 297
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "updateNotification: return for foreground service"

    .line 304
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->showCurvedView(Ljava/lang/String;I)V

    .line 310
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "onReceiveNotification: checkStatus return"

    .line 311
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    return-void

    .line 319
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateNotificationView: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already show, return!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 325
    :cond_4
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "updateNotification: don\'t need to update for realme"

    .line 326
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isShowNotificationOnRealmeWithBlacklist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isNeedUpdate(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-nez p1, :cond_8

    :cond_5
    return-void

    .line 331
    :cond_6
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isExpRegion()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 332
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isNeedUpdate(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p0, "updateNotification: don\'t need to update for exp"

    .line 333
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 337
    :cond_7
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mReceivedNotification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isNeedUpdate(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_2

    .line 343
    :cond_8
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->getActiveNotifications()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_1

    .line 348
    :cond_9
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mIsNeedShowNotification:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodDelayState()Z

    move-result v0

    if-nez v0, :cond_e

    .line 349
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 351
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->removeAllViews()V

    .line 352
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v3, v4}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 353
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->updateAodDozeStateAndStart(I)V

    .line 354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 357
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AOD updateNotification : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isShowNotificationOnRealmeWithBlacklist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 360
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v3}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isNeedUpdate(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 361
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->updateNotificationView(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 365
    :cond_b
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isExpRegion()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 366
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v3}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isNeedUpdate(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 367
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->updateNotificationView(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 370
    :cond_c
    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mPackages:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 371
    invoke-direct {p0, v3}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isNeedUpdate(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 372
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->updateNotificationView(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 376
    :cond_d
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isFirstTimeInAod()Z

    move-result p0

    if-nez p0, :cond_e

    .line 377
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->setAodSuspendState()V

    :cond_e
    :goto_1
    return-void

    :cond_f
    :goto_2
    const-string p0, "updateNotification: don\'t need to update"

    .line 338
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateNotificationView(Landroid/service/notification/StatusBarNotification;)V
    .locals 7

    .line 458
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNotificationView: packageName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationLayout"

    const-string v2, "Aod"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 461
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mIconSize:I

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    .line 462
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 463
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 464
    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mNotificationIconMargin:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 467
    :cond_0
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_1

    .line 470
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    const v6, 0x7f0804e1

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "com.android.contacts"

    .line 471
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, "com.android.phone"

    if-eqz v4, :cond_2

    .line 472
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getDrawableForCustomizeApp(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_4

    .line 474
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 476
    :cond_2
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    .line 477
    invoke-static {v4}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    .line 480
    :cond_3
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->getDrawableForCustomizeApp(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "updateNotificationView: get desktop icon drawable"

    .line 482
    invoke-static {v2, v1, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_4
    :goto_0
    if-nez v4, :cond_5

    return-void

    .line 489
    :cond_5
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportRamLessAod()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "updateNotificationView: this screen is support ramless"

    .line 490
    invoke-static {v2, v1, v6}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mColorMatrixColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 493
    :cond_6
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v5, :cond_7

    .line 495
    invoke-virtual {p0, v0, v3}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    :cond_7
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 498
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method


# virtual methods
.method public clearNotificationView()V
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->removeAllViews()V

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 228
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mViewMap:Ljava/util/HashMap;

    if-eqz p0, :cond_1

    .line 229
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$addSideFlash$0$NotificationLayout()V
    .locals 1

    .line 589
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mCurvedDisplayView:Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/aod/common/DreamHelper;->addCurvedDisplayView(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)V

    return-void
.end method

.method public onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 280
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .locals 2

    .line 386
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 391
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onRemoveNotification: notification is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NotificationLayout"

    const-string v0, "Aod"

    invoke-static {v0, p3, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p0, "onRemoveNotification: can\'t remove because this notification has not show"

    .line 393
    invoke-static {v0, p3, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 397
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->getActiveNotifications()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 398
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    .line 399
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 400
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 407
    :cond_3
    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x6

    if-ge p3, v0, :cond_4

    .line 408
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->removeNotificationView(Ljava/lang/String;)V

    goto :goto_1

    .line 410
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mHasShowNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 411
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mViewMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 412
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->removeAllViews()V

    .line 413
    iget-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mIsNeedShowNotification:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodDelayState()Z

    move-result p1

    if-nez p1, :cond_7

    .line 414
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 415
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p1

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->updateAodDozeStateAndStart(I)V

    if-eqz p2, :cond_6

    .line 418
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 419
    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p3}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isNeedUpdate(Landroid/service/notification/StatusBarNotification;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 420
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p2}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->updateNotificationView(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 424
    :cond_6
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isFirstTimeInAod()Z

    move-result p0

    if-nez p0, :cond_7

    .line 425
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->setAodSuspendState()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 285
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->updateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onNotificationLayoutDestroy()V
    .locals 2

    .line 217
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportCurvedDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isCurvedDisplaySwitchOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mNotiLightRecordMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dcsOnShowCurvedDisplayForNotification(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 220
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->removeNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method public updateCurrentNotification()V
    .locals 6

    .line 234
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->checkStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->getActiveNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 238
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 241
    :cond_1
    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mIsNeedShowNotification:Z

    if-eqz v1, :cond_6

    .line 242
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 243
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->updateAodDozeStateAndStart(I)V

    .line 245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has notification when screen off  package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 247
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 248
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ongoing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 249
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NotificationLayout"

    const-string v4, "Aod"

    .line 246
    invoke-static {v4, v3, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AOD updateNotification = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isShowNotificationOnRealmeWithBlacklist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v2}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isNeedUpdate(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->updateNotificationView(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 261
    :cond_3
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isExpRegion()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v2}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isNeedUpdate(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->updateNotificationView(Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_0

    .line 266
    :cond_4
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mPackages:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 267
    invoke-direct {p0, v2}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->isNeedUpdate(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v1}, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->updateNotificationView(Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_0

    .line 272
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/off/notification/NotificationLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isFirstTimeInAod()Z

    move-result p0

    if-nez p0, :cond_6

    .line 273
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodClockHelper;->setAodSuspendState()V

    :cond_6
    :goto_1
    return-void
.end method
