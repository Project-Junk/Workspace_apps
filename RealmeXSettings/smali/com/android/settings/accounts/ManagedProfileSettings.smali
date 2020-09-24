.class public Lcom/android/settings/accounts/ManagedProfileSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ManagedProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ManagedProfileSettings$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/os/UserManager;

.field private b:Landroid/os/UserHandle;

.field private c:Lcom/android/settings/accounts/ManagedProfileSettings$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/android/settings/accounts/ManagedProfileSettings$1;

    invoke-direct {v0}, Lcom/android/settings/accounts/ManagedProfileSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/ManagedProfileSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/os/UserHandle;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->b:Landroid/os/UserHandle;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ManagedProfileSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x191

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500b9

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string/jumbo p1, "user"

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManagedProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->a:Landroid/os/UserManager;

    .line 1101
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "android.intent.extra.USER"

    .line 1103
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    if-eqz p1, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->a:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1111
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->a:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    .line 75
    :goto_0
    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->b:Landroid/os/UserHandle;

    .line 76
    iget-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->b:Landroid/os/UserHandle;

    if-nez p1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 79
    :cond_1
    const-class p1, Lcom/android/settings/accounts/WorkModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManagedProfileSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accounts/WorkModePreferenceController;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->b:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Lcom/android/settings/accounts/WorkModePreferenceController;->setManagedUser(Landroid/os/UserHandle;)V

    .line 80
    const-class p1, Lcom/android/settings/accounts/ContactSearchPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManagedProfileSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accounts/ContactSearchPreferenceController;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->b:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Lcom/android/settings/accounts/ContactSearchPreferenceController;->setManagedUser(Landroid/os/UserHandle;)V

    .line 81
    const-class p1, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManagedProfileSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->b:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Lcom/android/settings/accounts/CrossProfileCalendarPreferenceController;->setManagedUser(Landroid/os/UserHandle;)V

    .line 82
    const-class p1, Lcom/android/settings/accounts/CrossProfileCalendarDisabledPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManagedProfileSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accounts/CrossProfileCalendarDisabledPreferenceController;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->b:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Lcom/android/settings/accounts/CrossProfileCalendarDisabledPreferenceController;->setManagedUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    new-instance p1, Lcom/android/settings/accounts/ManagedProfileSettings$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/accounts/ManagedProfileSettings$a;-><init>(Lcom/android/settings/accounts/ManagedProfileSettings;B)V

    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->c:Lcom/android/settings/accounts/ManagedProfileSettings$a;

    .line 89
    iget-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->c:Lcom/android/settings/accounts/ManagedProfileSettings$a;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1157
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 1158
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->c:Lcom/android/settings/accounts/ManagedProfileSettings$a;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1163
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
