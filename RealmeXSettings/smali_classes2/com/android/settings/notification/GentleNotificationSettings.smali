.class public Lcom/android/settings/notification/GentleNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GentleNotificationSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/android/settings/notification/GentleNotificationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/GentleNotificationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/GentleNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Z)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/notification/GentleNotificationSettings;->b_()V

    return-void
.end method

.method private synthetic b(Z)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/notification/GentleNotificationSettings;->b_()V

    return-void
.end method

.method public static synthetic lambda$ZMsvFA-HkTqUkLBnc368aCdVUhA(Lcom/android/settings/notification/GentleNotificationSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/GentleNotificationSettings;->a(Z)V

    return-void
.end method

.method public static synthetic lambda$rsoU31TEolcpdhzSVaBowBlEZrU(Lcom/android/settings/notification/GentleNotificationSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/GentleNotificationSettings;->b(Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "GentleNotiSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6b3

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500a1

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 54
    const-class p1, Lcom/android/settings/notification/SilentStatusBarPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/GentleNotificationSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/SilentStatusBarPreferenceController;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$GentleNotificationSettings$rsoU31TEolcpdhzSVaBowBlEZrU;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$GentleNotificationSettings$rsoU31TEolcpdhzSVaBowBlEZrU;-><init>(Lcom/android/settings/notification/GentleNotificationSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/SilentStatusBarPreferenceController;->setListener(Lcom/android/settings/notification/SilentStatusBarPreferenceController$a;)V

    .line 57
    const-class p1, Lcom/android/settings/notification/SilentLockscreenPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/GentleNotificationSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/SilentLockscreenPreferenceController;

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$GentleNotificationSettings$ZMsvFA-HkTqUkLBnc368aCdVUhA;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$GentleNotificationSettings$ZMsvFA-HkTqUkLBnc368aCdVUhA;-><init>(Lcom/android/settings/notification/GentleNotificationSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/SilentLockscreenPreferenceController;->setListener(Lcom/android/settings/notification/SilentLockscreenPreferenceController$a;)V

    return-void
.end method
