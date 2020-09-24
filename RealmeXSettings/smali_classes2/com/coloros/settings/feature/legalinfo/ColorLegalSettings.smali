.class public Lcom/coloros/settings/feature/legalinfo/ColorLegalSettings;
.super Lcom/android/settings/LegalSettings;
.source "ColorLegalSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/coloros/settings/feature/legalinfo/ColorLegalSettings$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/legalinfo/ColorLegalSettings$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/legalinfo/ColorLegalSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/LegalSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150052

    return v0
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/LegalSettings;->onCreate(Landroid/os/Bundle;)V

    .line 1068
    invoke-virtual {p0}, Lcom/coloros/settings/feature/legalinfo/ColorLegalSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "container"

    .line 1069
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/legalinfo/ColorLegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    const-string v1, "terms"

    .line 1070
    invoke-static {p1, v0, v1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    const-string v1, "license"

    .line 1072
    invoke-static {p1, v0, v1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    const-string v2, "copyright"

    .line 1074
    invoke-static {p1, v0, v2}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    const-string v2, "team"

    .line 1076
    invoke-static {p1, v0, v2}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 1078
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-nez v2, :cond_0

    .line 1079
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const v2, 0x7f0d00a7

    .line 1081
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 1084
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.hotfix.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "disable_hotfix"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    :cond_1
    const-string p1, "coloros_hotfix_category"

    .line 1085
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 1086
    invoke-virtual {p0}, Lcom/coloros/settings/feature/legalinfo/ColorLegalSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    const-string p1, "coloros_hotfix_tips"

    .line 1087
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 1088
    invoke-virtual {p0}, Lcom/coloros/settings/feature/legalinfo/ColorLegalSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method
