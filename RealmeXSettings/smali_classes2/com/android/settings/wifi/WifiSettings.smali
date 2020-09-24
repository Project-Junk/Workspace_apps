.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/wifi/WifiDialog$a;
.implements Lcom/android/settingslib/wifi/WifiTracker$b;
.implements Lcom/android/settingslib/wifi/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;


# instance fields
.field private A:Lcom/android/settingslib/wifi/AccessPointPreference$b;

.field private B:Landroidx/preference/PreferenceCategory;

.field private C:Landroidx/preference/PreferenceCategory;

.field private D:Lcom/android/settings/wifi/LinkablePreference;

.field private E:Z

.field protected d:Landroid/net/wifi/WifiManager;

.field e:Lcom/android/settingslib/wifi/WifiTracker;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field f:Lcom/android/settings/wifi/AddWifiNetworkPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field g:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field h:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field i:Lcom/android/settings/datausage/DataUsagePreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final j:Ljava/lang/Runnable;

.field private final k:Ljava/lang/Runnable;

.field private l:Landroid/net/ConnectivityManager;

.field private m:Landroid/net/wifi/WifiManager$ActionListener;

.field private n:Landroid/net/wifi/WifiManager$ActionListener;

.field private o:Landroid/net/wifi/WifiManager$ActionListener;

.field private p:Lcom/android/settings/wifi/b;

.field private q:Z

.field private r:Lcom/android/settings/wifi/g;

.field private s:Lcom/android/settingslib/wifi/a;

.field private t:Lcom/android/settings/wifi/WifiDialog;

.field private u:Landroid/view/View;

.field private v:Z

.field private w:I

.field private x:Lcom/android/settingslib/wifi/a;

.field private y:Landroid/os/Bundle;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1208
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 1257
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/f$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_wifi"

    .line 207
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$ZWhtGS2z3UkzL3mdAO_GpYCpdvE;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$ZWhtGS2z3UkzL3mdAO_GpYCpdvE;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->j:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$J1-ofnNB5NDW63ZHiNYegWO2MDg;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$J1-ofnNB5NDW63ZHiNYegWO2MDg;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->k:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Lcom/android/settingslib/wifi/a;Landroid/content/Context;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 810
    new-instance v0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->A:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private a(Ljava/util/List;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 993
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/a;

    .line 994
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->n()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int p1, p2, v1

    const/4 v2, 0x1

    if-ne p2, p1, :cond_3

    .line 1001
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f10005c

    new-array v2, v2, [Ljava/lang/Object;

    .line 1002
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1001
    invoke-virtual {p2, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    if-ne p2, v1, :cond_4

    .line 1004
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10005e

    new-array v2, v2, [Ljava/lang/Object;

    .line 1006
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1004
    invoke-virtual {p1, p2, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1008
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10005d

    new-array v2, v2, [Ljava/lang/Object;

    .line 1009
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1008
    invoke-virtual {p1, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->p:Lcom/android/settings/wifi/b;

    if-eqz v0, :cond_1

    .line 905
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/b;->a(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 909
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->h()V

    .line 911
    new-instance v0, Lcom/android/settings/wifi/b;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/wifi/b;-><init>(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->p:Lcom/android/settings/wifi/b;

    .line 912
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->l:Landroid/net/ConnectivityManager;

    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 914
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 915
    invoke-virtual {p2, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    .line 916
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->p:Lcom/android/settings/wifi/b;

    new-instance v1, Landroid/os/Handler;

    .line 918
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 912
    invoke-virtual {p1, p2, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "WifiSettings"

    const-string p2, "Network or Preference were null when registering callback."

    .line 900
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3

    .line 1143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 1145
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->m:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    const/4 p1, 0x1

    .line 1146
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->E:Z

    return-void
.end method

.method private a(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 3

    .line 23141
    iget-object v0, p1, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 943
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "settings_wifi_details_datausage_header"

    .line 945
    invoke-static {v1, v2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f121068

    .line 947
    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 949
    :goto_0
    new-instance v1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 950
    invoke-virtual {v1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/CharSequence;)Lcom/android/settings/core/f;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 951
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 952
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 953
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 954
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method private synthetic a(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 1

    .line 34141
    iget-object p2, p1, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 883
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/wifi/a;->a(Landroid/os/Bundle;)V

    .line 884
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    return-void
.end method

.method private a(Lcom/android/settingslib/wifi/a;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 14764
    iget-object v0, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/i;->a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/h;->d(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object p2

    .line 586
    invoke-static {p1, p2}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->t:Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 593
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->t:Lcom/android/settings/wifi/WifiDialog;

    .line 598
    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->x:Lcom/android/settingslib/wifi/a;

    .line 599
    iput p2, p0, Lcom/android/settings/wifi/WifiSettings;->w:I

    .line 601
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 1054
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->u:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1055
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroidx/preference/Preference;)Z
    .locals 1

    .line 35141
    iget-object p2, p1, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 870
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/wifi/a;->a(Landroid/os/Bundle;)V

    .line 871
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->p:Lcom/android/settings/wifi/b;

    if-eqz p2, :cond_0

    .line 36067
    iget-boolean p2, p2, Lcom/android/settings/wifi/b;->b:Z

    if-eqz p2, :cond_0

    .line 873
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->l:Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->p:Lcom/android/settings/wifi/b;

    .line 36072
    iget-object p2, p2, Lcom/android/settings/wifi/b;->a:Landroid/net/Network;

    .line 873
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    goto :goto_0

    .line 876
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;)Z"
        }
    .end annotation

    .line 820
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->j()V

    return v1

    .line 825
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/a;

    .line 826
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 827
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->j()V

    return v1

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->B:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 833
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->e(Lcom/android/settingslib/wifi/a;)V

    return v2

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->B:Landroidx/preference/PreferenceCategory;

    .line 840
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    check-cast v0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 22141
    iget-object v1, v0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    if-eq v1, p1, :cond_3

    .line 844
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->j()V

    .line 845
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->e(Lcom/android/settingslib/wifi/a;)V

    return v2

    .line 851
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->b()V

    .line 854
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->i()Landroid/net/Network;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    return v2
.end method

.method private b(I)V
    .locals 1

    .line 1048
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->D:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setTitle(I)V

    .line 1049
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->D:Lcom/android/settings/wifi/LinkablePreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/LinkablePreference;->setVisible(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 1066
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->v:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private static c(Lcom/android/settingslib/wifi/a;)Z
    .locals 2

    .line 16764
    iget-object p0, p0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 721
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 722
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p0

    const/16 v1, 0xd

    if-ne v1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private d(Lcom/android/settingslib/wifi/a;)Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .locals 3

    .line 802
    new-instance v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->A:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method private static d()Z
    .locals 2

    .line 129
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private e()V
    .locals 4

    const v0, 0x7f150148

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    const-string v0, "connected_access_point"

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->B:Landroidx/preference/PreferenceCategory;

    const-string v0, "access_points"

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->C:Landroidx/preference/PreferenceCategory;

    const-string v0, "configure_settings"

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->g:Landroidx/preference/Preference;

    const-string v0, "saved_networks"

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->h:Landroidx/preference/Preference;

    .line 260
    new-instance v0, Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->f:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    const-string v0, "wifi_status_message"

    .line 261
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/LinkablePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->D:Lcom/android/settings/wifi/LinkablePreference;

    .line 262
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$b;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference$b;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->A:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    const-string v0, "wifi_data_usage"

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->i:Lcom/android/settings/datausage/DataUsagePreference;

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->i:Lcom/android/settings/datausage/DataUsagePreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/f;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataUsagePreference;->setVisible(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->i:Lcom/android/settings/datausage/DataUsagePreference;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/datausage/DataUsagePreference;->a(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/g$a;)V

    return-void
.end method

.method private e(Lcom/android/settingslib/wifi/a;)V
    .locals 1

    .line 864
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settingslib/wifi/a;Landroid/content/Context;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    move-result-object p1

    .line 865
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->i()Landroid/net/Network;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 868
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$JyRATw7vZBHRHX0T9hVUDvfYRr4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$JyRATw7vZBHRHX0T9hVUDvfYRr4;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 881
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$oANqHHXevUK_GO3_xrFsY8dKXys;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$oANqHHXevUK_GO3_xrFsY8dKXys;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->a(Lcom/android/settings/wifi/ConnectedAccessPointPreference$a;)V

    .line 887
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->b()V

    .line 889
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->B:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 890
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->B:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 891
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->E:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 892
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->E:Z

    .line 893
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->B:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->scrollToPreference(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4231
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->a:Landroid/widget/TextView;

    const v1, 0x7f1219aa

    .line 376
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    return-void
.end method

.method private g()V
    .locals 9

    .line 731
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->e:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->b()Ljava/util/List;

    move-result-object v0

    .line 736
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateAccessPoints called for: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->D:Lcom/android/settings/wifi/LinkablePreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/LinkablePreference;->setVisible(Z)V

    .line 742
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->B:Landroidx/preference/PreferenceCategory;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 743
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->C:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 745
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->C:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 748
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Ljava/util/List;)Z

    move-result v1

    .line 749
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v1, v4, :cond_6

    .line 751
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/a;

    .line 753
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/a;->s()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 17728
    iget-object v5, v6, Lcom/android/settingslib/wifi/a;->a:Ljava/lang/String;

    .line 757
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v7, :cond_2

    .line 759
    invoke-virtual {v7, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    goto :goto_1

    .line 763
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->d(Lcom/android/settingslib/wifi/a;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v7

    .line 764
    invoke-virtual {v7, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v7, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 766
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->z:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 18095
    iget-object v8, v6, Lcom/android/settingslib/wifi/a;->d:Ljava/lang/String;

    .line 766
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 19014
    iget v5, v6, Lcom/android/settingslib/wifi/a;->e:I

    if-eqz v5, :cond_4

    .line 20014
    iget v5, v6, Lcom/android/settingslib/wifi/a;->e:I

    const/4 v8, 0x4

    if-eq v5, v8, :cond_4

    .line 21014
    iget v5, v6, Lcom/android/settingslib/wifi/a;->e:I

    const/16 v8, 0x8

    if-eq v5, v8, :cond_4

    .line 770
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v6}, Lcom/android/settings/wifi/WifiSettings;->c(Lcom/android/settingslib/wifi/a;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 771
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    const/4 v5, 0x0

    .line 772
    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->z:Ljava/lang/String;

    .line 775
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->C:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v7}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 21441
    iput-object p0, v6, Lcom/android/settingslib/wifi/a;->m:Lcom/android/settingslib/wifi/a$a;

    .line 777
    invoke-virtual {v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->b()V

    :goto_1
    move v5, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->C:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 781
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->f:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;->setOrder(I)V

    .line 782
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->C:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->f:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 783
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->l()V

    if-nez v5, :cond_7

    .line 786
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->a(Z)V

    .line 787
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 788
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v2, 0x7f1219ac

    .line 789
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 790
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const-string v1, "wifi_empty_list"

    .line 791
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->C:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 795
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private h()V
    .locals 3

    .line 922
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->p:Lcom/android/settings/wifi/b;

    if-eqz v0, :cond_0

    .line 924
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiSettings"

    const-string v2, "Unregistering CaptivePortalNetworkCallback failed."

    .line 926
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 928
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->p:Lcom/android/settings/wifi/b;

    :cond_0
    return-void
.end method

.method private i()Landroid/net/Network;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private j()V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->B:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 964
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->B:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 965
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->h()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->C:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 970
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->C:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method

.method private l()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 975
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->g:Landroidx/preference/Preference;

    .line 976
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f121951

    goto :goto_0

    :cond_0
    const v1, 0x7f121950

    .line 975
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 981
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/c;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    .line 982
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 983
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->h:Landroidx/preference/Preference;

    if-lez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    if-lez v1, :cond_2

    .line 985
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->h:Landroidx/preference/Preference;

    .line 986
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->a(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    .line 985
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$J1-ofnNB5NDW63ZHiNYegWO2MDg(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->q()V

    return-void
.end method

.method public static synthetic lambda$JyRATw7vZBHRHX0T9hVUDvfYRr4(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$ZWhtGS2z3UkzL3mdAO_GpYCpdvE(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->r()V

    return-void
.end method

.method public static synthetic lambda$lby5SYQx6ZQVL1-u9RCuN68sLWc(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->p()V

    return-void
.end method

.method public static synthetic lambda$oANqHHXevUK_GO3_xrFsY8dKXys(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    return-void
.end method

.method private m()Z
    .locals 5

    .line 1014
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1015
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1016
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "wifi_wakeup_enabled"

    .line 1017
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "wifi_scan_always_enabled"

    .line 1019
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    const-string v3, "airplane_mode_on"

    .line 1021
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    return v2
.end method

.method private n()V
    .locals 5

    const v0, 0x7f1219ab

    .line 1027
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1031
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "wifi_scan_always_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_1

    const v1, 0x7f121a18

    .line 1033
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f121a19

    .line 1034
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1035
    :goto_0
    new-instance v2, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$lby5SYQx6ZQVL1-u9RCuN68sLWc;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$lby5SYQx6ZQVL1-u9RCuN68sLWc;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 1041
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->D:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/settings/wifi/LinkablePreference;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/f$a;)V

    .line 1042
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->j()V

    .line 1043
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->k()V

    .line 1044
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->D:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/LinkablePreference;->setVisible(Z)V

    return-void
.end method

.method private o()V
    .locals 5

    .line 1112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x89

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v0

    const-string v1, "WifiSettings"

    if-nez v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 27010
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->l:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 28010
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->l:Landroid/net/NetworkInfo;

    .line 1115
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 28095
    iget-object v1, v1, Lcom/android/settingslib/wifi/a;->d:Ljava/lang/String;

    .line 1118
    invoke-static {v1}, Lcom/android/settingslib/wifi/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1117
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    .line 1121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to forget invalid network "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 28764
    iget-object v2, v2, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 1121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 29764
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 1124
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1126
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 30764
    iget-object v3, v3, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 1126
    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1128
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to remove Passpoint configuration with error: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1132
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 31764
    iget-object v1, v1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 1132
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->o:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1135
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->e:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->a()V

    .line 1138
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->b(Z)V

    return-void
.end method

.method private synthetic p()V
    .locals 3

    .line 1036
    new-instance v0, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    .line 1037
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f120c2d

    .line 34063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 1039
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 1040
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method private synthetic q()V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Z)V

    return-void
.end method

.method private synthetic r()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->g()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 675
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->q:Z

    if-eqz p1, :cond_0

    return-void

    .line 679
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 682
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->g()V

    return-void

    .line 686
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->j()V

    .line 687
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->k()V

    const p1, 0x7f121a5b

    .line 688
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->b(I)V

    .line 689
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Z)V

    return-void

    .line 699
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->n()V

    .line 700
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->l()V

    const/4 p1, 0x0

    .line 701
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Z)V

    :goto_0
    return-void

    .line 693
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->j()V

    .line 694
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->k()V

    const p1, 0x7f121a67

    .line 695
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->b(I)V

    return-void
.end method

.method public final a(Lcom/android/settingslib/wifi/a;)V
    .locals 2

    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointChanged (singular) callback initiated"

    .line 1188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1191
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1086
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final b(Lcom/android/settingslib/wifi/a;)V
    .locals 0

    .line 32382
    iget-object p1, p1, Lcom/android/settingslib/wifi/a;->n:Ljava/lang/Object;

    .line 1205
    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    .line 33314
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->c()V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x25b

    return p1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120ad0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method public n_()V
    .locals 4

    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointsChanged (WifiTracker) callback initiated"

    .line 651
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15661
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15662
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 15663
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15664
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->j:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 15667
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->a(Z)V

    .line 15668
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public o_()V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->e:Lcom/android/settingslib/wifi/WifiTracker;

    .line 16446
    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 711
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->b(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 272
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 274
    invoke-static {v0, p0, v1}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->a(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->e:Lcom/android/settingslib/wifi/WifiTracker;

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->e:Lcom/android/settingslib/wifi/WifiTracker;

    .line 2428
    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->b:Landroid/net/wifi/WifiManager;

    .line 276
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->l:Landroid/net/ConnectivityManager;

    .line 283
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/e;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->m:Landroid/net/wifi/WifiManager$ActionListener;

    .line 285
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->n:Landroid/net/wifi/WifiManager$ActionListener;

    .line 301
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->o:Landroid/net/wifi/WifiManager$ActionListener;

    if-eqz p1, :cond_1

    const-string v0, "dialog_mode"

    .line 318
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->w:I

    const-string v0, "wifi_ap_state"

    .line 319
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->y:Landroid/os/Bundle;

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "wifi_enable_next_on_connect"

    .line 328
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->v:Z

    .line 330
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->v:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->b(Z)V

    .line 342
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 343
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    const-string v0, "wifi_start_connect_ssid"

    .line 345
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 346
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->z:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 426
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_0

    const-string p1, "wifi_config_key"

    .line 5165
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 5168
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    iget-object p3, p0, Lcom/android/settings/wifi/WifiSettings;->n:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 5161
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->e:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker;->a()V

    return-void

    :cond_1
    if-nez p1, :cond_4

    if-ne p2, v0, :cond_3

    .line 433
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->t:Lcom/android/settings/wifi/WifiDialog;

    if-eqz p1, :cond_2

    .line 434
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 436
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->e:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker;->a()V

    :cond_3
    return-void

    .line 441
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->q:Z

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->b()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->q:Z

    if-eqz p1, :cond_5

    .line 443
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->q:Z

    if-nez p1, :cond_5

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_5

    .line 446
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->e()V

    :cond_5
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    if-nez v0, :cond_0

    .line 504
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 506
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 532
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 528
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settingslib/wifi/a;I)V

    return v3

    .line 524
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->o()V

    return v3

    .line 508
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 510
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 7764
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 510
    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_1

    .line 511
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 8014
    iget v0, v0, Lcom/android/settingslib/wifi/a;->e:I

    if-eqz v0, :cond_6

    .line 511
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 9014
    iget v0, v0, Lcom/android/settingslib/wifi/a;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 512
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 10014
    iget v0, v0, Lcom/android/settingslib/wifi/a;->e:I

    if-ne v0, v2, :cond_5

    goto :goto_0

    .line 519
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-direct {p0, p1, v3}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settingslib/wifi/a;I)V

    goto :goto_1

    .line 516
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->q()V

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 10764
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 517
    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/net/wifi/WifiConfiguration;Z)V

    :goto_1
    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 226
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->setAnimationAllowed(Z)V

    .line 232
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->e()V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->q:Z

    .line 238
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.coloros.wirelesssettings"

    .line 239
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 471
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 473
    instance-of p3, p2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz p3, :cond_5

    .line 474
    check-cast p2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 6141
    iget-object p2, p2, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 475
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 476
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 477
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/a;->k()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    const v0, 0x7f121953

    .line 478
    invoke-interface {p1, p3, p2, p3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 481
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 6764
    iget-object p2, p2, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/wifi/i;->a(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 489
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/a;->l()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 490
    :cond_2
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/a;->l()Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x7f121965

    goto :goto_0

    :cond_3
    const p2, 0x7f120a22

    :goto_0
    const/16 v0, 0x8

    .line 492
    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 495
    :cond_4
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result p2

    if-nez p2, :cond_5

    const/16 p2, 0x9

    const v0, 0x7f1219e6

    .line 496
    invoke-interface {p1, p3, p2, p3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 620
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 609
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->x:Lcom/android/settingslib/wifi/a;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->y:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 611
    new-instance p1, Lcom/android/settingslib/wifi/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->y:Landroid/os/Bundle;

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/wifi/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->x:Lcom/android/settingslib/wifi/a;

    const/4 p1, 0x0

    .line 613
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->y:Landroid/os/Bundle;

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->x:Lcom/android/settingslib/wifi/a;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->w:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog;->a(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$a;Lcom/android/settingslib/wifi/a;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->t:Lcom/android/settings/wifi/WifiDialog;

    .line 617
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->x:Lcom/android/settingslib/wifi/a;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 618
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->t:Lcom/android/settings/wifi/WifiDialog;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 352
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    .line 354
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->r:Lcom/android/settings/wifi/g;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->a()V

    :cond_0
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 625
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDialogShowing()V

    .line 626
    invoke-virtual {p0, p0}, Lcom/android/settings/wifi/WifiSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 632
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->t:Lcom/android/settings/wifi/WifiDialog;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 410
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 411
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->r:Lcom/android/settings/wifi/g;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/android/settings/wifi/g;->b()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 538
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 540
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 543
    :cond_0
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 544
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 11141
    iget-object v0, v0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 544
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 545
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 548
    :cond_1
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 555
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-static {p1}, Lcom/android/settings/wifi/i;->a(Lcom/android/settingslib/wifi/a;)I

    move-result p1

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    .line 571
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-direct {p0, p1, v3}, Lcom/android/settings/wifi/WifiSettings;->a(Lcom/android/settingslib/wifi/a;I)V

    goto :goto_0

    .line 557
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->m:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/wifi/a;->a(Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 558
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->E:Z

    goto :goto_0

    .line 567
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 12764
    iget-object p1, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 567
    invoke-direct {p0, p1, v3}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 562
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->q()V

    .line 563
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 11764
    iget-object p1, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 563
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 574
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->f:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    if-ne p1, v0, :cond_7

    .line 13177
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 13933
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121918

    .line 14063
    invoke-virtual {p1, v1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 13934
    const-class v0, Lcom/android/settings/wifi/AddNetworkFragment;

    .line 13935
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 13936
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 13937
    invoke-virtual {p1, p0, v2}, Lcom/android/settings/core/f;->a(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 13938
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    :goto_0
    return v3

    .line 577
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 393
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 397
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->q:Z

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->b()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->q:Z

    if-nez v1, :cond_0

    .line 399
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->q:Z

    if-eqz v1, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->f()V

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->r:Lcom/android/settings/wifi/g;

    if-eqz v1, :cond_1

    .line 404
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/g;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 457
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->t:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 460
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->w:I

    const-string v1, "dialog_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->x:Lcom/android/settingslib/wifi/a;

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->y:Landroid/os/Bundle;

    .line 463
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->x:Lcom/android/settingslib/wifi/a;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->y:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/a;->a(Landroid/os/Bundle;)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->y:Landroid/os/Bundle;

    const-string v1, "wifi_ap_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 361
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 3385
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 3386
    new-instance v1, Lcom/android/settings/wifi/g;

    new-instance v2, Lcom/android/settings/widget/f;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/widget/f;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/wifi/g;-><init>(Landroid/content/Context;Lcom/android/settings/widget/g;Lcom/android/settingslib/core/instrumentation/d;)V

    .line 364
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->r:Lcom/android/settings/wifi/g;

    .line 366
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->q:Z

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->f()V

    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->a(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 420
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->h()V

    .line 421
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 2

    .line 1078
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->t:Lcom/android/settings/wifi/WifiDialog;

    if-eqz p1, :cond_3

    .line 24092
    iget-object p1, p1, Lcom/android/settings/wifi/WifiDialog;->a:Lcom/android/settings/wifi/c;

    .line 25092
    invoke-virtual {p1}, Lcom/android/settings/wifi/c;->b()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25095
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    if-eqz p1, :cond_2

    .line 25096
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 25097
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    .line 25764
    iget-object p1, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x1

    .line 25097
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 26538
    :cond_0
    iget p1, p1, Lcom/android/settings/wifi/c;->c:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 25100
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->n:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 25102
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->d:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->n:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 25103
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->s:Lcom/android/settingslib/wifi/a;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 25104
    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->a(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 25108
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->e:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker;->a()V

    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 212
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0d0291

    .line 215
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a051b

    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->u:Landroid/view/View;

    const/4 p2, 0x0

    .line 217
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->a(Z)V

    .line 219
    :cond_0
    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    const p2, 0x7f121a47

    invoke-virtual {p1, p2, p2}, Lcom/android/settings/widget/SwitchBar;->a(II)V

    return-void
.end method

.method public final p_()V
    .locals 0

    .line 1073
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->o()V

    return-void
.end method
