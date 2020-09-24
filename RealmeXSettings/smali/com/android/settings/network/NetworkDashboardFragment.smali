.class public Lcom/android/settings/network/NetworkDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/network/MobilePlanPreferenceController$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/network/NetworkDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/network/NetworkDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/network/MobilePlanPreferenceController$a;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settingslib/core/instrumentation/d;",
            "Lcom/android/settings/network/MobilePlanPreferenceController$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/android/settings/network/MobilePlanPreferenceController;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/network/MobilePlanPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobilePlanPreferenceController$a;)V

    .line 97
    new-instance p3, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;

    invoke-direct {p3, p0, p2}, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;)V

    const-string p2, "settings_network_and_internet_v2"

    .line 100
    invoke-static {p0, p2}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 104
    :goto_0
    new-instance v2, Lcom/android/settings/network/VpnPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/network/VpnPreferenceController;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v3, Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/network/PrivateDnsPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 111
    invoke-virtual {p1, p3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 115
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 116
    invoke-virtual {p1, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 119
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-static {p0, p2}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 122
    new-instance p2, Lcom/android/settings/network/MobileNetworkSummaryController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v1, :cond_4

    .line 125
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_4
    new-instance p2, Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance p1, Lcom/android/settings/network/e;

    invoke-direct {p1, p0}, Lcom/android/settings/network/e;-><init>(Landroid/content/Context;)V

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-interface {v4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4
.end method

.method private static synthetic a(Lcom/android/settings/network/MobilePlanPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1112
    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, v0, v0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/network/MobilePlanPreferenceController$a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$hNCNoc-k9jBQOMixBanLn0mk3uU(Lcom/android/settings/network/MobilePlanPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/network/NetworkDashboardFragment;->a(Lcom/android/settings/network/MobilePlanPreferenceController;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "NetworkDashboardFrag"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-static {p1, v0, v1, p0}, Lcom/android/settings/network/NetworkDashboardFragment;->a(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/network/MobilePlanPreferenceController$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->showDialog(I)V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/16 p1, 0x261

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aba

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2ea

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_network_and_internet_v2"

    invoke-static {v0, v1}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1500c2

    return v0

    :cond_0
    const v0, 0x7f1500c1

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string v0, "settings_network_and_internet_v2"

    .line 75
    invoke-static {p1, v0}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    const-class p1, Lcom/android/settings/network/MultiNetworkHeaderController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/MultiNetworkHeaderController;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/MultiNetworkHeaderController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 78
    :cond_0
    const-class p1, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 143
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkDashboardFrag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    const-class p1, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 148
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1108
    iget-object v1, p1, Lcom/android/settings/network/MobilePlanPreferenceController;->a:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "com.android.internal.R.string.ok"

    .line 151
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$hNCNoc-k9jBQOMixBanLn0mk3uU;

    invoke-direct {v2, p1}, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$hNCNoc-k9jBQOMixBanLn0mk3uU;-><init>(Lcom/android/settings/network/MobilePlanPreferenceController;)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
