.class public Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;
.super Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;
.source "DeviceNameEditDialogPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_PHONE_NAME:Ljava/lang/String; = "phone_name"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone_name"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController$1;-><init>(Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->updateDeviceName()V

    return-void
.end method

.method private getDefaultName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ro.oppo.market.name"

    const-string v0, ""

    .line 84
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method private updateDeviceName()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oppo_device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->getDefaultName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->mPendingDeviceName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->updateDeviceName(Z)V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 94
    check-cast p2, Ljava/lang/String;

    .line 95
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->getDefaultName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->mPendingDeviceName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 97
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->updateDeviceName(Z)V

    return p1
.end method

.method public onResume()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/DeviceNameEditDialogPreferenceController;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
