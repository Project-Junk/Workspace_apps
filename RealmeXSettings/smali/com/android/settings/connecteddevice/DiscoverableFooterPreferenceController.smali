.class public Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;
.super Lcom/android/settings/core/a;
.source "DiscoverableFooterPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY:Ljava/lang/String; = "discoverable_footer_preference"


# instance fields
.field private mAlwaysDiscoverable:Lcom/android/settings/bluetooth/a;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

.field mLocalManager:Lcom/android/settingslib/d/q;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPreference:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "discoverable_footer_preference"

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    invoke-static {p1}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mLocalManager:Lcom/android/settingslib/d/q;

    .line 62
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mLocalManager:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 66
    new-instance v0, Lcom/android/settings/bluetooth/a;

    invoke-direct {v0, p1}, Lcom/android/settings/bluetooth/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/a;

    .line 67
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->initReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->updateFooterPreferenceTitle(I)V

    return-void
.end method

.method private addFooterPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 111
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    const-string v1, "discoverable_footer_preference"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setKey(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private getPreferenceTitle()Ljava/lang/CharSequence;
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120390

    .line 150
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    .line 151
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 149
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private initReceiver()V
    .locals 1

    .line 71
    new-instance v0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController$1;-><init>(Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateFooterPreferenceTitle(I)V
    .locals 1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 137
    iget-object p1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->getPreferenceTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v0, 0x7f1203d5

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->addFooterPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mContext:Landroid/content/Context;

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

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    .line 84
    new-instance v0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    .line 85
    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;-><init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    return-void
.end method

.method init(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;Lcom/android/settingslib/widget/FooterPreference;Lcom/android/settings/bluetooth/a;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    .line 92
    iput-object p2, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 93
    iput-object p3, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/a;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mLocalManager:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/a;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/a;->b()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mLocalManager:Lcom/android/settingslib/d/q;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mAlwaysDiscoverable:Lcom/android/settings/bluetooth/a;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/a;->a()V

    .line 123
    iget-object v0, p0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->updateFooterPreferenceTitle(I)V

    return-void
.end method
