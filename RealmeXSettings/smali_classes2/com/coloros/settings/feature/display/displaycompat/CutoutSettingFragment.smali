.class public Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;
.super Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;
.source "CutoutSettingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;->a:Landroid/content/Context;

    const p1, 0x7f15007a

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 82
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_cutout_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120688

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_full_screen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120689

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 87
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title_string_id"

    .line 89
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;->a:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v2, 0x0

    .line 1063
    invoke-virtual {p1, v2, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/core/f;->a(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const-string p1, "option_category"

    .line 62
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const-string p2, "custom_cutout_mode"

    .line 63
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 64
    invoke-virtual {p2, p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "custom_full_screen"

    .line 65
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 66
    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutSettingFragment;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
