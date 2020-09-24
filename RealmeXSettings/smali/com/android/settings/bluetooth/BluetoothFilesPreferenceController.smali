.class public Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;
.super Lcom/android/settings/core/a;
.source "BluetoothFilesPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# static fields
.field static final ACTION_OPEN_FILES:Ljava/lang/String; = "com.android.bluetooth.action.TransferHistory"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_DIRECTION:Ljava/lang/String; = "direction"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_SHOW_ALL_FILES:Ljava/lang/String; = "android.btopp.intent.extra.SHOW_ALL"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_RECEIVED_FILES:Ljava/lang/String; = "bt_received_files"

.field private static final TAG:Ljava/lang/String; = "BluetoothFilesPrefCtrl"


# instance fields
.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "bt_received_files"

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bt_received_files"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 70
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bt_received_files"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0xa2

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 73
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.bluetooth.action.TransferHistory"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x14000000

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "direction"

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.btopp.intent.extra.SHOW_ALL"

    .line 76
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFilesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v0
.end method
