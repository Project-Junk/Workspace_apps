.class public Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ColorSafeApplicationFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroidx/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    new-instance v0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;->a:Landroidx/preference/SwitchPreference;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorSafeApplicationFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150061

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "safety_application"

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;->a:Landroidx/preference/SwitchPreference;

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;->a:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "20012"

    const-string v1, "safe_application"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 82
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "safety_application"

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 84
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 86
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment$ConfirmRiskFragment;->a(Landroidx/fragment/app/Fragment;Landroidx/preference/SwitchPreference;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "oppo_apk_prescan_switch"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 4

    .line 63
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;->a:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorSafeApplicationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "oppo_apk_prescan_switch"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
