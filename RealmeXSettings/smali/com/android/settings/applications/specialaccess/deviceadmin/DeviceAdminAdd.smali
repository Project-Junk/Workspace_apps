.class public Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;
.super Lcom/coloros/settings/NavigateActivity;
.source "DeviceAdminAdd.java"


# instance fields
.field private final A:Landroid/os/IBinder;

.field public a:Landroid/os/Handler;

.field public b:Landroid/app/admin/DevicePolicyManager;

.field c:Landroid/app/AppOpsManager;

.field public d:Landroid/app/admin/DeviceAdminInfo;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/String;

.field g:Landroid/widget/ImageView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field protected l:Landroid/widget/ImageView;

.field protected m:Z

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field protected p:Landroid/view/ViewGroup;

.field public q:Landroid/widget/Button;

.field r:Landroid/widget/Button;

.field s:Landroid/widget/Button;

.field public t:Z

.field public u:Z

.field v:Z

.field public w:Z

.field x:Z

.field protected y:Z

.field z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/coloros/settings/NavigateActivity;-><init>()V

    .line 106
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->A:Landroid/os/IBinder;

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->m:Z

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->t:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->z:Z

    return-void
.end method

.method private a(Lcom/android/settings/fuelgauge/g;)V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/g;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 p1, 0x2fe

    goto :goto_0

    :cond_0
    const/16 p1, 0x2ff

    :goto_0
    move v2, p1

    .line 567
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    .line 790
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private i()I
    .locals 2

    .line 734
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0
.end method

.method public static synthetic lambda$y6Rfs33X_gVfaTXIWNCzjNqdikc(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    .line 482
    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->c()Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 490
    invoke-static {p0, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 539
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 542
    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->w:Z

    if-nez p1, :cond_1

    .line 545
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :catch_0
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a(ZLjava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    .line 554
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 557
    :catch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.app.extra.DISABLE_WARNING"

    .line 558
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 560
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    return-void
.end method

.method protected a(Z)V
    .locals 5

    .line 738
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->y:Z

    if-nez v0, :cond_4

    .line 739
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    .line 740
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    if-eqz v0, :cond_0

    .line 741
    iget v4, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    goto :goto_1

    :cond_0
    iget v4, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    :goto_1
    if-eqz v0, :cond_1

    .line 742
    iget v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    goto :goto_2

    :cond_1
    iget v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    .line 743
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 744
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_3

    :cond_2
    const-string v4, ""

    .line 743
    :goto_3
    invoke-static {p0, v2, v4, v3}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v2

    .line 745
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->p:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 747
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->y:Z

    :cond_4
    return-void
.end method

.method public final a(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1

    .line 775
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 777
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 776
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 778
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 499
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a(ZLjava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->v:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    const v0, 0x16059

    .line 506
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    .line 507
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 506
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 509
    invoke-static {p0}, Lcom/android/settings/fuelgauge/g;->a(Landroid/content/Context;)Lcom/android/settings/fuelgauge/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a(Lcom/android/settings/fuelgauge/g;)V

    .line 511
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception trying to activate admin "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    .line 516
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceAdminAdd"

    .line 515
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setResult(I)V

    .line 521
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->x:Z

    if-eqz v0, :cond_2

    .line 523
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->f:Ljava/lang/String;

    .line 524
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 523
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setResult(I)V

    .line 529
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void
.end method

.method public final c()Lcom/android/settingslib/g$a;
    .locals 2

    .line 725
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->i()I

    move-result v0

    const-string v1, "no_remove_managed_profile"

    .line 724
    invoke-static {p0, v1, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .line 730
    invoke-direct {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->i()I

    move-result v0

    const-string v1, "no_remove_managed_profile"

    .line 729
    invoke-static {p0, v1, v0}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method final e()I
    .locals 2

    const-string/jumbo v0, "window"

    .line 764
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 765
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method protected f()I
    .locals 1

    const v0, 0x7f0d0153

    return v0
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const-string v0, "Bad "

    const-string v1, "Unable to retrieve device policy "

    .line 140
    invoke-super {p0, p1}, Lcom/coloros/settings/NavigateActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a01ee

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p1, :cond_0

    const v2, 0x7f0804bb

    .line 145
    invoke-virtual {p1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f050063

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0a020e

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v2, 0x8

    .line 150
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 156
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a:Landroid/os/Handler;

    const-string p1, "device_policy"

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    const-string p1, "appops"

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->c:Landroid/app/AppOpsManager;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    const-string v3, "DeviceAdminAdd"

    if-eqz v2, :cond_2

    const-string p1, "Cannot start ADD_DEVICE_ADMIN as a new task"

    .line 163
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->z:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    const/4 v6, 0x1

    if-nez v5, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1786
    iget-object v7, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_3

    .line 1788
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    goto :goto_0

    .line 1790
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminAdd$y6Rfs33X_gVfaTXIWNCzjNqdikc;

    invoke-direct {v8, v5}, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminAdd$y6Rfs33X_gVfaTXIWNCzjNqdikc;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v5

    .line 177
    :goto_0
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-nez v7, :cond_4

    .line 178
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No component specified in "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    .line 182
    :cond_4
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 183
    iput-boolean v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->t:Z

    :cond_5
    if-eqz v2, :cond_8

    const-string v7, "android.app.action.SET_PROFILE_OWNER"

    .line 186
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 187
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setResult(I)V

    .line 188
    invoke-virtual {p0, v6}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setFinishOnTouchOutside(Z)V

    .line 189
    iput-boolean v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->x:Z

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v7, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->f:Ljava/lang/String;

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 193
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    .line 199
    :cond_6
    :try_start_0
    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 200
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v6

    if-nez v7, :cond_8

    const-string p1, "Cannot set a non-system app as a profile owner"

    .line 201
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 206
    :catch_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot find the package "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :cond_7
    :goto_1
    const-string p1, "Unknown or incorrect caller"

    .line 194
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :cond_8
    const/16 v2, 0x80

    .line 214
    :try_start_1
    invoke-virtual {p1, v5, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 224
    iget-object v7, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 225
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v8, 0x8000

    invoke-virtual {p1, v7, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_9

    move v7, v4

    goto :goto_2

    .line 228
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_b

    .line 231
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 232
    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 233
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 237
    :try_start_2
    iput-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 238
    new-instance p1, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p1, p0, v9}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move p1, v6

    goto :goto_5

    :catch_1
    move-exception p1

    .line 243
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_2
    move-exception p1

    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    move p1, v4

    :goto_5
    if-nez p1, :cond_c

    .line 249
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Request to add invalid device admin: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    .line 255
    :cond_c
    new-instance p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 256
    iput-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 258
    :try_start_3
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, p0, p1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_10

    .line 273
    iput-boolean v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->v:Z

    .line 274
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 275
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v5, v1}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 276
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Requested admin is already being removed: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    .line 281
    :cond_d
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object p1

    move v1, v4

    .line 282
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    .line 283
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 284
    iget-object v7, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    iget v2, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v7, v5, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 285
    iput-boolean v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->v:Z

    goto :goto_7

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 289
    :cond_f
    :goto_7
    iget-boolean p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->v:Z

    if-nez p1, :cond_10

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setResult(I)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    .line 298
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->e:Ljava/lang/CharSequence;

    .line 300
    iget-boolean p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->x:Z

    if-eqz p1, :cond_14

    .line 303
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result p1

    if-nez p1, :cond_11

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b()V

    return-void

    :cond_11
    const-string p1, "com.android.internal.R.string.config_defaultSupervisionProfileOwnerComponent"

    .line 311
    invoke-static {p1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_12

    const-string p1, "Unable to set profile owner post-setup, no default supervisorprofile owner defined"

    .line 313
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    .line 319
    :cond_12
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 321
    invoke-virtual {v5, p1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result p1

    if-eqz p1, :cond_13

    .line 322
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to set non-default profile owner post-setup "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    .line 328
    :cond_13
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121134

    .line 329
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0d0290

    .line 330
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f12013d

    new-instance v2, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$2;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$2;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    .line 331
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120491

    const/4 v2, 0x0

    .line 336
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$1;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    .line 337
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 342
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 345
    move-object v1, p1

    check-cast v1, Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    .line 346
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    const v0, 0x7f0a005e

    .line 347
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->j:Landroid/widget/TextView;

    .line 348
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->j:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a006e

    .line 350
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->n:Landroid/widget/TextView;

    .line 351
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->n:Landroid/widget/TextView;

    const v0, 0x7f120775

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->f:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 355
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->f()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setContentView(I)V

    const p1, 0x7f0a0065

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->g:Landroid/widget/ImageView;

    const p1, 0x7f0a0067

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->h:Landroid/widget/TextView;

    const p1, 0x7f0a0063

    .line 359
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->i:Landroid/widget/TextView;

    const p1, 0x7f0a0517

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->k:Landroid/widget/TextView;

    const p1, 0x7f0a005c

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->j:Landroid/widget/TextView;

    const p1, 0x7f0a005d

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->l:Landroid/widget/ImageView;

    .line 364
    new-instance p1, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$3;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$3;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$4;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 392
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    const p1, 0x7f0a006d

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->n:Landroid/widget/TextView;

    const p1, 0x7f0a0068

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->p:Landroid/view/ViewGroup;

    const p1, 0x7f0a006b

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->o:Landroid/widget/TextView;

    const p1, 0x7f0a011f

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->s:Landroid/widget/Button;

    .line 399
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->s:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 400
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->s:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$5;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$5;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0758

    .line 408
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->r:Landroid/widget/Button;

    .line 409
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->r:Landroid/widget/Button;

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 410
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->r:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$6;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0041

    .line 419
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    const p1, 0x7f0a056a

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 422
    invoke-virtual {p1, v6}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    .line 423
    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$7;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_3
    move-exception p1

    .line 264
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :catch_4
    move-exception p1

    .line 260
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void

    :catch_5
    move-exception p1

    .line 216
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 635
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/NavigateActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "android.app.extra.DISABLE_WARNING"

    .line 617
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 618
    new-instance p2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 619
    invoke-virtual {p2, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f12081d

    .line 620
    new-instance v0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$8;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd$8;-><init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;)V

    invoke-virtual {p2, p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f120818

    const/4 v0, 0x0

    .line 631
    invoke-virtual {p2, p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 632
    invoke-virtual {p2}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 4

    .line 590
    invoke-super {p0}, Lcom/coloros/settings/NavigateActivity;->onPause()V

    .line 592
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 593
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->c:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->A:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    .line 594
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->c:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->A:Landroid/os/IBinder;

    const/16 v3, 0x2d

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    .line 596
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onResume()V
    .locals 9

    .line 577
    invoke-super {p0}, Lcom/coloros/settings/NavigateActivity;->onResume()V

    .line 578
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 579
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->x:Z

    if-nez v0, :cond_b

    const v0, 0x7f0a056b

    .line 2641
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2642
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->g:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2643
    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->h:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 2645
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->i:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    .line 2646
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 2645
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2647
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2649
    :catch_0
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2651
    :goto_0
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->e:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 2652
    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->j:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2653
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2655
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2656
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->l:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2658
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->v:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->x:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    .line 2659
    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2660
    iput-boolean v2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->u:Z

    .line 2661
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    .line 2662
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2663
    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v5

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 2666
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->n:Landroid/widget/TextView;

    const v5, 0x7f1200ff

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2667
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    const v5, 0x7f12122c

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 2669
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->c()Lcom/android/settingslib/g$a;

    move-result-object v4

    .line 2670
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d()Z

    move-result v5

    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    .line 2672
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2674
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_3
    const v0, 0x7f12122b

    if-nez v4, :cond_6

    .line 2675
    iget-object v5, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    .line 2676
    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v6

    .line 2675
    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 2688
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a(Z)V

    .line 2689
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->n:Landroid/widget/TextView;

    const v5, 0x7f120772

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    .line 2690
    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2691
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 2690
    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v2

    .line 2689
    invoke-virtual {p0, v5, v6}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f1200da

    .line 2692
    invoke-virtual {p0, v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setTitle(I)V

    .line 2693
    iget-boolean v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->t:Z

    if-eqz v4, :cond_5

    .line 2694
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    const v4, 0x7f121228

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    .line 2696
    :cond_5
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    .line 2680
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->n:Landroid/widget/TextView;

    const v5, 0x7f120100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 2683
    :cond_7
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->n:Landroid/widget/TextView;

    const v5, 0x7f1200fb

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2685
    :goto_4
    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    .line 2686
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2699
    :goto_5
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->b:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    .line 2700
    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 2699
    invoke-virtual {v0, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2701
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2702
    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->o:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2703
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 2705
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 2708
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->a(Z)V

    .line 2709
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->n:Landroid/widget/TextView;

    const v4, 0x7f120774

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    .line 2710
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    .line 2709
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f1200ec

    .line 2711
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 2712
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->q:Landroid/widget/Button;

    const v4, 0x7f1200eb

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2795
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->d:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 2714
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->r:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2716
    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2717
    iput-boolean v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->u:Z

    .line 583
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->c:Landroid/app/AppOpsManager;

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->A:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->c:Landroid/app/AppOpsManager;

    const/16 v2, 0x2d

    iget-object v3, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->A:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .line 603
    invoke-super {p0}, Lcom/coloros/settings/NavigateActivity;->onUserLeaveHint()V

    .line 608
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->z:Z

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->finish()V

    :cond_0
    return-void
.end method

.method protected toggleMessageEllipsis(Landroid/view/View;)V
    .locals 1

    .line 752
    check-cast p1, Landroid/widget/TextView;

    .line 754
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->m:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->m:Z

    .line 755
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 756
    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->m:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->e()I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0xf

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 758
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->l:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;->m:Z

    if-eqz v0, :cond_2

    const-string v0, "com.android.internal.R.drawable.expander_ic_minimized"

    .line 759
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    const-string v0, "com.android.internal.R.drawable.expander_ic_maximized"

    .line 760
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 758
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
