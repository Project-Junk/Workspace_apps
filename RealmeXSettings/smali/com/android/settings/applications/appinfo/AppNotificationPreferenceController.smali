.class public Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppNotificationPreferenceController.java"


# instance fields
.field private final mBackend:Lcom/android/settings/notification/k;

.field private mChannelId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    .line 37
    new-instance p1, Lcom/android/settings/notification/k;

    invoke-direct {p1}, Lcom/android/settings/notification/k;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mBackend:Lcom/android/settings/notification/k;

    return-void
.end method

.method public static getNotificationSummary(Lcom/android/settings/notification/k$a;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/k$a;->f:Z

    const v1, 0x7f120f02

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 87
    :cond_1
    iget v0, p0, Lcom/android/settings/notification/k$a;->m:I

    if-nez v0, :cond_2

    .line 88
    iget-object p0, p0, Lcom/android/settings/notification/k$a;->o:Lcom/android/settings/notification/k$b;

    invoke-static {p1, p0}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Lcom/android/settings/notification/k$b;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 89
    :cond_2
    iget v0, p0, Lcom/android/settings/notification/k$a;->m:I

    iget v2, p0, Lcom/android/settings/notification/k$a;->l:I

    if-ne v0, v2, :cond_3

    .line 90
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 92
    :cond_3
    iget v0, p0, Lcom/android/settings/notification/k$a;->l:I

    if-nez v0, :cond_4

    .line 93
    iget-object p0, p0, Lcom/android/settings/notification/k$a;->o:Lcom/android/settings/notification/k$b;

    invoke-static {p1, p0}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Lcom/android/settings/notification/k$b;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    const v0, 0x7f120f04

    const/4 v1, 0x2

    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/notification/k$a;->o:Lcom/android/settings/notification/k$b;

    .line 96
    invoke-static {p1, v2}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Lcom/android/settings/notification/k$b;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100035

    iget v5, p0, Lcom/android/settings/notification/k$a;->l:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    iget p0, p0, Lcom/android/settings/notification/k$a;->l:I

    .line 98
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v3

    .line 97
    invoke-virtual {v2, v4, v5, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v6

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNotificationSummary(Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/content/Context;Lcom/android/settings/notification/k;)Ljava/lang/CharSequence;
    .locals 0

    .line 76
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2, p3, p1}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/k$a;

    move-result-object p1

    .line 77
    invoke-static {p1, p2}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->getNotificationSummary(Lcom/android/settings/notification/k$a;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getArguments()Landroid/os/Bundle;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 59
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    return-object v0
.end method

.method public setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mChannelId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1313
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 54
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->mBackend:Lcom/android/settings/notification/k;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->getNotificationSummary(Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/content/Context;Lcom/android/settings/notification/k;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
