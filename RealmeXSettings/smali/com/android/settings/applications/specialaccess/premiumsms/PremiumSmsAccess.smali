.class public Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "PremiumSmsAccess.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/applications/e$b;
.implements Lcom/coloros/settingslib/applications/ApplicationsState$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/coloros/settingslib/applications/ApplicationsState;

.field private b:Lcom/android/settings/applications/j;

.field private c:Lcom/coloros/settingslib/applications/ApplicationsState$Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    new-instance v0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$1;

    invoke-direct {v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;)Lcom/coloros/settingslib/applications/ApplicationsState;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    return-object p0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f121096

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->a(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->setLoading(ZZ)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 148
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 150
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 151
    new-instance v1, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;

    .line 152
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;-><init>(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/content/Context;)V

    .line 153
    invoke-virtual {v1, p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 154
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    new-instance p1, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121097

    .line 158
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 159
    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x184

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500f6

    return v0
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 65
    invoke-static {p1}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 67
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->c:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    .line 68
    new-instance p1, Lcom/android/settings/applications/j;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/settings/applications/j;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->b:Lcom/android/settings/applications/j;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->b:Lcom/android/settings/applications/j;

    invoke-virtual {v0}, Lcom/android/settings/applications/j;->d()V

    .line 92
    invoke-super {p0}, Lcom/android/settings/widget/EmptyTextSettings;->onDestroy()V

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 4

    .line 2164
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->c:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    sget-object v1, Lcom/android/settings/applications/j;->g:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    sget-object v2, Lcom/coloros/settingslib/applications/ApplicationsState;->G:Ljava/util/Comparator;

    const/4 v3, 0x1

    .line 2920
    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a(Lcom/coloros/settingslib/applications/ApplicationsState$b;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2164
    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->b:Lcom/android/settings/applications/j;

    invoke-virtual {v0}, Lcom/android/settings/applications/j;->c()V

    .line 86
    invoke-super {p0}, Lcom/android/settings/widget/EmptyTextSettings;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 107
    check-cast p1, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;

    .line 108
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 109
    invoke-static {p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->a(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v0

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    if-eq p2, v6, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x30c

    goto :goto_0

    :cond_1
    const/16 v0, 0x30b

    goto :goto_0

    :cond_2
    const/16 v0, 0x30a

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_3

    .line 1132
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    .line 1134
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v1

    .line 1136
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->getMetricsCategory()I

    move-result v3

    move v5, p2

    .line 1133
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->b:Lcom/android/settings/applications/j;

    invoke-static {p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;->a(Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess$a;)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object p1

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2073
    :try_start_0
    iget-object v0, v0, Lcom/android/settings/applications/j;->f:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v6
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/android/settings/widget/EmptyTextSettings;->onResume()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->b:Lcom/android/settings/applications/j;

    invoke-virtual {v0}, Lcom/android/settings/applications/j;->b()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/specialaccess/premiumsms/PremiumSmsAccess;->setLoading(ZZ)V

    return-void
.end method
