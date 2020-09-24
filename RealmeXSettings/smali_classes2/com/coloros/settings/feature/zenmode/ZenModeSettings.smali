.class public Lcom/coloros/settings/feature/zenmode/ZenModeSettings;
.super Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static B:Z

.field private static final C:Ljava/lang/Object;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final p:Landroid/net/Uri;


# instance fields
.field private A:I

.field private D:Landroid/os/Handler;

.field private E:Landroid/content/BroadcastReceiver;

.field private a:Ljava/lang/String;

.field private b:Landroidx/preference/PreferenceCategory;

.field private c:Landroidx/preference/PreferenceCategory;

.field private j:Landroid/media/AudioManager;

.field private final k:Ljava/text/SimpleDateFormat;

.field private q:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private r:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private s:Landroidx/preference/PreferenceCategory;

.field private t:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private u:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private v:Z

.field private w:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private x:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private y:Z

.field private z:Landroid/app/NotificationManager$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "condition://com.google.android.apps.wellbeing.dnd/winddown"

    .line 130
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->p:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 199
    sput-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->B:Z

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->C:Ljava/lang/Object;

    .line 888
    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$8;

    invoke-direct {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$8;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;-><init>()V

    const-string v0, ""

    .line 101
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->k:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->y:Z

    .line 202
    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$1;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->D:Landroid/os/Handler;

    .line 223
    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$2;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->E:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;ZI)I
    .locals 0

    .line 4174
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->z:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-eqz p1, :cond_0

    or-int/2addr p0, p2

    goto :goto_0

    :cond_0
    not-int p1, p2

    and-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/os/Handler;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->D:Landroid/os/Handler;

    return-object p0
.end method

.method public static a(ILjava/lang/String;)V
    .locals 3

    .line 737
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setZen_zen = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", conditionId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZenModeSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "notification"

    .line 739
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 738
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    .line 741
    :try_start_0
    invoke-interface {v0, p0, v1, p1}, Landroid/app/INotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;IIII)V
    .locals 1

    .line 4185
    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->z:Landroid/app/NotificationManager$Policy;

    .line 4187
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->z:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;Z)V
    .locals 2

    .line 3395
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->j:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3397
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->j:Landroid/media/AudioManager;

    invoke-virtual {p0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->z:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->q:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/media/AudioManager;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->j:Landroid/media/AudioManager;

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 11

    .line 402
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 404
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object v2

    const/16 v3, 0x100

    .line 405
    invoke-virtual {v2, v3}, Lcom/coloros/settings/feature/zenmode/b;->a(I)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/16 v5, 0x20

    .line 406
    invoke-virtual {v2, v5}, Lcom/coloros/settings/feature/zenmode/b;->a(I)Z

    move-result v5

    xor-int/2addr v5, v4

    const/16 v6, 0x40

    .line 407
    invoke-virtual {v2, v6}, Lcom/coloros/settings/feature/zenmode/b;->a(I)Z

    move-result v6

    xor-int/2addr v6, v4

    .line 408
    iget v7, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->A:I

    const/4 v8, 0x0

    const-string v9, "zen_suppressed_effect_curved_dispaly"

    invoke-static {v1, v9, v8, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v4, :cond_0

    move v8, v4

    :cond_0
    const/16 v7, 0x10

    .line 409
    invoke-virtual {v2, v7}, Lcom/coloros/settings/feature/zenmode/b;->a(I)Z

    move-result v2

    xor-int/2addr v2, v4

    .line 410
    iget v7, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->A:I

    const-string v9, "zen_suppressed_effect_key_gard"

    invoke-static {v1, v9, v4, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 411
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    const-string v9, "getNotificationSummary: isNotificationChecked:"

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "ZenModeSettings"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f121b98

    if-eqz v3, :cond_5

    .line 413
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const v10, 0x7f121b99

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_1

    .line 415
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f121b90    # 1.942104E38f

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz v2, :cond_2

    .line 419
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f121b96

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-nez v1, :cond_3

    .line 423
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const v3, 0x7f121b92

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    if-ne v1, v4, :cond_4

    .line 427
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121b91

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz v8, :cond_5

    .line 431
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f120686

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-eqz v6, :cond_7

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 437
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    :cond_6
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f121ae2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNotificationSummary: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->t:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 6

    .line 447
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f121b42

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f121b43

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 454
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100065

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private e()I
    .locals 3

    .line 461
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    .line 462
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 464
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    return v0

    .line 467
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 468
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    if-eqz v2, :cond_1

    .line 469
    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method static synthetic e(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->A:I

    return p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic h(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V
    .locals 7

    .line 3377
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3378
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object v1

    .line 3379
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0x100

    .line 3381
    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/zenmode/b;->a(I)Z

    move-result v3

    const-string v4, "1"

    const-string v5, "0"

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const-string v6, "zen_mode_notification"

    .line 3380
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x20

    .line 3382
    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/zenmode/b;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    const-string v6, "zen_mode_status"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x40

    .line 3383
    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/zenmode/b;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v3, v5

    :goto_2
    const-string v6, "zen_mode_badge"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x10

    .line 3384
    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/zenmode/b;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, v5

    :goto_3
    const-string v1, "zen_mode_banner"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3385
    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->A:I

    const/4 v3, 0x0

    const-string v4, "zen_suppressed_effect_curved_dispaly"

    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "zen_mode_curved_dispaly"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 3386
    iget v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->A:I

    const-string v5, "zen_suppressed_effect_key_gard"

    invoke-static {v2, v5, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "zen_mode_lock_screen"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3387
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const-string v4, "20012"

    const-string v5, "event_open_zen_mode_notification_ways"

    invoke-static {v1, v4, v5, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3388
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3390
    iget v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->A:I

    const-string v6, "no_media"

    invoke-static {v2, v6, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "zen_mode_change_mute_media"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3391
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const-string v1, "event_open_zen_mode_mute_media"

    invoke-static {p0, v4, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic i(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic k(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic l(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->v:Z

    return p0
.end method

.method static synthetic n(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private n()V
    .locals 1

    .line 831
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->B:Z

    if-eqz v0, :cond_0

    return-void

    .line 844
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->q()V

    return-void
.end method

.method static synthetic o(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/app/NotificationManager$Policy;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->z:Landroid/app/NotificationManager$Policy;

    return-object p0
.end method

.method static synthetic p(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic q(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private q()V
    .locals 4

    const/4 v0, 0x1

    .line 850
    iput-boolean v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->v:Z

    .line 851
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->z:Landroid/app/NotificationManager$Policy;

    .line 853
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->w:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 854
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->x:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/16 v2, 0x10

    .line 855
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a(I)Z

    move-result v2

    .line 854
    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 856
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->x:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->z:Landroid/app/NotificationManager$Policy;

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 859
    iput-boolean v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->v:Z

    return-void
.end method

.method static synthetic r(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private r()V
    .locals 4

    .line 1302
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    .line 1303
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    .line 1304
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1305
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v2

    .line 1306
    sget-object v3, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->p:Landroid/net/Uri;

    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1309
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "schedule"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1310
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic s(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ZenModeSettings"

    return-object v0
.end method

.method protected final f()V
    .locals 0

    .line 810
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->n()V

    .line 811
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->h()V

    return-void
.end method

.method protected final g()V
    .locals 0

    .line 819
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->n()V

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a8c

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15015a

    return v0
.end method

.method protected final h()V
    .locals 5

    .line 711
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->h:Ljava/lang/String;

    const-string v1, "manal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 712
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->h:Ljava/lang/String;

    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 716
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->q:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eq v2, v0, :cond_2

    move v1, v3

    .line 719
    :cond_2
    sget-boolean v3, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->d:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refreshToggleState_oldState = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", newState = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isChanged = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZenModeSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_4

    .line 722
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->q:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 249
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 252
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->A:I

    .line 264
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->z:Landroid/app/NotificationManager$Policy;

    .line 265
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "audio"

    .line 268
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const-string v2, "no_media"

    .line 269
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->t:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 270
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 271
    iget-object v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v3, "priority_settings"

    .line 274
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->s:Landroidx/preference/PreferenceCategory;

    const-string v3, "auto_category"

    .line 275
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->b:Landroidx/preference/PreferenceCategory;

    const-string v3, "automation_settings"

    .line 278
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->removePreference(Ljava/lang/String;)Z

    .line 282
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->c:Landroidx/preference/PreferenceCategory;

    const-string v3, "manal_toggle"

    .line 287
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->q:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 1704
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->j:Landroid/media/AudioManager;

    .line 289
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->h()V

    .line 291
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->q:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v3, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$3;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$3;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "auto_rules"

    .line 321
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->r:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 322
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->r:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->r:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    new-instance v3, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$4;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$4;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 334
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->t:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 335
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->A:I

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 336
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->t:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->A:I

    invoke-static {v5, v2, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 340
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "onCreate: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->A:I

    invoke-static {v5, v2, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ZenModeSettings"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->q:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->t:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 343
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->A:I

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->t:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$5;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$5;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "allowed_notification"

    .line 360
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->u:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 361
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->u:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 2600
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "events"

    .line 2627
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->w:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 2628
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->w:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$6;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$6;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 2651
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->w:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_4

    .line 2652
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->s:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    const-string v0, "repeat_callers"

    .line 2655
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->x:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 2660
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->x:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f121b54

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    .line 2661
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "com.android.internal.R.integer.config_zen_repeat_callers_threshold"

    invoke-static {v5}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2660
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2663
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->x:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$7;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$7;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 369
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->r()V

    .line 371
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/al;->a(Landroidx/preference/PreferenceScreen;Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 788
    invoke-super {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->onDestroy()V

    .line 790
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 750
    invoke-super {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->onResume()V

    .line 751
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->n()V

    .line 753
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->r:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->u:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    return-void
.end method
