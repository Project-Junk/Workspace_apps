.class public Lcom/android/settings/inputmethod/UserDictionaryList;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "UserDictionaryList.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryList$1;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/UserDictionaryList$1;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/UserDictionaryList;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "UserDictionaryList"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150133

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "locale"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    move-object p1, v0

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v1

    .line 68
    :cond_3
    :goto_2
    const-class v0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryListPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryListPreferenceController;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/input/ColorUserDictionaryListPreferenceController;->setLocale(Ljava/lang/String;)V

    return-void
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
