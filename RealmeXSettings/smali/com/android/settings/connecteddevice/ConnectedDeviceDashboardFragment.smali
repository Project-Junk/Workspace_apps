.class public Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConnectedDeviceDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v1, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 115
    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-static {p0, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ConnectedDeviceFrag"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aa9

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2eb

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150075

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "settings_ui"

    const-string v0, "bt_near_by_suggestion_enabled"

    const/4 v1, 0x1

    .line 124
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 126
    const-class v0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 127
    const-class v0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 128
    const-class v0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/SavedTwsDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 129
    const-class v0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 130
    const-class v0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 131
    const-class v0, Lcom/android/settings/slices/SlicePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/slices/SlicePreferenceController;

    if-eqz p1, :cond_0

    const p1, 0x7f1205f5

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 131
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/settings/slices/SlicePreferenceController;->setSliceUri(Landroid/net/Uri;)V

    return-void
.end method
