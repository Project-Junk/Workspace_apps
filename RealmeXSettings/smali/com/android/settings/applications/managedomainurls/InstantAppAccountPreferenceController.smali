.class public Lcom/android/settings/applications/managedomainurls/InstantAppAccountPreferenceController;
.super Lcom/android/settings/core/a;
.source "InstantAppAccountPreferenceController.java"


# instance fields
.field private mLaunchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/android/settings/applications/managedomainurls/InstantAppAccountPreferenceController;->initAppSettingsIntent()V

    return-void
.end method

.method private initAppSettingsIntent()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/InstantAppAccountPreferenceController;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 64
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 68
    iput-object v0, p0, Lcom/android/settings/applications/managedomainurls/InstantAppAccountPreferenceController;->mLaunchIntent:Landroid/content/Intent;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/InstantAppAccountPreferenceController;->mLaunchIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/InstantAppAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/applications/managedomainurls/WebActionCategoryController;->isDisableWebActions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

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
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/applications/managedomainurls/InstantAppAccountPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/managedomainurls/InstantAppAccountPreferenceController;->mLaunchIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/android/settings/applications/managedomainurls/InstantAppAccountPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/InstantAppAccountPreferenceController;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
