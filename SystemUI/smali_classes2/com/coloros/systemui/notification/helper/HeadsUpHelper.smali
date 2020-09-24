.class public Lcom/coloros/systemui/notification/helper/HeadsUpHelper;
.super Lcom/coloros/systemui/notification/helper/Helper;
.source "HeadsUpHelper.java"

# interfaces
.implements Lcom/coloros/systemui/notification/helper/KeyListenerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/helper/HeadsUpHelper$HeadsUpListener;,
        Lcom/coloros/systemui/notification/helper/HeadsUpHelper$SANoDisturbObserver;,
        Lcom/coloros/systemui/notification/helper/HeadsUpHelper$GameSpaceObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/systemui/notification/helper/Helper;",
        "Lcom/coloros/systemui/notification/helper/KeyListenerController<",
        "Ljava/lang/String;",
        "Lcom/coloros/systemui/notification/helper/HeadsUpHelper$HeadsUpListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final GAME_SPACE_WHITELIST:[Ljava/lang/String;

.field private static final NAME_GAME_SPACE_MODE:Ljava/lang/String; = "disturb_for_game_space_mode_flag"

.field private static final OPPO_INCALLUI_FLOATING_WINDOW_STATE:Ljava/lang/String; = "oppo_common_center_incallui_floating_window_state"

.field private static final ORIGINAL_INCOMING_CALL_PKG:Ljava/lang/String; = "com.android.incallui"

.field private static final SETTING_KEY_BLOCK_BANNER:Ljava/lang/String; = "edge_panel_block_banner"

.field private static final SETTING_KEY_EDGE_PANEL_BLOCK_BANNER:Ljava/lang/String; = "edge_panel_block_banner"

.field private static final SUPPRESSOR_EDGEPANEL:Ljava/lang/String; = "EdgePanel"

.field private static final SUPPRESSOR_GAME:Ljava/lang/String; = "Game"

.field private static final TAG:Ljava/lang/String; = "HeadsUpHelper"


# instance fields
.field private mClockRinging:Z

.field private mEnvelopeShow:Z

.field private mGameSpaceObserver:Lcom/coloros/systemui/notification/helper/HeadsUpHelper$GameSpaceObserver;

.field private mHeadsUpListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/coloros/systemui/notification/helper/HeadsUpHelper$HeadsUpListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInGameSpace:Z

.field private mIsBlockBannerByEP:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSANoDisturbObserver:Lcom/coloros/systemui/notification/helper/HeadsUpHelper$SANoDisturbObserver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThirdPartTelAppPkg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "com.android.calendar"

    const-string v1, "com.google.android.calendar"

    const-string v2, "com.android.incallui"

    const-string v3, "com.coloros.alarmclock"

    const-string v4, "com.coloros.gamespace"

    const-string v5, "com.coloros.gamespaceui"

    const-string v6, "com.coloros.screenshot"

    .line 60
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->GAME_SPACE_WHITELIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/Helper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mClockRinging:Z

    .line 74
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mEnvelopeShow:Z

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mHeadsUpListenerMap:Ljava/util/HashMap;

    .line 299
    new-instance p1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$1;-><init>(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mIsBlockBannerByEP:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mIsBlockBannerByEP:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->inGameSpace()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mInGameSpace:Z

    return p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mInGameSpace:Z

    return p1
.end method

.method private inGameSpace()Z
    .locals 4

    .line 406
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "disturb_for_game_space_mode_flag"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification--gameSpaceMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification"

    const-string v3, "HeadsUpHelper"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private isPreChannelsNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 256
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 257
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "miscellaneous"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private suppressForGameSpace(Ljava/lang/String;)Z
    .locals 2

    .line 386
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mInGameSpace:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->GAME_SPACE_WHITELIST:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " notification suppressed for GameSpace"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsUpHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method private suppressForSmallApp(Ljava/lang/String;)Z
    .locals 2

    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 398
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->getSmallApp(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/notification/smallApp/SmallApp;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isNotify()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isBanner()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public bridge synthetic addListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$HeadsUpListener;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->addListener(Ljava/lang/String;Lcom/coloros/systemui/notification/helper/HeadsUpHelper$HeadsUpListener;)V

    return-void
.end method

.method public addListener(Ljava/lang/String;Lcom/coloros/systemui/notification/helper/HeadsUpHelper$HeadsUpListener;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mHeadsUpListenerMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public compatibleWithTicker(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 312
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 313
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/coloros/common/util/AppInfoUtil;->isAppAtTop(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 314
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coloros/common/util/AppInfoUtil;->isSystemApk(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 315
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "oppo_banner"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public getImportance(Landroid/service/notification/StatusBarNotification;I)I
    .locals 9

    .line 212
    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/SmallAppHelper;->isSmallApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 213
    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/SmallAppHelper;->getSmallAppPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    .line 214
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->getSmallApp(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/notification/smallApp/SmallApp;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isBanner()Z

    move-result p0

    if-eqz p0, :cond_0

    move p2, v1

    :cond_0
    return p2

    :cond_1
    const-string v0, "Notification--getImportance oriImportance = "

    const-string v2, "HeadsUpHelper"

    if-eqz p2, :cond_e

    .line 223
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->isPreChannelsNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 224
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->vibrate:[J

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez p0, :cond_3

    .line 225
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->defaults:I

    and-int/2addr p0, v3

    if-nez p0, :cond_3

    .line 226
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->defaults:I

    and-int/2addr p0, v5

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v4

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v5

    .line 227
    :goto_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->priority:I

    if-lt v6, v5, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v4

    .line 228
    :goto_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.tencent.mm"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    if-nez v7, :cond_5

    .line 229
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->priority:I

    if-ltz v7, :cond_5

    move v7, v5

    goto :goto_3

    :cond_5
    move v7, v4

    :goto_3
    const/4 v8, 0x3

    if-eqz p0, :cond_6

    if-nez v6, :cond_7

    :cond_6
    if-eqz v7, :cond_8

    :cond_7
    move v8, v1

    goto :goto_4

    :cond_8
    if-nez v6, :cond_9

    if-nez p0, :cond_9

    if-le p2, v3, :cond_9

    move v8, v3

    goto :goto_4

    :cond_9
    if-eqz v6, :cond_a

    if-nez p0, :cond_a

    if-le p2, v8, :cond_a

    goto :goto_4

    :cond_a
    if-nez v6, :cond_b

    if-le p2, v8, :cond_b

    goto :goto_4

    :cond_b
    move v8, p2

    .line 239
    :goto_4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_c

    move p2, v1

    goto :goto_5

    :cond_c
    move p2, v8

    .line 242
    :goto_5
    sget-boolean v1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v1, :cond_f

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isNoisy:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",isHigh:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",fullIntent:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 247
    :cond_e
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p0, :cond_f

    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",vibrate:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",sound:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
    return p2
.end method

.method public getImportanceOfSmallApp(Landroid/service/notification/StatusBarNotification;I)I
    .locals 0

    .line 200
    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/SmallAppHelper;->getSmallAppPkg(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->getSmallApp(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/systemui/notification/smallApp/SmallApp;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isBanner()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p2, 0x4

    :cond_0
    return p2
.end method

.method public getThirdPartTelAppPkg()Ljava/lang/String;
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mThirdPartTelAppPkg:Ljava/lang/String;

    return-object p0
.end method

.method public initHelper(Landroid/os/Handler;)V
    .locals 2

    .line 95
    new-instance p1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$GameSpaceObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$GameSpaceObserver;-><init>(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mGameSpaceObserver:Lcom/coloros/systemui/notification/helper/HeadsUpHelper$GameSpaceObserver;

    .line 96
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mGameSpaceObserver:Lcom/coloros/systemui/notification/helper/HeadsUpHelper$GameSpaceObserver;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$GameSpaceObserver;->observer()V

    .line 97
    invoke-direct {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->inGameSpace()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mInGameSpace:Z

    .line 98
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 99
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 100
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isEdgePanelSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    new-instance p1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$SANoDisturbObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$SANoDisturbObserver;-><init>(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mSANoDisturbObserver:Lcom/coloros/systemui/notification/helper/HeadsUpHelper$SANoDisturbObserver;

    .line 102
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mSANoDisturbObserver:Lcom/coloros/systemui/notification/helper/HeadsUpHelper$SANoDisturbObserver;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$SANoDisturbObserver;->observer()V

    .line 103
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->isBannerBlockedByEP(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mIsBlockBannerByEP:Z

    :cond_0
    return-void
.end method

.method public isAwakenNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForClock()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForEnvelope()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string p1, "call"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "Notification"

    const-string p1, "HeadsUpHelper"

    const-string v0, "Notification-isAwakenNotificationFullScreenIntent"

    .line 189
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isBannerBlockedByEP(Landroid/content/Context;)Z
    .locals 1

    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "edge_panel_block_banner"

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSmallApp(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 196
    invoke-static {p1}, Lcom/coloros/systemui/notification/helper/SmallAppHelper;->isSmallApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method public isThirdPartInCallNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 484
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v1, "call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.incallui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mThirdPartTelAppPkg:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onHighPriorityHeadsUpStateChange(Z)V
    .locals 3

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHighPriorityHeadsUpStateChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v2, "HeadsUpHelper"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->setClockRing(Z)V

    .line 290
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 291
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    :cond_0
    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mHeadsUpListenerMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setClockRing(Z)V
    .locals 0

    .line 418
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mClockRinging:Z

    return-void
.end method

.method public setEnvelopeShow(Z)V
    .locals 0

    .line 428
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mEnvelopeShow:Z

    return-void
.end method

.method public shouldPeekByColoros(Landroid/service/notification/StatusBarNotification;)Z
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/common/helper/KeyguardHelper;->isLockDeadState(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "HeadsUpHelper"

    const/4 v3, 0x0

    if-nez v1, :cond_4

    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppress(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 125
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForCall()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForClock()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForLongScreenShot()Z

    move-result v1

    if-nez v1, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForEnvelope()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForThirdPartInCall(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForGameSpaceOrSA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->isThirdPartInCallNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 141
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p0, :cond_1

    const-string p0, "Notification--suppress banner!!! remind in screen assistant instead"

    .line 142
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3

    .line 148
    :cond_2
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->suppressByTag(Landroid/app/Notification;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "suppress by envelope assistant"

    .line 149
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 127
    :cond_4
    :goto_0
    sget-boolean v1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz v1, :cond_5

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification--No peeking: suppress by color os policy--lockDeadState:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/systemui/common/helper/KeyguardHelper;->isLockDeadState(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mIsChildrenMode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",headsUpPolicy:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppress(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",isKeyguardShowing():"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",suppressForCall:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForCall()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",suppressForClock:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForClock()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",suppressForScreenShot:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForLongScreenShot()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",suppressForEnvelope:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForEnvelope()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",suppressForThirdPartInCall:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForThirdPartInCall(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3
.end method

.method public shouldPeekByColoros(Ljava/lang/String;I)Z
    .locals 3

    .line 156
    iget-object p2, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-virtual {p2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p2

    .line 157
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/helper/KeyguardHelper;->isLockDeadState(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "HeadsUpHelper"

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 158
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForCall()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForClock()Z

    move-result v0

    if-nez v0, :cond_5

    .line 159
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForLongScreenShot()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForEnvelope()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForGameSpaceOrSA(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 170
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p0, :cond_1

    const-string p0, "Notification--shouldPeekByColoros-suppress banner!!! remind in screen assistant instead"

    .line 171
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    .line 176
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    const-class p2, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;->getSmartDriverBannerBlocked(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 177
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p0, :cond_3

    const-string p0, "Notification--shouldPeekByColoros-suppressForSmartDrive"

    .line 178
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x1

    return p0

    .line 160
    :cond_5
    :goto_0
    sget-boolean p1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p1, :cond_6

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification--No peeking: suppress by color os policy--lockDeadState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/helper/KeyguardHelper;->isLockDeadState(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mIsChildrenMode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->getInstance()Lcom/coloros/systemui/common/observer/ChildrenModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/observer/ChildrenModeObserver;->isChildrenMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isKeyguardShowing():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",suppressForCall:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForCall()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",suppressForClock:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForClock()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",suppressForScreenShot:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForLongScreenShot()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",suppressForEnvelope:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForEnvelope()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v2
.end method

.method public shouldShowHeadsup(Ljava/lang/String;I)Z
    .locals 5

    .line 264
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getNotificationEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 271
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldShowHeadsup--pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadsUpHelper"

    const-string v3, "Notification"

    invoke-static {v3, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    const-class v4, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v0, v4}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "shouldShowHeadsup--panelsEnabled false"

    .line 273
    invoke-static {v3, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 277
    :cond_2
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 281
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->shouldPeekByColoros(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v2
.end method

.method public simpleBannerSnooze(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public suppress(Landroid/service/notification/StatusBarNotification;)Z
    .locals 7

    .line 319
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v2, 0x0

    const-string v3, "small_app"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 321
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "small_app_package"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "HeadsUpHelper"

    if-eqz v1, :cond_1

    .line 322
    invoke-direct {p0, v3}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->suppressForSmallApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p0, :cond_0

    .line 324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notification--suppress-smallApp:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",smallAppPkg:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v4

    .line 328
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v1

    const-class v3, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    invoke-virtual {v1, v3}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;->getSmartDriverBannerBlocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p0, :cond_2

    const-string p0, "Notification--suppressForSmartDrive"

    .line 330
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v4

    .line 335
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    const-class v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;->shouldStowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Notification"

    const-string p1, "Notification--suppressFor stowed"

    .line 336
    invoke-static {p0, v5, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_4
    return v2
.end method

.method public suppressForCall()Z
    .locals 4

    .line 412
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "oppo_common_center_incallui_floating_window_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification--suppressForCall show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification"

    const-string v3, "HeadsUpHelper"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public suppressForClock()Z
    .locals 0

    .line 422
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mClockRinging:Z

    return p0
.end method

.method public suppressForEnvelope()Z
    .locals 0

    .line 432
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mEnvelopeShow:Z

    return p0
.end method

.method public suppressForGameSpaceOrSA(Ljava/lang/String;)Z
    .locals 4

    .line 343
    sget-object v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->GAME_SPACE_WHITELIST:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "debug.gamemode.value"

    .line 348
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-boolean p1, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mInGameSpace:Z

    goto :goto_0

    .line 351
    :cond_1
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isEdgePanelSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 352
    iget-object v2, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mHeadsUpListenerMap:Ljava/util/HashMap;

    const-string v3, "EdgePanel"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$HeadsUpListener;

    if-eqz v2, :cond_2

    .line 354
    invoke-interface {v2, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$HeadsUpListener;->shouldSuppress(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 359
    new-instance p1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$2;

    invoke-direct {p1, p0, v0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper$2;-><init>(Lcom/coloros/systemui/notification/helper/HeadsUpHelper;Z)V

    const-string p0, "Notification"

    const-string v0, "HeadsUpHelper"

    invoke-static {p0, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/common/util/LogUtil$IDebug;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public suppressForLongScreenShot()Z
    .locals 1

    const/4 v0, 0x0

    .line 375
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/color/screenshot/ColorLongshotUtils;->getScreenshotManager(Landroid/content/Context;)Lcom/color/screenshot/ColorScreenshotManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/color/screenshot/ColorScreenshotManager;->isLongshotMode()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 380
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public suppressForThirdPartInCall(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    .line 511
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 512
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 513
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->getThirdPartTelAppPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/coloros/common/util/AppInfoUtil;->getCurrentTopAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;->isThirdPartInCallNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/coloros/common/util/AppInfoUtil;->getTopIsFullscreen()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
