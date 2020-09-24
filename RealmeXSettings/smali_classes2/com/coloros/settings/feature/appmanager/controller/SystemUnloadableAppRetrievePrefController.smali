.class public Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;
.super Lcom/android/settings/core/a;
.source "SystemUnloadableAppRetrievePrefController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field public static final KEY_APP_RETRIEVE:Ljava/lang/String; = "system_unloadable_app_retrieve"

.field public static final KEY_APP_RETRIEVE_CATEGORY:Ljava/lang/String; = "category_app_recover"

.field public static final PACKAGE_APP_RECOVER:Ljava/lang/String; = "com.coloros.apprecover"


# instance fields
.field private mHost:Landroidx/fragment/app/Fragment;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "system_unloadable_app_retrieve"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;->mHost:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "system_unloadable_app_retrieve"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_0

    .line 52
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 68
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "category_app_recover"

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 59
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/coloros/settings/feature/appmanager/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;->mContext:Landroid/content/Context;

    const-string v1, "com.coloros.apprecover"

    .line 60
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 80
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system_unloadable_app_retrieve"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 82
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.coloros.apprecover.APPRECOVER_DISPLAY_LIST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fromPkg"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/appmanager/controller/SystemUnloadableAppRetrievePrefController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method
