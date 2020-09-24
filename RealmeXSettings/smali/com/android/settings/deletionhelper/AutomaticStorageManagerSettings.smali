.class public Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AutomaticStorageManagerSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Lcom/android/settings/deletionhelper/b;

.field private b:Landroidx/preference/DropDownPreference;

.field private c:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings$1;

    invoke-direct {v0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
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

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    new-instance v1, Lcom/android/settings/deletionhelper/a;

    invoke-direct {v1, p0}, Lcom/android/settings/deletionhelper/a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 117
    invoke-static {p1}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120a97

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1ca

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150022

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const-string p2, "days"

    .line 1070
    invoke-virtual {p0, p2}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/DropDownPreference;

    iput-object p2, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->b:Landroidx/preference/DropDownPreference;

    .line 1071
    iget-object p2, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->b:Landroidx/preference/DropDownPreference;

    invoke-virtual {p2, p0}, Landroidx/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 1073
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 1078
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3}, Lcom/android/settings/m;->a(Landroid/content/res/Resources;)I

    move-result p3

    const-string v0, "automatic_storage_manager_days_to_retain"

    .line 1075
    invoke-static {p2, v0, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 1080
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f030017

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 1081
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->b:Landroidx/preference/DropDownPreference;

    const/4 v1, 0x0

    .line 1150
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 1151
    aget-object v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p2, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1156
    :cond_1
    array-length p2, p3

    add-int/lit8 v1, p2, -0x1

    .line 1081
    :goto_1
    aget-object p2, p3, v1

    invoke-virtual {v0, p2}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 2085
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    .line 2086
    invoke-virtual {p2}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->c:Lcom/android/settings/widget/SwitchBar;

    .line 2087
    iget-object p2, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->c:Lcom/android/settings/widget/SwitchBar;

    const p3, 0x7f120296

    invoke-virtual {p2, p3, p3}, Lcom/android/settings/widget/SwitchBar;->a(II)V

    .line 2089
    iget-object p2, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->a()V

    .line 2090
    new-instance p2, Lcom/android/settings/deletionhelper/b;

    .line 2092
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->c:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v4, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->b:Landroidx/preference/DropDownPreference;

    .line 2096
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deletionhelper/b;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/instrumentation/d;Landroidx/preference/Preference;Landroidx/fragment/app/FragmentManager;)V

    iput-object p2, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->a:Lcom/android/settings/deletionhelper/b;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 122
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroyView()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->b()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->a:Lcom/android/settings/deletionhelper/b;

    .line 3081
    iget-object v1, v0, Lcom/android/settings/deletionhelper/b;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 130
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "days"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    .line 134
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "automatic_storage_manager_days_to_retain"

    .line 131
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 101
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 102
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->b:Landroidx/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/m;->r(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setEnabled(Z)V

    return-void
.end method
