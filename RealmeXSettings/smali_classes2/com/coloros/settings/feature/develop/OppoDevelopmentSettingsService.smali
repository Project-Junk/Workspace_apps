.class public Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;
.super Landroid/app/Service;
.source "OppoDevelopmentSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "262144"


# instance fields
.field private b:Landroid/view/IWindowManager;

.field private c:Landroid/net/wifi/WifiManager;

.field private d:Landroid/preference/ListPreference;

.field private e:Lcom/android/internal/widget/LockPatternUtils;

.field private f:Landroid/content/pm/PackageManager;

.field private g:I

.field private h:Landroid/app/OppoActivityManager;

.field private i:Landroid/webkit/IWebViewUpdateService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->g:I

    return-void
.end method

.method private static a()V
    .locals 2

    .line 232
    new-instance v0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService$a;

    invoke-direct {v0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService$a;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->b:Landroid/view/IWindowManager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b()V
    .locals 5

    :try_start_0
    const-string v0, "SurfaceFlinger"

    .line 400
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "android.ui.ISurfaceComposer"

    .line 404
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    .line 405
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 407
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 409
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 410
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 411
    iput v0, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->g:I

    .line 413
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 415
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 416
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private c()V
    .locals 8

    const/4 v0, 0x1

    .line 459
    new-array v0, v0, [I

    const/16 v1, 0x3a

    const/4 v2, 0x0

    aput v1, v0, v2

    const-string v3, "appops"

    .line 460
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 463
    invoke-virtual {v3, v0}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 466
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 467
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 468
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v7, 0x200

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 472
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v1, v5, v4, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "OppoDevelopmentSettingsService"

    const-string v1, "onCreate()"

    .line 82
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "window"

    .line 85
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->b:Landroid/view/IWindowManager;

    .line 86
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->d:Landroid/preference/ListPreference;

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->d:Landroid/preference/ListPreference;

    const v1, 0x7f0300d9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    const-string v0, "wifi"

    .line 88
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->c:Landroid/net/wifi/WifiManager;

    .line 89
    new-instance v0, Landroid/app/OppoActivityManager;

    invoke-direct {v0}, Landroid/app/OppoActivityManager;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->h:Landroid/app/OppoActivityManager;

    .line 90
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->e:Lcom/android/internal/widget/LockPatternUtils;

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->f:Landroid/content/pm/PackageManager;

    const-string v0, "webviewupdate"

    .line 93
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->i:Landroid/webkit/IWebViewUpdateService;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "OppoDevelopmentSettingsService"

    const-string v1, "onDestroy()"

    .line 98
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "OppoDevelopmentSettingsService"

    const-string v1, "onStart()"

    .line 105
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 107
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Monkey is running or cmcc test version return"

    .line 108
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->stopSelf()V

    return-void

    :cond_0
    const-string p1, "resetDangerousOptions start"

    .line 1120
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "adb_enabled"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1155
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "bugreport_in_power_menu"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1157
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1162
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "mock_location"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1164
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "debug_view_attributes"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1166
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "verifier_verify_adb_installs"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1168
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "wifi_display_certification_on"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1170
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "usb_audio_automatic_routing_disabled"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1172
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "pointer_location"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1174
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "show_touches"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1176
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "anr_show_background"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1178
    invoke-static {}, Lcom/coloros/settings/utils/al;->b()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->e:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p1, :cond_1

    .line 1179
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1180
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "oppo_key_guard_switch_value"

    invoke-static {p1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1182
    iget-object p1, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->e:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock([BI)Z

    .line 1183
    iget-object p1, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->e:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    :cond_1
    const-string p1, "false"

    const-string v2, "debug.hwui.show_non_rect_clip"

    .line 1188
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug.hwui.overdraw"

    .line 1191
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug.hwui.profile"

    .line 1192
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug.egl.trace"

    .line 1193
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "persist.sys.hdcp_checking"

    .line 1194
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "persist.sys.ui.hw"

    .line 1195
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug.egl.force_msaa"

    .line 1196
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug.hwui.show_dirty_regions"

    .line 1197
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug.hwui.show_layers_updates"

    .line 1199
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "debug.layout"

    .line 1201
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "persist.sys.media.use-awesome"

    .line 1202
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.terminal"

    invoke-virtual {v2, v3, p2, p2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v2, "persistent_data_block"

    .line 1331
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 1332
    invoke-virtual {v2, p2}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1336
    :catch_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug_app"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1339
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v2, p2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1345
    :catch_2
    :try_start_3
    iget-object v2, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->b:Landroid/view/IWindowManager;

    const-string v4, ""

    invoke-interface {v2, v4}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1348
    :catch_3
    invoke-direct {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->b()V

    .line 1379
    iget v2, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->g:I

    const-string v4, "android.ui.ISurfaceComposer"

    const-string v5, "SurfaceFlinger"

    if-ne v2, v3, :cond_2

    .line 1383
    :try_start_4
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 1386
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {v6, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v7, 0x3ea

    .line 1389
    invoke-interface {v2, v7, v6, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1390
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1391
    invoke-direct {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->b()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1424
    :catch_4
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_processes"

    invoke-static {v2, v6, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1426
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.systemui"

    const-string v7, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1428
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->stopService(Landroid/content/Intent;)Z

    .line 1352
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1432
    :catch_5
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "debug.force_rtl"

    invoke-static {v2, v6, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "0"

    .line 1434
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v6}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1358
    invoke-static {}, Lcom/coloros/settings/utils/al;->b()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1359
    iget-object v6, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, p2}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 2207
    :cond_3
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v1, p2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 2444
    :catch_6
    :try_start_7
    iget-object v6, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->h:Landroid/app/OppoActivityManager;

    invoke-virtual {v6, v3}, Landroid/app/OppoActivityManager;->setPermissionInterceptEnable(Z)V

    .line 2445
    new-instance v6, Landroid/content/Intent;

    const-string v7, "coloros.intent.action.PERMISSION_MONITOR_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2447
    invoke-virtual {p0, v6}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_0

    :catch_7
    move-exception v6

    .line 2449
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "resetProhibitMonitorOptions e="

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :goto_0
    sget-object v6, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->a:Ljava/lang/String;

    const-string v7, "ro.logd.size"

    .line 3214
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 3216
    sput-object v7, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->a:Ljava/lang/String;

    :cond_4
    const-string v7, "persist.logd.size"

    .line 3218
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    invoke-static {}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->a()V

    .line 3221
    :try_start_8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "logcat -b all -G "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 3222
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    const-string v7, "Logcat ring buffer sizes set to: "

    .line 3223
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_1

    :catch_8
    move-exception v6

    const-string v7, "Cannot set logcat ring buffer sizes"

    .line 3225
    invoke-static {v0, v7, v6}, Lcom/coloros/settings/utils/ak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1127
    :goto_1
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->a(I)V

    .line 1128
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->a(I)V

    const/4 v6, 0x2

    .line 1129
    invoke-direct {p0, v6}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->a(I)V

    .line 3273
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_display_daltonizer_enabled"

    .line 3274
    invoke-static {v6, v7, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_2

    :cond_5
    move v8, p2

    :goto_2
    const/4 v9, -0x1

    if-eqz v8, :cond_6

    const-string v8, "accessibility_display_daltonizer"

    .line 3277
    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 3280
    iget-object v8, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->d:Landroid/preference/ListPreference;

    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6

    move v6, v3

    goto :goto_3

    :cond_6
    move v6, p2

    :goto_3
    if-eqz v6, :cond_7

    .line 3290
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3293
    invoke-static {v6, v7, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3307
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "overlay_display_devices"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3313
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, v9}, Landroid/app/IActivityManager;->setProcessLimit(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 3365
    :catch_9
    :try_start_a
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 3367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 3368
    invoke-virtual {v6, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3370
    invoke-virtual {v6, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v4, 0x3f0

    .line 3371
    invoke-interface {v5, v4, v6, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3372
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    .line 3454
    :catch_a
    :cond_8
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "mobile_data_always_on"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1138
    invoke-direct {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->c()V

    .line 3483
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "webview_multiprocess"

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    .line 3487
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3491
    :try_start_b
    iget-object v1, p0, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->i:Landroid/webkit/IWebViewUpdateService;

    invoke-interface {v1}, Landroid/webkit/IWebViewUpdateService;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3492
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v1, v9}, Landroid/app/IActivityManager;->killPackageDependents(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :cond_9
    const-string v1, "persist.sys.debug.color_temp"

    .line 3499
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ota_disable_automatic_update"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "persist.bluetooth.absvolume_support"

    .line 3511
    invoke-static {v1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "persist.bluetooth.disableabsvol"

    if-eqz v1, :cond_a

    .line 3513
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string p1, "true"

    .line 3515
    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    :goto_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "force_allow_on_external"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3525
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "force_resizable_activities"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1147
    invoke-static {}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->a()V

    .line 1148
    invoke-static {p0, p2, p2}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;ZZ)V

    const-string p1, "resetDangerousOptions end"

    .line 1149
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "development_settings_enabled"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-virtual {p0}, Lcom/coloros/settings/feature/develop/OppoDevelopmentSettingsService;->stopSelf()V

    const-string p1, "onStart end"

    .line 116
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
