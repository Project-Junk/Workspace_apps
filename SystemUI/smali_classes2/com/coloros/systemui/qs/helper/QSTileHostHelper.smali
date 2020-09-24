.class public Lcom/coloros/systemui/qs/helper/QSTileHostHelper;
.super Ljava/lang/Object;
.source "QSTileHostHelper.java"


# static fields
.field private static final ALI_PACKAGE_NAME:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final CALCULATOR_PACKAGE_NAME:Ljava/lang/String; = "com.android.calculator2"

.field private static final CALCULATOR_PACKAGE_NAME_NEW:Ljava/lang/String; = "com.coloros.calculator"

.field private static final NEW_SPEECH_TILE_STRING:Ljava/lang/String; = "custom(com.heytap.speechassist/.service.SpeechTileService)"

.field private static final NIGHT_MODE_TILE_STRING:Ljava/lang/String; = "custom(com.color.eyeprotect/com.color.darkmode.tile.DarkModeTileService)"

.field private static final OLD_SPEECH__TILE_STRING:Ljava/lang/String; = "custom(com.coloros.speechassist/.SpeechTileService)"

.field private static final PERSIST_SYS_ACCESSFLAG:Ljava/lang/String; = "access_color_setting"

.field private static final TAG:Ljava/lang/String; = "QSTileHostHelper"

.field private static final TENCENT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"

.field private static volatile mInstance:Lcom/coloros/systemui/qs/helper/QSTileHostHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/qs/helper/QSTileHostHelper$1;-><init>(Lcom/coloros/systemui/qs/helper/QSTileHostHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 154
    new-instance v0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/helper/QSTileHostHelper$2;-><init>(Lcom/coloros/systemui/qs/helper/QSTileHostHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 82
    invoke-direct {p0}, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->registerPackageChangeReceivers()V

    .line 83
    iget-object p1, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "access_color_setting"

    .line 84
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 83
    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/helper/QSTileHostHelper;)Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method public static checkQsSettingList(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "sysui_qs_tiles"

    .line 237
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check Black list, settingString="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Statusbar"

    const-string v4, "QSTileHostHelper"

    invoke-static {v3, v4, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110704

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, ","

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 244
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 246
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 253
    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 252
    invoke-static {p0, v2, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 5

    const-string v0, "Can\'t find component "

    const-string v1, "QSTileHostHelper"

    const/4 v2, 0x0

    .line 222
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 223
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v3, "Statusbar"

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 230
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private registerPackageChangeReceivers()V
    .locals 2

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public checkDefaultCustomTileAvailable()V
    .locals 7

    .line 200
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 202
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v3, "sysui_qs_tiles"

    .line 201
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    const v1, 0x7f110704

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, ","

    .line 207
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const-string v5, "custom("

    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x7

    .line 209
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 211
    invoke-direct {p0, v5}, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDefaultComponentAvailable remove tileSpec "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QSTileHostHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->removeTile(Ljava/util/ArrayList;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 259
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public filterSpecs(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/coloros/systemui/qs/AppQsTileBlackList;->getAppQuickSettingsBlackList()Ljava/util/List;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f110708

    goto :goto_0

    :cond_0
    const v2, 0x7f110707

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "night"

    .line 96
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "custom(com.color.eyeprotect/.services.ColorEyeProtectTileService)"

    .line 98
    invoke-interface {p1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    const-string v2, "custom(com.coloros.speechassist/.SpeechTileService)"

    .line 100
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "custom(com.heytap.speechassist/.service.SpeechTileService)"

    .line 102
    invoke-interface {p1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 104
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 105
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "custom("

    .line 107
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x7

    const-string v7, "/"

    .line 108
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 109
    iget-object v6, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/coloros/common/util/AppInfoUtil;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :goto_2
    move v3, v5

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_6
    const-string v0, "googlenow"

    .line 119
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v1

    if-nez v1, :cond_7

    .line 120
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v3, v5

    :cond_7
    const-string v0, "battery"

    .line 124
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/coloros/systemui/notification/NotificationFeatureOption;->isDisablePowerSave()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 125
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v3, v5

    :cond_8
    const-string v0, "airplane"

    .line 129
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isAirplanemodeDisable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 130
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v3, v5

    :cond_9
    const-string v0, "custom(com.color.eyeprotect/com.color.darkmode.tile.DarkModeTileService)"

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isNightModeDisable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 135
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v3, v5

    :cond_a
    if-eqz v3, :cond_b

    .line 140
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, ","

    .line 141
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v1, "sysui_qs_tiles"

    .line 140
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_b
    return v3
.end method

.method public removeTile(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 182
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "sysui_qs_tiles"

    .line 183
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110704

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 189
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 190
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSTileHostHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 195
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 194
    invoke-static {p0, v2, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    return-void
.end method
