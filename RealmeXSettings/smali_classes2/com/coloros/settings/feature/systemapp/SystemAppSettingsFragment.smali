.class public Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;
.super Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;
.source "SystemAppSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroidx/preference/PreferenceCategory;

.field private b:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->a:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x82

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15006b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->c:Landroid/content/Context;

    const-string p1, "core_app_settings_category"

    .line 66
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->a:Landroidx/preference/PreferenceCategory;

    .line 67
    new-instance p1, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;-><init>(Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;B)V

    iput-object p1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->b:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;

    .line 68
    iget-object p1, p0, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment;->b:Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Lcom/coloros/settings/feature/systemapp/SystemAppSettingsFragment$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
