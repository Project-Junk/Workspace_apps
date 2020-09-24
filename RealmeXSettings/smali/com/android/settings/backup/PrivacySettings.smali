.class public Lcom/android/settings/backup/PrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PrivacySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/android/settings/backup/PrivacySettings$1;

    invoke-direct {v0}, Lcom/android/settings/backup/PrivacySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/backup/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    .line 1046
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/android/settings/backup/c;->a()Lcom/android/settings/backup/c;

    move-result-object v0

    .line 69
    invoke-static {p0, v0}, Lcom/android/settings/backup/d;->a(Landroid/content/Context;Lcom/android/settings/backup/c;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "PrivacySettings"

    return-object v0
.end method

.method public b_()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/backup/PrivacySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/backup/PrivacySettings;->b(Landroid/content/Context;)V

    .line 64
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->b_()V

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aa3

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500fc

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 58
    invoke-static {p1}, Lcom/android/settings/backup/PrivacySettings;->b(Landroid/content/Context;)V

    return-void
.end method
