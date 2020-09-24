.class public Lcom/android/settings/applications/AppStorageSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Lcom/coloros/settingslib/applications/ApplicationsState$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStorageSettings$b;,
        Lcom/android/settings/applications/AppStorageSettings$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/applications/AppInfoWithHeader;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/applications/f$a;",
        ">;",
        "Lcom/coloros/settingslib/applications/ApplicationsState$d;"
    }
.end annotation


# static fields
.field private static final s:Ljava/lang/String; = "AppStorageSettings"


# instance fields
.field private A:Z

.field private B:Lcom/android/settings/applications/AppStorageSettings$a;

.field private C:Lcom/android/settings/applications/AppStorageSettings$b;

.field private D:[Landroid/os/storage/VolumeInfo;

.field private E:Lcolor/support/v7/app/AlertDialog$Builder;

.field private F:Landroid/content/pm/ApplicationInfo;

.field private final G:Landroid/os/Handler;

.field public q:Lcom/android/settingslib/widget/ActionButtonsPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field r:Lcom/android/settings/applications/m;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private t:Landroidx/preference/Preference;

.field private u:Landroid/widget/Button;

.field private v:Landroid/widget/Button;

.field private w:Lcom/android/settingslib/widget/LayoutPreference;

.field private x:Landroidx/preference/PreferenceCategory;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->y:Z

    .line 636
    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$5;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->G:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/AppStorageSettings;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 3

    .line 6212
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->a:Lcom/android/settingslib/g$a;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->b:Z

    if-nez p1, :cond_0

    .line 6214
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->a:Lcom/android/settingslib/g$a;

    .line 6213
    invoke-static {p1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 6216
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->B:Lcom/android/settings/applications/AppStorageSettings$a;

    if-nez p1, :cond_1

    .line 6217
    new-instance p1, Lcom/android/settings/applications/AppStorageSettings$a;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/AppStorageSettings$a;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->B:Lcom/android/settings/applications/AppStorageSettings$a;

    .line 6219
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x36d

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 6221
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->m:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->B:Lcom/android/settings/applications/AppStorageSettings$a;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/AppStorageSettings;Landroid/os/Message;)V
    .locals 3

    .line 6416
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 6417
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6418
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v2, 0x7f12050f

    .line 6419
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v1

    const v2, 0x7f080823

    .line 6420
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 6422
    sget-object p1, Lcom/android/settings/applications/AppStorageSettings;->s:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cleared user data for package : "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6423
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->i()V

    return-void

    .line 6425
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void
.end method

.method private a(Lcom/android/settingslib/applications/f$a;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 602
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->z:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->r:Lcom/android/settings/applications/m;

    .line 5114
    iput-boolean v1, v0, Lcom/android/settings/applications/m;->c:Z

    .line 605
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->A:Z

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->r:Lcom/android/settings/applications/m;

    .line 5123
    iput-boolean v1, v0, Lcom/android/settings/applications/m;->d:Z

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->r:Lcom/android/settings/applications/m;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/m;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 612
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_3

    .line 614
    :cond_2
    invoke-interface {p1}, Lcom/android/settingslib/applications/f$a;->c()J

    move-result-wide v2

    .line 615
    invoke-interface {p1}, Lcom/android/settingslib/applications/f$a;->b()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_4

    .line 617
    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->y:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->A:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 620
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v4, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$ldDvXoYtmbrGk24Ox7jrTKO51lQ;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$ldDvXoYtmbrGk24Ox7jrTKO51lQ;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 621
    invoke-virtual {p1, v4}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_1

    .line 618
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    :goto_1
    cmp-long p1, v2, v6

    if-lez p1, :cond_6

    .line 623
    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->z:Z

    if-eqz p1, :cond_5

    goto :goto_2

    .line 626
    :cond_5
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    new-instance v1, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$LGoBwluaWPmOdEwEPiIqd3NclB0;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$LGoBwluaWPmOdEwEPiIqd3NclB0;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 627
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_3

    .line 624
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 630
    :goto_3
    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->b:Z

    if-eqz p1, :cond_7

    .line 631
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 633
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->setSwitchEnableStatus(Lcom/android/settings/applications/AppStorageSettings;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/applications/AppStorageSettings;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->d()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/applications/AppStorageSettings;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->d()V

    return-void
.end method

.method private d()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->a:Lcom/android/settingslib/g$a;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->b:Z

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->a:Lcom/android/settingslib/g$a;

    .line 227
    invoke-static {v0, v1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/content/OppoBaseIntent;

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/OppoBaseIntent;->setOppoFlags(I)V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/settings/applications/AppStorageSettings;->h:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v4}, Landroidx/fragment/app/FragmentActivity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 238
    :catch_0
    sget-object v0, Lcom/android/settings/applications/AppStorageSettings;->s:Ljava/lang/String;

    const-string v1, "Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->a(I)V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 5

    .line 6393
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x36c

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 6394
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 6396
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6397
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->s:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Clearing user data for package : "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6398
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->C:Lcom/android/settings/applications/AppStorageSettings$b;

    if-nez v1, :cond_0

    .line 6399
    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$b;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$b;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    iput-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->C:Lcom/android/settings/applications/AppStorageSettings$b;

    .line 6401
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->C:Lcom/android/settings/applications/AppStorageSettings$b;

    iget v3, p0, Lcom/android/settings/applications/AppStorageSettings;->h:I

    invoke-static {v0, v2, v1, v3}, Lcom/color/compat/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;ZLcom/color/compat/app/ActivityManagerNative$IPackageDataObserverNative;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6404
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->s:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Couldn\'t clear application user data for package:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 6405
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->a(I)V

    return-void

    .line 6407
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v0, 0x7f1211c7

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    return-void
.end method

.method private e()Z
    .locals 3

    .line 267
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    .line 268
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 267
    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic e(Lcom/android/settings/applications/AppStorageSettings;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->A:Z

    return v0
.end method

.method private f()V
    .locals 7

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 360
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 362
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    .line 363
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;

    move-result-object v0

    .line 364
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->showMoveStorage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    invoke-static {}, Landroid/os/storage/VolumeInfo;->getDescriptionComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 367
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 369
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 370
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v5}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v5

    .line 371
    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->t:Landroidx/preference/Preference;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    .line 374
    :cond_0
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/storage/VolumeInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/storage/VolumeInfo;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->D:[Landroid/os/storage/VolumeInfo;

    .line 377
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1204d3

    .line 378
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v2, v3, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120491

    const/4 v2, 0x0

    .line 380
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->E:Lcolor/support/v7/app/AlertDialog$Builder;

    return-void

    :cond_2
    const-string v0, "storage_used"

    .line 382
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    const-string v0, "change_storage_button"

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    const-string v0, "storage_space"

    .line 384
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->removePreference(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic f(Lcom/android/settings/applications/AppStorageSettings;)Z
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->z:Z

    return v0
.end method

.method private g()V
    .locals 9

    .line 431
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->h()V

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 436
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 437
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getGrantedUriPermissions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 439
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->v:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 447
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 448
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/GrantedUriPermission;

    .line 449
    iget-object v3, v3, Landroid/app/GrantedUriPermission;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 455
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 456
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/MutableInt;

    if-nez v5, :cond_2

    .line 458
    new-instance v5, Landroid/util/MutableInt;

    invoke-direct {v5, v4}, Landroid/util/MutableInt;-><init>(I)V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 460
    :cond_2
    iget v3, v5, Landroid/util/MutableInt;->value:I

    add-int/2addr v3, v4

    iput v3, v5, Landroid/util/MutableInt;->value:I

    goto :goto_0

    .line 466
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 467
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/MutableInt;

    iget v2, v2, Landroid/util/MutableInt;->value:I

    .line 468
    new-instance v3, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 469
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f10005b

    new-array v7, v4, [Ljava/lang/Object;

    .line 472
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    .line 471
    invoke-virtual {v1, v6, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 470
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 473
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v1, 0x7f0d0190

    .line 474
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 475
    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setOrder(I)V

    .line 476
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->s:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Adding preference \'"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' at order 0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->x:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 480
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->b:Z

    if-eqz v0, :cond_5

    .line 481
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->v:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->w:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/widget/LayoutPreference;->setOrder(I)V

    .line 485
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->v:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method static synthetic g(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->i()V

    return-void
.end method

.method static synthetic h(Lcom/android/settings/applications/AppStorageSettings;)Landroid/os/Handler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSettings;->G:Landroid/os/Handler;

    return-object p0
.end method

.method private h()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->x:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 505
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->x:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 506
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->w:Lcom/android/settingslib/widget/LayoutPreference;

    if-eq v1, v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->x:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i()V
    .locals 3

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->F:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 590
    sget-object v1, Lcom/android/settings/applications/AppStorageSettings;->s:Ljava/lang/String;

    const-string v2, "Could not find package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 593
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->F:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    return-void

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method private j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 681
    const-class v0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 682
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    return-object v0
.end method

.method public static synthetic lambda$LGoBwluaWPmOdEwEPiIqd3NclB0(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$Lg1YnccBANeweZnhd10RhnnNZXk(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ldDvXoYtmbrGk24Ox7jrTKO51lQ(Lcom/android/settings/applications/AppStorageSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final b(I)Lcolor/support/v7/app/AlertDialog;
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f12081d

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 549
    :cond_0
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f12050f

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f120503

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$4;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 552
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 559
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 516
    :cond_1
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f120502

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f120501

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$3;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 519
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120818

    new-instance v1, Lcom/android/settings/applications/AppStorageSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/AppStorageSettings$2;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 529
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/AppStorageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppStorageSettings$1;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 538
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 547
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method protected final b()Z
    .locals 7

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->a()Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->d:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {v0, v2, v3}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->updateAppInfos(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    .line 299
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->setupUninstallButton(Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->r:Lcom/android/settings/applications/m;

    .line 4130
    iget-object v0, v0, Lcom/android/settings/applications/m;->a:Lcom/android/settingslib/applications/f$a;

    .line 300
    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->a(Lcom/android/settingslib/applications/f$a;)V

    .line 301
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->g()V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    .line 304
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 306
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->t:Landroidx/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 4314
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->f()V

    .line 4319
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4320
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/AppStorageSettings;->k:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    .line 4322
    iget-object v4, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v4, v4, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x41

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v2

    .line 4326
    :goto_3
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 4328
    iget-object v5, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v5, v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v6, v6, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4331
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_4

    :cond_6
    move v4, v1

    :goto_4
    const v5, 0x7f080823

    const v6, 0x7f12050f

    if-nez v0, :cond_7

    if-nez v3, :cond_8

    :cond_7
    if-nez v4, :cond_9

    .line 4335
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 4336
    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 4337
    invoke-virtual {v0, v5}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 4338
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 4339
    iput-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->y:Z

    goto :goto_6

    :cond_9
    if-eqz v0, :cond_a

    .line 4342
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v3, 0x7f120d17

    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    goto :goto_5

    .line 4344
    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 4345
    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 4346
    invoke-virtual {v0, v5}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 4348
    :goto_5
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    new-instance v3, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$Lg1YnccBANeweZnhd10RhnnNZXk;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/-$$Lambda$AppStorageSettings$Lg1YnccBANeweZnhd10RhnnNZXk;-><init>(Lcom/android/settings/applications/AppStorageSettings;)V

    .line 4349
    invoke-virtual {v0, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->a(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 4352
    :goto_6
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->b:Z

    if-eqz v0, :cond_b

    .line 4353
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 4355
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->setSwitchEnableStatus(Lcom/android/settings/applications/AppStorageSettings;)V

    return v2
.end method

.method protected final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/applications/AppInfoWithHeader;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->D:[Landroid/os/storage/VolumeInfo;

    aget-object p2, v1, p2

    .line 281
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 283
    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/deviceinfo/StorageWizardMoveConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object p2, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/AppStorageSettings;->startActivity(Landroid/content/Intent;)V

    .line 289
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 248
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->onClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->u:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->E:Lcolor/support/v7/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->E:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->v:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 254
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "event_click_clear_cache"

    invoke-static {p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 255
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->a:Lcom/android/settingslib/g$a;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->b:Z

    if-nez p1, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->a:Lcom/android/settingslib/g$a;

    .line 256
    invoke-static {p1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 3490
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 3491
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->f:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "activity"

    .line 3493
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 3495
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->clearGrantedUriPermissions(Ljava/lang/String;)V

    .line 3498
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->g()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "cache_cleared"

    .line 146
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/AppStorageSettings;->z:Z

    const-string v1, "data_cleared"

    .line 147
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->A:Z

    .line 148
    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->z:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSettings;->A:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->z:Z

    .line 151
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    move-result-object p1

    const v0, 0x7f15001f

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->getPreferenceResId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->addPreferencesFromResource(I)V

    .line 1179
    new-instance p1, Lcom/android/settings/applications/m$a;

    invoke-direct {p1}, Lcom/android/settings/applications/m$a;-><init>()V

    const-string/jumbo v0, "total_size"

    .line 1180
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 2166
    iput-object v0, p1, Lcom/android/settings/applications/m$a;->a:Landroidx/preference/Preference;

    const-string v0, "app_size"

    .line 1181
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 3151
    iput-object v0, p1, Lcom/android/settings/applications/m$a;->b:Landroidx/preference/Preference;

    const-string v0, "data_size"

    .line 1182
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 3156
    iput-object v0, p1, Lcom/android/settings/applications/m$a;->c:Landroidx/preference/Preference;

    const-string v0, "cache_size"

    .line 1183
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 3161
    iput-object v0, p1, Lcom/android/settings/applications/m$a;->d:Landroidx/preference/Preference;

    const v0, 0x7f1205cc

    .line 3171
    iput v0, p1, Lcom/android/settings/applications/m$a;->e:I

    const v0, 0x7f120b4a

    .line 3176
    iput v0, p1, Lcom/android/settings/applications/m$a;->f:I

    .line 3181
    new-instance v0, Lcom/android/settings/applications/m;

    iget-object v1, p1, Lcom/android/settings/applications/m$a;->a:Landroidx/preference/Preference;

    .line 3182
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/preference/Preference;

    iget-object v1, p1, Lcom/android/settings/applications/m$a;->b:Landroidx/preference/Preference;

    .line 3183
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/preference/Preference;

    iget-object v1, p1, Lcom/android/settings/applications/m$a;->c:Landroidx/preference/Preference;

    .line 3184
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/preference/Preference;

    iget-object v1, p1, Lcom/android/settings/applications/m$a;->d:Landroidx/preference/Preference;

    .line 3185
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/preference/Preference;

    iget v6, p1, Lcom/android/settings/applications/m$a;->e:I

    iget v7, p1, Lcom/android/settings/applications/m$a;->f:I

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/m;-><init>(Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;IIB)V

    .line 1186
    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->r:Lcom/android/settings/applications/m;

    .line 1187
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->initClearButtons(Landroidx/preference/PreferenceScreen;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "header_view"

    .line 1188
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/ActionButtonsPreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 1190
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->setupHeaderViews(Landroidx/preference/PreferenceScreen;)V

    const-string p1, "storage_used"

    .line 1191
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->t:Landroidx/preference/Preference;

    const-string p1, "change_storage_button"

    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a00fd

    .line 1193
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->u:Landroid/widget/Button;

    .line 1194
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->u:Landroid/widget/Button;

    const v1, 0x7f1204ce

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 1195
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->u:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1198
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f1204fb

    .line 1199
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->c(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object p1

    const v1, 0x7f080823

    .line 1200
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    const-string/jumbo p1, "uri_category"

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->x:Landroidx/preference/PreferenceCategory;

    .line 1204
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->x:Landroidx/preference/PreferenceCategory;

    const-string v1, "clear_uri_button"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->w:Lcom/android/settingslib/widget/LayoutPreference;

    .line 1205
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->w:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->v:Landroid/widget/Button;

    .line 1206
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->v:Landroid/widget/Button;

    const v0, 0x7f12050e

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 1207
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->v:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->f()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/applications/f$a;",
            ">;"
        }
    .end annotation

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 571
    new-instance p2, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;

    new-instance v0, Lcom/android/settingslib/applications/f;

    invoke-direct {v0, p1}, Lcom/android/settingslib/applications/f;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppStorageSettings;->F:Landroid/content/pm/ApplicationInfo;

    iget v2, p0, Lcom/android/settings/applications/AppStorageSettings;->h:I

    .line 572
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/android/settings/applications/FetchPackageStorageAsyncLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/f;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-eqz v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->j()Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->onDestroy()V

    .line 697
    :cond_0
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onDestroy()V

    const/4 v0, 0x0

    .line 698
    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->B:Lcom/android/settings/applications/AppStorageSettings$a;

    .line 699
    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->C:Lcom/android/settings/applications/AppStorageSettings$b;

    .line 700
    iput-object v0, p0, Lcom/android/settings/applications/AppStorageSettings;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    return-void
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .line 77
    check-cast p2, Lcom/android/settingslib/applications/f$a;

    .line 5577
    iget-object p1, p0, Lcom/android/settings/applications/AppStorageSettings;->r:Lcom/android/settings/applications/m;

    .line 6104
    iput-object p2, p1, Lcom/android/settings/applications/m;->a:Lcom/android/settingslib/applications/f$a;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6105
    :goto_0
    iput-boolean v0, p1, Lcom/android/settings/applications/m;->b:Z

    .line 5578
    invoke-direct {p0, p2}, Lcom/android/settings/applications/AppStorageSettings;->a(Lcom/android/settingslib/applications/f$a;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/applications/f$a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 166
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->onResume()V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/applications/AppStorageSettings;->i()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->z:Z

    const-string v1, "cache_cleared"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    iget-boolean v0, p0, Lcom/android/settings/applications/AppStorageSettings;->A:Z

    const-string v1, "data_cleared"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
