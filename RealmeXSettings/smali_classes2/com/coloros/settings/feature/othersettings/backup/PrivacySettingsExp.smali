.class public Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PrivacySettingsExp.java"

# interfaces
.implements Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp$a;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/app/backup/IBackupManager;

.field private b:Lcom/coloros/settings/feature/othersettings/backup/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp$a;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp$a;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/app/backup/IBackupManager;Z)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p1, p2, v0, v0}, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->a(Landroid/content/Context;Landroid/app/backup/IBackupManager;ZLandroidx/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/app/backup/IBackupManager;ZLandroidx/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/backup/IBackupManager;",
            "Z",
            "Landroidx/lifecycle/Lifecycle;",
            "Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v1, Lcom/coloros/settings/feature/othersettings/backup/ColorLocalBackupCategoryPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/backup/ColorLocalBackupCategoryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/coloros/settings/feature/othersettings/backup/ColorLocalBackupRecoveryPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/backup/ColorLocalBackupRecoveryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v1, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupCategoryPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupCategoryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/backup/IBackupManager;ZLandroidx/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance p3, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;

    invoke-direct {p3, p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;-><init>(Landroid/content/Context;Landroid/app/backup/IBackupManager;Z)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance p3, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;

    invoke-direct {p3, p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;-><init>(Landroid/content/Context;Landroid/app/backup/IBackupManager;Z)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance p1, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupInactivePreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupInactivePreferenceController;-><init>(Landroid/content/Context;Z)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance p1, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/backup/ColorMasterClearPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "PrivacySettingsExp"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->a:Landroid/app/backup/IBackupManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "PrivacySettingsExp"

    const-string v1, "Failed querying backup manager service activity status. Assuming it is inactive."

    .line 75
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->a:Landroid/app/backup/IBackupManager;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-static {p1, v1, v0, v2, p0}, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->a(Landroid/content/Context;Landroid/app/backup/IBackupManager;ZLandroidx/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/backup/ColorBackupDataPreferenceController$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 112
    const-class v0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->setConfigureSummary(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 117
    const-class v0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/backup/ColorConfigureAccountPreferenceController;->setConfigureEnable(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 122
    const-class v0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/backup/ColorAutoRestorePreferenceController;->setAutoRestoreEnable(Z)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500fd

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "backup"

    .line 50
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->a:Landroid/app/backup/IBackupManager;

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance p1, Lcom/coloros/settings/feature/othersettings/backup/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/coloros/settings/feature/othersettings/backup/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->b:Lcom/coloros/settings/feature/othersettings/backup/a;

    .line 58
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->b:Lcom/coloros/settings/feature/othersettings/backup/a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/backup/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 63
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroyView()V

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/backup/PrivacySettingsExp;->b:Lcom/coloros/settings/feature/othersettings/backup/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/backup/a;->cancel(Z)Z

    :cond_0
    return-void
.end method
