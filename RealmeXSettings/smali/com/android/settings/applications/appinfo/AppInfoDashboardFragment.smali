.class public Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppInfoDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$a;
.implements Lcom/coloros/settingslib/applications/ApplicationsState$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$a;
    }
.end annotation


# instance fields
.field public a:Lcom/coloros/settingslib/applications/ApplicationsState;

.field public b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

.field public c:Landroid/content/pm/PackageInfo;

.field public d:I

.field public e:Landroid/content/pm/PackageManager;

.field f:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

.field final i:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private j:Lcom/android/settingslib/g$a;

.field private k:Z

.field private n:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

.field private o:Ljava/lang/String;

.field private p:Landroid/app/admin/DevicePolicyManager;

.field private q:Landroid/os/UserManager;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->u:Z

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->g:Ljava/util/List;

    .line 687
    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->i:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->q:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 551
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 554
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->e:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 556
    iget v2, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppInfoDashboard"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 2

    .line 3542
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->finishActivity(I)V

    .line 3543
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finishAndRemoveTask()V

    return-void
.end method

.method public static a(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/os/Bundle;",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_2

    .line 522
    iget-object v0, p4, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 528
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 530
    :cond_1
    iget-object v0, p4, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "package"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object p4, p4, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v0, "uid"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    new-instance p4, Lcom/android/settings/core/f;

    invoke-virtual {p3}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 534
    invoke-virtual {p0, p2}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p0

    const/4 p2, 0x0

    .line 3063
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p0

    const/4 p1, 0x1

    .line 536
    invoke-virtual {p0, p3, p1}, Lcom/android/settings/core/f;->a(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 537
    invoke-virtual {p3}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/core/f;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    .line 508
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->g()V

    .line 510
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "package:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.extra.UNINSTALL_ALL_USERS"

    .line 512
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    .line 514
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/util/Pair;

    const/16 v3, 0x368

    .line 513
    invoke-virtual {p1, p2, v3, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 515
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 342
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->f:Z

    const-string v0, "AppInfoDashboard"

    const-string v1, "Package info not available. Is this package already uninstalled?"

    .line 343
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "package"

    .line 572
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->o:Ljava/lang/String;

    .line 573
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->o:Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_1
    if-eqz v0, :cond_3

    .line 577
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->o:Ljava/lang/String;

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->o:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 586
    iget-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->f:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    if-nez v1, :cond_1

    .line 590
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 591
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->n:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    .line 593
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getUserId(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->d:I

    .line 595
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 596
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 599
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    const-string v2, "AppInfoDashboard"

    if-eqz v1, :cond_3

    .line 602
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v3, 0x401240

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception when retrieving package:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v3, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    const-string v0, "Missing AppEntry; maybe reinstalling?"

    .line 612
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 613
    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    .line 615
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->retrieveAppEntry(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    :cond_4
    :goto_1
    return-void
.end method

.method private f()V
    .locals 4

    .line 621
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "chg"

    .line 622
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v3, -0x1

    .line 624
    invoke-virtual {v2, v3, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    .line 625
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->f:Z

    return-void
.end method

.method private g()V
    .locals 2

    .line 680
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 683
    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->r:Z

    .line 684
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AppInfoDashboard"

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 12
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

    .line 265
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->e()V

    .line 266
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const-string p1, "AppInfoDashboard"

    const-string v0, "createPreferenceControllers: mPackageInfo is null for, will return."

    .line 267
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->d()Ljava/lang/String;

    move-result-object v8

    .line 271
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v10

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1, v9, v8, v10}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->createPreferenceControllers(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v9

    .line 279
    :cond_1
    new-instance v0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;

    invoke-direct {v0, p1, p0, v8, v10}, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/a;

    .line 283
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->g:Ljava/util/List;

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$a;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_2
    new-instance v0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-direct {v0, p1, p0, v8, v10}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->v:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    .line 290
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->v:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v11, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    const/4 v6, 0x0

    const/4 v7, 0x5

    move-object v0, v11

    move-object v2, p0

    move-object v3, v10

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState;II)V

    iput-object v11, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->h:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 294
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->h:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-direct {v0, p1, p0, v8, v10}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-direct {v0, p1, p0, v10}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v0, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;

    invoke-direct {v0, p1, v8}, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v0, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;

    invoke-direct {v0, p1, v8}, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v0, Lcom/android/settings/applications/appinfo/DefaultPhoneShortcutPreferenceController;

    invoke-direct {v0, p1, v8}, Lcom/android/settings/applications/appinfo/DefaultPhoneShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v0, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;

    invoke-direct {v0, p1, v8}, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v0, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;

    invoke-direct {v0, p1, v8}, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method public final a(I)V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->h:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDialogClick(I)V

    :cond_0
    return-void
.end method

.method final b()Z
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 462
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->e()V

    .line 463
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_1

    return v1

    .line 471
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    .line 474
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$a;

    .line 475
    invoke-interface {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$a;->refreshUi()V

    goto :goto_0

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->h:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 478
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->h:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->refreshUi()Z

    .line 481
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->s:Z

    const/high16 v2, 0x800000

    const/4 v3, 0x1

    if-nez v0, :cond_5

    .line 483
    iput-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->s:Z

    .line 484
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_4

    move v1, v3

    :cond_4
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->t:Z

    goto :goto_1

    .line 489
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v4, v4, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v5, 0x400200

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 493
    iget-boolean v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->t:Z

    if-nez v4, :cond_7

    .line 497
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v0, v2

    if-eqz v0, :cond_6

    return v3

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v3

    :catch_0
    return v1
.end method

.method public final c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 713
    const-class v0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 714
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 2

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v0

    const v1, 0x7f150019

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getAppInfoPreferenceScreenResId(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 419
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->h:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 7

    .line 145
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->d()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->onAttach(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 150
    :cond_0
    const-class p1, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;

    .line 151
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 156
    :cond_1
    const-class p1, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 157
    const-class p1, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;

    .line 159
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 161
    const-class v1, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/settingslib/core/a;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 162
    const-class p1, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 163
    const-class p1, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 164
    const-class p1, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 165
    const-class p1, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 166
    const-class p1, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    .line 167
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    move-result-object p1

    .line 168
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 169
    const-class p1, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 170
    const-class p1, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 171
    const-class p1, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 173
    const-class p1, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;

    .line 175
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 177
    const-class v1, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;

    .line 179
    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 181
    const-class v3, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetailPreferenceController;

    .line 182
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetailPreferenceController;

    .line 183
    invoke-virtual {v3, v0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3, p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 185
    const-class v5, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;

    .line 186
    invoke-virtual {p0, v5}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;

    .line 187
    invoke-virtual {v5, v0}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v5, p0}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    .line 190
    const-class v0, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/android/settingslib/core/a;

    aput-object p1, v6, v4

    aput-object v1, v6, v2

    const/4 p1, 0x2

    aput-object v3, v6, p1

    const/4 p1, 0x3

    aput-object v5, v6, p1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->f:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "device_policy"

    .line 199
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->p:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v1, "user"

    .line 200
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->q:Landroid/os/UserManager;

    .line 201
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->e:Landroid/content/pm/PackageManager;

    .line 202
    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1358
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1359
    iput-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->f:Z

    .line 1360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Package is hidden module, exiting: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AppInfoDashboard"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-nez p1, :cond_2

    return-void

    .line 1667
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->r:Z

    if-nez p1, :cond_3

    .line 1670
    iput-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->r:Z

    .line 1671
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "oppo.intent.action.MULTI_APP_PACKAGE_REMOVED"

    .line 1673
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    .line 1675
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1676
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setHasOptionsMenu(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b()Z

    move-result p1

    if-nez p1, :cond_4

    .line 213
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->f()V

    :cond_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 369
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 p2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f1201be

    .line 370
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 371
    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x1

    const v1, 0x7f121752

    .line 372
    invoke-interface {p1, p2, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 373
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->g()V

    .line 229
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 406
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 414
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/String;Z)V

    return v1

    .line 408
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/String;Z)V

    return v1
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .line 660
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->f()V

    :cond_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->o:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "AppInfoDashboard"

    const-string v0, "Package change irrelevant, skipping"

    .line 327
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b()Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .line 378
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x1

    .line 382
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 2439
    iget-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->u:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    move v2, v5

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    goto :goto_0

    .line 2443
    :cond_3
    iget-object v3, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_4

    goto :goto_0

    .line 2445
    :cond_4
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->p:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 2447
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getUserId(I)I

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_0

    .line 2449
    :cond_6
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->q:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_7

    goto :goto_0

    .line 2451
    :cond_7
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->o:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->a(Ljava/lang/String;)I

    move-result v3

    if-ge v3, v4, :cond_8

    iget-object v3, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v3, v6

    if-eqz v3, :cond_8

    goto :goto_0

    .line 2454
    :cond_8
    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    :cond_9
    move v2, v0

    .line 382
    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 384
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_a

    goto :goto_3

    .line 387
    :cond_a
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v1, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_b

    move v1, v0

    goto :goto_2

    :cond_b
    move v1, v5

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->u:Z

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/coloros/settings/utils/al;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_4

    .line 385
    :cond_c
    :goto_3
    iput-boolean v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->u:Z

    move v1, v5

    .line 390
    :goto_4
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 393
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->q:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->u:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->k:Z

    if-nez v3, :cond_d

    if-nez v2, :cond_d

    if-nez v1, :cond_d

    goto :goto_5

    :cond_d
    move v0, v5

    :goto_5
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->j:Lcom/android/settingslib/g$a;

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/g$a;)V

    :cond_e
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 239
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 241
    iget v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->d:I

    const-string v2, "no_control_apps"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->j:Lcom/android/settingslib/g$a;

    .line 243
    iget v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->d:I

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->k:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->refreshWhenUiNotRefreshed()V

    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method
