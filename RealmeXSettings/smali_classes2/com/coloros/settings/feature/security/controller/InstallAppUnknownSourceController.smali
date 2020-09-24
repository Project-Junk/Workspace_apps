.class public Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;
.super Lcom/android/settingslib/core/a;
.source "InstallAppUnknownSourceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$b;,
        Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$a;
    }
.end annotation


# instance fields
.field private a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

.field private b:Lcom/coloros/settings/feature/security/b;

.field private c:Lcom/android/settings/applications/e;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private h:Z

.field private i:Z

.field private j:Lcom/android/settings/applications/e$b;

.field private k:Lcom/coloros/settingslib/applications/ApplicationsState$d;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 63
    iput p1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->d:I

    .line 1118
    iget-object p1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/b;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/security/b;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->b:Lcom/coloros/settings/feature/security/b;

    .line 1119
    new-instance p1, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$kMFdVJ2es6ILiTf55vN0mxSO6lM;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$kMFdVJ2es6ILiTf55vN0mxSO6lM;-><init>(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V

    invoke-static {p1}, Lcom/coloros/settings/utils/bk;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 210
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    .line 217
    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "InstallAppUnknownSourceController"

    const-string v3, "getCanInstallAppsSize PackageManager dead. Cannot get permission info"

    .line 219
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_1

    return v0

    .line 226
    :cond_1
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 228
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/coloros/settings/feature/security/controller/-$$Lambda$owrpH0Ja1aQA4S-FVzFfeunQrfc;->INSTANCE:Lcom/coloros/settings/feature/security/controller/-$$Lambda$owrpH0Ja1aQA4S-FVzFfeunQrfc;

    .line 229
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$CD7h_phPeX43bn-edjYjotnqj10;

    invoke-direct {v1, v2, v0}, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$CD7h_phPeX43bn-edjYjotnqj10;-><init>([Ljava/lang/String;Landroid/app/AppOpsManager;)V

    .line 230
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 238
    invoke-interface {p0}, Ljava/util/stream/IntStream;->sum()I

    move-result p0

    return p0

    :cond_2
    :goto_1
    return v0
.end method

.method private static synthetic a([Ljava/lang/String;Landroid/app/AppOpsManager;Lcom/coloros/settingslib/applications/ApplicationsState$a;)I
    .locals 2

    .line 231
    new-instance v0, Lcom/android/settings/applications/f$a;

    invoke-direct {v0}, Lcom/android/settings/applications/f$a;-><init>()V

    .line 232
    iget-object v1, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    .line 3131
    iput-boolean p0, v0, Lcom/android/settings/applications/f$a;->a:Z

    .line 233
    iget-object p0, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x42

    invoke-virtual {p1, v1, p0, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    .line 3135
    iput p0, v0, Lcom/android/settings/applications/f$a;->b:I

    .line 236
    invoke-virtual {v0}, Lcom/android/settings/applications/f$a;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/applications/f$a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a()V
    .locals 4

    .line 134
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->f:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    if-nez v0, :cond_1

    return-void

    .line 141
    :cond_1
    sget-object v1, Lcom/android/settings/applications/f;->f:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    sget-object v2, Lcom/coloros/settingslib/applications/ApplicationsState;->G:Ljava/util/Comparator;

    const/4 v3, 0x1

    .line 1920
    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a(Lcom/coloros/settingslib/applications/ApplicationsState$b;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4152
    new-instance v0, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$7_0ya4gl52H83g_YOFZDQ6EzlTM;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$7_0ya4gl52H83g_YOFZDQ6EzlTM;-><init>(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/ArrayList;)V
    .locals 1

    .line 3156
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->b:Lcom/coloros/settings/feature/security/b;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/security/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 3157
    invoke-static {p1}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->a(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->d:I

    .line 3158
    iget-object p1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->l:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 3159
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->l:Landroid/os/Handler;

    .line 3161
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->l:Landroid/os/Handler;

    new-instance v0, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$Cbn9j8nhl06izbc923KA_THj3No;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$Cbn9j8nhl06izbc923KA_THj3No;-><init>(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)Z
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->f:Z

    return v0
.end method

.method private synthetic b()V
    .locals 1

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->i:Z

    .line 175
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->c:Lcom/android/settings/applications/e;

    invoke-virtual {v0}, Lcom/android/settings/applications/e;->b()V

    .line 177
    new-instance v0, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$xPgn0HLJjXbUwe3IydLODaxtbMw;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$xPgn0HLJjXbUwe3IydLODaxtbMw;-><init>(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->a()V

    return-void
.end method

.method private synthetic c()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->a()V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)Z
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->e:Z

    return v0
.end method

.method private synthetic d()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic e()V
    .locals 4

    .line 120
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->k:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$b;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$b;-><init>(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->k:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->k:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    const/4 v2, 0x0

    .line 3275
    invoke-virtual {v0, v1, v2}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    .line 124
    iput-object v1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    .line 126
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->j:Lcom/android/settings/applications/e$b;

    if-nez v1, :cond_1

    .line 127
    new-instance v1, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$a;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController$a;-><init>(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->j:Lcom/android/settings/applications/e$b;

    .line 129
    :cond_1
    new-instance v1, Lcom/android/settings/applications/f;

    iget-object v2, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->j:Lcom/android/settings/applications/e$b;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/settings/applications/f;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->c:Lcom/android/settings/applications/e;

    return-void
.end method

.method public static synthetic lambda$7_0ya4gl52H83g_YOFZDQ6EzlTM(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$CD7h_phPeX43bn-edjYjotnqj10([Ljava/lang/String;Landroid/app/AppOpsManager;Lcom/coloros/settingslib/applications/ApplicationsState$a;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->a([Ljava/lang/String;Landroid/app/AppOpsManager;Lcom/coloros/settingslib/applications/ApplicationsState$a;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Cbn9j8nhl06izbc923KA_THj3No(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->d()V

    return-void
.end method

.method public static synthetic lambda$D_Y3MixmJtn_dIdDFvk1Fao15m8(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->b()V

    return-void
.end method

.method public static synthetic lambda$kMFdVJ2es6ILiTf55vN0mxSO6lM(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->e()V

    return-void
.end method

.method public static synthetic lambda$xPgn0HLJjXbUwe3IydLODaxtbMw(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->c()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->g:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "install_applications_unknown_source"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 111
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "install_applications_unknown_source"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->c:Lcom/android/settings/applications/e;

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {v0}, Lcom/android/settings/applications/e;->d()V

    :cond_1
    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->k:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    .line 202
    iput-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->j:Lcom/android/settings/applications/e$b;

    .line 203
    iget-object v1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->l:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 205
    iput-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->l:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->h:Z

    .line 186
    iget-boolean v1, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->i:Z

    if-eqz v1, :cond_0

    .line 187
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->i:Z

    .line 188
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->a:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 189
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->c:Lcom/android/settings/applications/e;

    invoke-virtual {v0}, Lcom/android/settings/applications/e;->c()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->h:Z

    .line 2171
    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->c:Lcom/android/settings/applications/e;

    if-eqz v0, :cond_0

    .line 2172
    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->i:Z

    if-nez v0, :cond_0

    .line 2173
    new-instance v0, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$D_Y3MixmJtn_dIdDFvk1Fao15m8;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/controller/-$$Lambda$InstallAppUnknownSourceController$D_Y3MixmJtn_dIdDFvk1Fao15m8;-><init>(Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 103
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 104
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120b28

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/coloros/settings/feature/security/controller/InstallAppUnknownSourceController;->d:I

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
