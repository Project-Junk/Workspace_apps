.class public final Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$b;,
        Lcom/android/settings/wfd/WifiDisplaySettings$c;,
        Lcom/android/settings/wfd/WifiDisplaySettings$d;,
        Lcom/android/settings/wfd/WifiDisplaySettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Landroid/media/MediaRouter;

.field private c:Landroid/hardware/display/DisplayManager;

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Landroid/hardware/display/WifiDisplayStatus;

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:Landroid/net/wifi/p2p/WifiP2pManager;

.field private k:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private l:Landroidx/preference/PreferenceGroup;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private final r:Ljava/lang/Runnable;

.field private final s:Landroid/content/BroadcastReceiver;

.field private final t:Landroid/database/ContentObserver;

.field private final u:Landroid/media/MediaRouter$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 833
    sget-object v0, Lcom/android/settings/wfd/-$$Lambda$WifiDisplaySettings$Pu-CSBWP_49wmVFAf7v3PVINhDU;->INSTANCE:Lcom/android/settings/wfd/-$$Lambda$WifiDisplaySettings$Pu-CSBWP_49wmVFAf7v3PVINhDU;

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    .line 836
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-direct {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>()V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x4

    .line 122
    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->o:I

    .line 613
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->r:Ljava/lang/Runnable;

    .line 622
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->s:Landroid/content/BroadcastReceiver;

    .line 632
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->t:Landroid/database/ContentObserver;

    .line 639
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->u:Landroid/media/MediaRouter$Callback;

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .line 86
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->o:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->c:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method private static synthetic a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 1

    .line 834
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$b;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$b;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V

    return-object v0
.end method

.method private a(I)V
    .locals 14

    and-int/lit8 v0, p1, 0x1

    const-string v1, "wifi_display_wps_config"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "wifi_display_on"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->f:Z

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "wifi_display_certification_on"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->i:Z

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->o:I

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 267
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->c:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->g:Landroid/hardware/display/WifiDisplayStatus;

    move v0, v4

    .line 274
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 278
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->b:Landroid/media/MediaRouter;

    invoke-virtual {v5}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v5

    move v6, v3

    :goto_3
    if-ge v6, v5, :cond_8

    .line 280
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->b:Landroid/media/MediaRouter;

    invoke-virtual {v7, v6}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v7

    .line 281
    invoke-virtual {v7, v2}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1311
    invoke-virtual {v7}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    .line 1320
    iget-object v9, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->g:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v9, :cond_5

    if-eqz v8, :cond_5

    .line 1321
    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v9

    array-length v10, v9

    move v11, v3

    :goto_4
    if-ge v11, v10, :cond_5

    aget-object v12, v9, v11

    .line 1322
    invoke-virtual {v12}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_6

    .line 1313
    new-instance v8, Lcom/android/settings/wfd/WifiDisplaySettings$d;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9, v7, v12}, Lcom/android/settings/wfd/WifiDisplaySettings$d;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V

    goto :goto_6

    .line 1315
    :cond_6
    new-instance v8, Lcom/android/settings/wfd/WifiDisplaySettings$a;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9, v7}, Lcom/android/settings/wfd/WifiDisplaySettings$a;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    .line 282
    :goto_6
    invoke-virtual {p1, v8}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 287
    :cond_8
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->g:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v5, :cond_d

    .line 288
    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 290
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->g:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    array-length v6, v5

    :goto_7
    if-ge v3, v6, :cond_a

    aget-object v7, v5, v3

    .line 291
    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->g:Landroid/hardware/display/WifiDisplayStatus;

    .line 292
    invoke-virtual {v8}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 293
    new-instance v8, Lcom/android/settings/wfd/WifiDisplaySettings$c;

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9, v7}, Lcom/android/settings/wfd/WifiDisplaySettings$c;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    .line 293
    invoke-virtual {p1, v8}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 299
    :cond_a
    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->i:Z

    if-eqz v3, :cond_d

    .line 1331
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    if-nez v3, :cond_b

    .line 1332
    new-instance v3, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    .line 1333
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    const v5, 0x7f121969

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->setTitle(I)V

    .line 1334
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->setOrder(I)V

    goto :goto_8

    .line 1336
    :cond_b
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1338
    :goto_8
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1341
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->g:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 1342
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121977

    .line 1343
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1344
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->g:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1345
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1348
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->g:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result p1

    if-eqz p1, :cond_c

    .line 1349
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1373
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    const v3, 0x7f0d037e

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 1378
    :cond_c
    new-instance p1, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    const v3, 0x7f12196e

    .line 1386
    invoke-virtual {p1, v3}, Landroidx/preference/SwitchPreference;->setTitle(I)V

    .line 1387
    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->m:Z

    invoke-virtual {p1, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 1388
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1391
    new-instance p1, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    const v3, 0x7f121967

    .line 1403
    invoke-virtual {p1, v3}, Landroidx/preference/SwitchPreference;->setTitle(I)V

    .line 1404
    iget-boolean v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->n:Z

    invoke-virtual {p1, v3}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 1405
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1408
    new-instance p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 1409
    new-instance v3, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1422
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->o:I

    const-string v1, "Default"

    const-string v2, "PBC"

    const-string v3, "KEYPAD"

    const-string v4, "DISPLAY"

    .line 1424
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "4"

    const-string v5, "2"

    .line 1425
    filled-new-array {v4, v2, v5, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "wps"

    .line 1430
    invoke-virtual {p1, v5}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v5, 0x7f12197d

    .line 1431
    invoke-virtual {p1, v5}, Landroidx/preference/ListPreference;->setTitle(I)V

    .line 1432
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1433
    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->o:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const-string v1, "%1$s"

    .line 1435
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1436
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1439
    new-instance p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 1440
    new-instance v4, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    invoke-direct {v4, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "Auto"

    const-string v5, "11"

    const-string v6, "6"

    .line 1452
    filled-new-array {v4, v3, v6, v5}, [Ljava/lang/String;

    move-result-object v7

    .line 1453
    filled-new-array {v2, v3, v6, v5}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "listening_channel"

    .line 1454
    invoke-virtual {p1, v9}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v9, 0x7f12196d

    .line 1455
    invoke-virtual {p1, v9}, Landroidx/preference/ListPreference;->setTitle(I)V

    .line 1456
    invoke-virtual {p1, v7}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1457
    invoke-virtual {p1, v8}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1458
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->p:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1460
    iget-object v7, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v7, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1463
    new-instance p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p1, v7}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 1464
    new-instance v7, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    invoke-direct {v7, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {p1, v7}, Landroidx/preference/ListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v7, "36"

    .line 1476
    filled-new-array {v4, v3, v6, v5, v7}, [Ljava/lang/String;

    move-result-object v4

    .line 1477
    filled-new-array {v2, v3, v6, v5, v7}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "operating_channel"

    .line 1478
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f121970

    .line 1479
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setTitle(I)V

    .line 1480
    invoke-virtual {p1, v4}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1481
    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1484
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->l:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_d
    if-eqz v0, :cond_e

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    :cond_e
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;II)V
    .locals 3

    .line 2550
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->j:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->k:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 3

    .line 3582
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03a3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0442

    .line 3583
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 3584
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3586
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 3596
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 3603
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 3604
    invoke-virtual {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f121974

    .line 3605
    invoke-virtual {p0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 3606
    invoke-virtual {p0, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f121971

    .line 3607
    invoke-virtual {p0, p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f121972

    .line 3608
    invoke-virtual {p0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 3609
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    .line 3610
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 3567
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3568
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x4

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    return-void

    .line 3571
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "display"

    .line 228
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifip2p"

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .line 86
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->p:I

    return p1
.end method

.method static synthetic b(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 1

    .line 4576
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4577
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->c:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 3

    .line 1529
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->j:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->k:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$17;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$17;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->m:Z

    return p0
.end method

.method static synthetic c(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .line 86
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->q:I

    return p1
.end method

.method static synthetic c(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->n:Z

    return p0
.end method

.method static synthetic c(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->n:Z

    return p1
.end method

.method static synthetic d(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 3

    .line 2491
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->j:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->k:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(I)V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 3

    .line 2510
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->j:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->k:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 2

    .line 3234
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->d:Z

    if-eqz v0, :cond_1

    .line 3235
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->e:I

    if-nez v0, :cond_0

    .line 3236
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3238
    :cond_0
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->e:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->e:I

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->o:I

    return p0
.end method

.method static synthetic g(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->p:I

    return p0
.end method

.method static synthetic h(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->q:I

    return p0
.end method

.method static synthetic i(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->e:I

    return p0
.end method

.method static synthetic j(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->e:I

    return v0
.end method

.method public static synthetic lambda$Pu-CSBWP_49wmVFAf7v3PVINhDU(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(Landroid/app/Activity;Lcom/android/settings/dashboard/f;)Lcom/android/settings/dashboard/f$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getHelpResource()I
    .locals 1

    const v0, 0x7f120ac0

    return v0
.end method

.method public final getMetricsCategory()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 157
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->h:Landroid/widget/TextView;

    .line 160
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->h:Landroid/widget/TextView;

    const v0, 0x7f12196f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "media_router"

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->b:Landroid/media/MediaRouter;

    .line 141
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->b:Landroid/media/MediaRouter;

    const-string v1, "android.media.mirroring_group"

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->setRouterGroupId(Ljava/lang/String;)V

    const-string v0, "display"

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->c:Landroid/hardware/display/DisplayManager;

    const-string v0, "wifip2p"

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->j:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 144
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->j:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->k:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const p1, 0x7f150144

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->g:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12196c

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 208
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 209
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->f:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 211
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 216
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 224
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 218
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->f:Z

    .line 219
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->f:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->f:Z

    const-string v2, "wifi_display_on"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1
.end method

.method public final onStart()V
    .locals 5

    .line 166
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->d:Z

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 170
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 171
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->t:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->t:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_wps_config"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->t:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->b:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->u:Landroid/media/MediaRouter$Callback;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    const/4 v0, -0x1

    .line 184
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->a(I)V

    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 189
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->d:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->t:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->b:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->u:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 1243
    iget v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->e:I

    if-eqz v1, :cond_0

    .line 1244
    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->e:I

    .line 1245
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
