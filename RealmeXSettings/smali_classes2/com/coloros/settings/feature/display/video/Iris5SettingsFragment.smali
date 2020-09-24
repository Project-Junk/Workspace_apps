.class public Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "Iris5SettingsFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroidx/preference/PreferenceCategory;

.field private c:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-string v0, "OSIEIris5SettingsFragment"

    .line 38
    iput-object v0, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->a:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment$1;-><init>(Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->c:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const-string v0, "oppo_osie_iris5_video_category"

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->b:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "OSIEIris5SettingsFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500ac

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "oppo_osie_iris5_video_category"

    .line 45
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->b:Landroidx/preference/PreferenceCategory;

    .line 46
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "osie_iris5_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->c:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->a(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->c:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/video/Iris5SettingsFragment;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
