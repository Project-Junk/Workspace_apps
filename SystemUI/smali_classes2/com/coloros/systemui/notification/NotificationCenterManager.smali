.class public Lcom/coloros/systemui/notification/NotificationCenterManager;
.super Lcom/coloros/common/manager/HelperExtManager;
.source "NotificationCenterManager.java"


# static fields
.field public static final NOTIFICATION_TAG:Ljava/lang/String; = "Notification_"

.field private static final TAG:Ljava/lang/String; = "Notification_NotificationCenterManager"

.field private static final mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontScale:F

.field private mHandler:Landroid/os/Handler;

.field private mHasSetNotificationAssistant:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mINM:Landroid/app/INotificationManager;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mOppoActivityManager:Landroid/app/OppoActivityManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSaveChannelImportanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;-><init>()V

    sput-object v0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/coloros/common/manager/HelperExtManager;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mHasSetNotificationAssistant:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    iput v0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mFontScale:F

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mSaveChannelImportanceMap:Ljava/util/HashMap;

    .line 268
    new-instance v0, Lcom/coloros/systemui/notification/NotificationCenterManager$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/NotificationCenterManager$2;-><init>(Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/NotificationCenterManager;Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->initNotificationPolicy(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;
    .locals 1

    .line 93
    sget-object v0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    return-object v0
.end method

.method private initHelpers()V
    .locals 4

    .line 126
    const-class v0, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/HeadsUpHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 127
    const-class v0, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/KeyguardHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/KeyguardHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 128
    const-class v0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 129
    const-class v0, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/SmartDriverHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 130
    const-class v0, Lcom/coloros/systemui/notification/helper/SoundHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/SoundHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/SoundHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 131
    const-class v0, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/WakeupScreenHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 135
    const-class v0, Lcom/coloros/systemui/notification/helper/OtgHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/OtgHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/OtgHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 136
    const-class v0, Lcom/coloros/systemui/notification/helper/SmallAppHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/SmallAppHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/SmallAppHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 137
    const-class v0, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/PrivacyHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/PrivacyHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 138
    const-class v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 139
    const-class v0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 140
    const-class v0, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/NotificationCenterHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 141
    const-class v0, Lcom/coloros/systemui/notification/helper/DndAlertHelper;

    new-instance v1, Lcom/coloros/systemui/notification/helper/DndAlertHelper;

    iget-object v2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationCenterManager:Lcom/coloros/systemui/notification/NotificationCenterManager;

    invoke-direct {v1, v2, v3}, Lcom/coloros/systemui/notification/helper/DndAlertHelper;-><init>(Landroid/content/Context;Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addHelper(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method private initHelpers(Landroid/os/Handler;)V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelpers()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 189
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/notification/helper/Helper;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/notification/helper/Helper;->initHelper(Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initNotificationPolicy(Landroid/content/Context;)V
    .locals 10

    const-string p0, "ColorNotificationInitPolicy"

    const/4 v0, 0x0

    .line 154
    invoke-static {p1, p0, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "notification"

    .line 156
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 158
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 160
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v3, -0x11

    .line 161
    iget v6, v1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 162
    iget v7, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 163
    iget v3, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v8, v3, -0x101

    .line 164
    iget v9, v1, Landroid/app/NotificationManager$Policy;->state:I

    .line 165
    new-instance v1, Landroid/app/NotificationManager$Policy;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    .line 168
    invoke-static {p1, p0, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "show_notification_snooze"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->isUpgradeFromOldVersion(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 173
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object p0

    const-class v0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/helper/EnvelopeHelper;->restoreEnvelopeCount(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private isSmartNotificationEnabled()Z
    .locals 2

    .line 261
    iget-object p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "smart_notification_enable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFontScale()F
    .locals 0

    .line 314
    iget p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mFontScale:F

    return p0
.end method

.method public getHeadsUpManager()Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method public getNotificationEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method public getNotificationManager()Landroid/app/INotificationManager;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mINM:Landroid/app/INotificationManager;

    return-object p0
.end method

.method public getSaveChannelImportanceMap()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mSaveChannelImportanceMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method public handleAppForNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    .line 288
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 290
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result p1

    .line 291
    sget-boolean v2, Lcom/coloros/common/util/LogUtil;->TRACE:Z

    const-string v3, "Notification_NotificationCenterManager"

    if-eqz v2, :cond_0

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAppForNotification , uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    const-string v5, "Notification"

    invoke-static {v5, v3, v2, v4}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mOppoActivityManager:Landroid/app/OppoActivityManager;

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/OppoActivityManager;->handleAppForNotification(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 297
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OppoActivityManager handleAppForNotification failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public hasSetNotificationAssistant()Z
    .locals 0

    .line 257
    iget-boolean p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mHasSetNotificationAssistant:Z

    return p0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    .line 101
    iput-object p2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mHandler:Landroid/os/Handler;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    .line 103
    iput-object p3, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 104
    iget-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 105
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mINM:Landroid/app/INotificationManager;

    .line 106
    new-instance p1, Landroid/app/OppoActivityManager;

    invoke-direct {p1}, Landroid/app/OppoActivityManager;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mOppoActivityManager:Landroid/app/OppoActivityManager;

    .line 107
    invoke-direct {p0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->initHelpers()V

    .line 108
    iget-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-class p3, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 109
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 110
    iget-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->initHelpers(Landroid/os/Handler;)V

    .line 112
    iget-object p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->initNotificationPolicy(Landroid/content/Context;)V

    .line 113
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.USER_SWITCHED"

    .line 114
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object p3, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->getInstance()Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/aod/aodclock/helper/NotificationStateHelper;->init(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V

    .line 120
    invoke-direct {p0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->isSmartNotificationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/NotificationCenterManager;->setCustomNotificationAssistant()V

    :cond_0
    return-void
.end method

.method public initExt(Landroid/content/Context;)V
    .locals 2

    .line 146
    const-class v0, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;

    new-instance v1, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;

    invoke-direct {v1, p1}, Lcom/coloros/systemui/notification/extend/NotificationPanelViewExt;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addExt(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 147
    const-class v0, Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;

    new-instance v1, Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;

    invoke-direct {v1, p1}, Lcom/coloros/systemui/notification/extend/NotificationStackScrollLayoutExt;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addExt(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 148
    const-class v0, Lcom/coloros/systemui/notification/extend/PowerUIExt;

    new-instance v1, Lcom/coloros/systemui/notification/extend/PowerUIExt;

    invoke-direct {v1, p1}, Lcom/coloros/systemui/notification/extend/PowerUIExt;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/notification/NotificationCenterManager;->addExt(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public initPolicy()V
    .locals 0

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 310
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mFontScale:F

    return-void
.end method

.method public registerEnvelopeFilter(Landroid/content/Context;)V
    .locals 3

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.envelope.envelope_notification"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.envelope.cancel_envelope"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    new-instance v1, Lcom/coloros/systemui/notification/NotificationCenterManager$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/notification/NotificationCenterManager$1;-><init>(Lcom/coloros/systemui/notification/NotificationCenterManager;)V

    const-string p0, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v2, 0x0

    .line 237
    invoke-virtual {p1, v1, v0, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public setCustomNotificationAssistant()V
    .locals 4

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mHasSetNotificationAssistant:Z

    .line 244
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isCtsSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.sysapp"

    const-string v3, "com.coloros.sysapp.CategoryAssistant"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/notification/NotificationCenterManager;->mINM:Landroid/app/INotificationManager;

    invoke-interface {p0, v1, v0}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Notification"

    const-string v1, "Notification_NotificationCenterManager"

    const-string v2, "Error calling assistant"

    .line 251
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
