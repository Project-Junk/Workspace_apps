.class public Lcom/android/settings/security/screenlock/ScreenLockSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ScreenLockSettings.java"

# interfaces
.implements Lcom/android/settings/security/OwnerInfoPreferenceController$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final a:I


# instance fields
.field private b:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->a:I

    .line 89
    new-instance v0, Lcom/android/settings/security/screenlock/ScreenLockSettings$1;

    invoke-direct {v0}, Lcom/android/settings/security/screenlock/ScreenLockSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v1, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;

    sget v2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->a:I

    invoke-direct {v1, p0, v2, p3}, Lcom/android/settings/security/screenlock/PatternVisiblePreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;

    sget v2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->a:I

    invoke-direct {v1, p0, v2, p3}, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v1, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;

    sget v2, Lcom/android/settings/security/screenlock/ScreenLockSettings;->a:I

    invoke-direct {v1, p0, v2, p3}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;-><init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance p3, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/settings/security/OwnerInfoPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-static {p0, v0, v0, p1}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ScreenLockSettings"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
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

    .line 65
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->b:Lcom/android/internal/widget/LockPatternUtils;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/screenlock/ScreenLockSettings;->b:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->a(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 1

    .line 72
    const-class v0, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/security/screenlock/ScreenLockSettings;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->a()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4f1

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150108

    return v0
.end method
