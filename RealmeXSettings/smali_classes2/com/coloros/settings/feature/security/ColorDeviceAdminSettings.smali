.class public Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;
.super Landroidx/fragment/app/ListFragment;
.source "ColorDeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;,
        Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$c;,
        Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/app/admin/DevicePolicyManager;

.field private d:Landroid/os/UserManager;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/coloros/settings/utils/bn;

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->g:Landroid/util/SparseArray;

    .line 111
    new-instance v0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$1;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Landroid/app/admin/DeviceAdminInfo;)I
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c(Landroid/app/admin/DeviceAdminInfo;)I

    move-result p0

    return p0
.end method

.method private a(Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;
    .locals 2

    .line 586
    :try_start_0
    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 588
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Skipping "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ColorDeviceAdminSettings"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;)Lcom/coloros/settings/utils/bn;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->f:Lcom/coloros/settings/utils/bn;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->b(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 434
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c(Landroid/app/admin/DeviceAdminInfo;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 2

    .line 4406
    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4407
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroid/app/admin/DeviceAdminInfo;)I
    .locals 0

    .line 600
    invoke-virtual {p0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1

    .line 4411
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->g:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    .line 4412
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1

    .line 4420
    iget-object p0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c(Landroid/app/admin/DeviceAdminInfo;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 4

    .line 4424
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 4426
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "a"

    invoke-static {v0, v2, v3}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4427
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->b(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method final a()V
    .locals 14

    .line 243
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->d:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_9

    .line 248
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2458
    iget-object v5, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v4}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v5

    const-string v6, "com.coloros.onekeylockscreen"

    if-eqz v5, :cond_2

    .line 2531
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2532
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 2533
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_2

    .line 2535
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    if-eqz v11, :cond_1

    const v12, 0xc8080

    .line 2542
    :try_start_0
    invoke-interface {v8, v11, v12, v4}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2551
    invoke-direct {p0, v12}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a(Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 2557
    new-instance v13, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;

    invoke-direct {v13, v2}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;-><init>(B)V

    .line 2558
    iput-object v12, v13, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->a:Landroid/app/admin/DeviceAdminInfo;

    .line 2559
    invoke-virtual {v12, v7}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v13, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->b:Ljava/lang/String;

    const/4 v12, 0x1

    .line 2560
    iput-boolean v12, v13, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->c:Z

    .line 2561
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 2574
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 2564
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->e:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v13, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->a:Landroid/app/admin/DeviceAdminInfo;

    .line 2565
    invoke-direct {p0, v11}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->b(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2568
    :cond_0
    iget-object v11, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2548
    :catch_0
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Unable to load component: "

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ColorDeviceAdminSettings"

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3477
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 3478
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v9, 0x8080

    invoke-virtual {v7, v8, v9, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    .line 3483
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 3485
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    move v9, v2

    :goto_3
    if-ge v9, v8, :cond_8

    .line 3487
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 3488
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_4

    .line 3492
    invoke-interface {v5, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 3493
    :cond_4
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v10}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a(Landroid/content/pm/ActivityInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 3495
    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3496
    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3499
    new-instance v12, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;

    invoke-direct {v12, v2}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;-><init>(B)V

    .line 3500
    iput-object v10, v12, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->a:Landroid/app/admin/DeviceAdminInfo;

    .line 3501
    invoke-virtual {v10, v7}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v12, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->b:Ljava/lang/String;

    .line 3503
    iput-boolean v2, v12, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->c:Z

    .line 3504
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 3574
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 3507
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v13, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->e:Ljava/util/ArrayList;

    invoke-static {v10, v13}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v12, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$a;->a:Landroid/app/admin/DeviceAdminInfo;

    .line 3508
    invoke-direct {p0, v10}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->b(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3511
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    .line 3512
    invoke-static {v10}, Lcom/coloros/settings/utils/al;->k(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3513
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "p"

    invoke-static {v10, v11, v13}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 3516
    :cond_6
    iget-object v10, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 251
    :cond_9
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 253
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$b;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 204
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 205
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->setHasOptionsMenu(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/m;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Landroidx/fragment/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 128
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const-string v0, "manage_device_admin"

    const/4 v1, 0x1

    .line 129
    invoke-static {p1, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "device_administrator"

    .line 130
    invoke-static {p1, v0}, Lcom/coloros/settings/romupdate/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->e:Ljava/util/ArrayList;

    .line 132
    new-instance p1, Lcom/coloros/settings/utils/bn;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/coloros/settings/utils/bn;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->f:Lcom/coloros/settings/utils/bn;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v0, "device_policy"

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/admin/DevicePolicyManager;

    iput-object p3, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c:Landroid/app/admin/DevicePolicyManager;

    .line 180
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-string v0, "user"

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    iput-object p3, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->d:Landroid/os/UserManager;

    const p3, 0x7f0d0083

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 183
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    const p2, 0x1020004

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/widget/EmptyListView;

    .line 185
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f120e77

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f0808ca

    invoke-virtual {p2, v0, p3}, Lcom/coloros/settings/widget/EmptyListView;->a(ILjava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const p3, 0x7f120582

    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 192
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050063

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0a020e

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p3, 0x8

    .line 195
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 258
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 259
    check-cast p1, Landroid/app/admin/DeviceAdminInfo;

    .line 260
    new-instance p2, Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c(Landroid/app/admin/DeviceAdminInfo;)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 261
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 262
    new-instance p4, Landroid/content/Intent;

    const-class p5, Lcom/coloros/settings/feature/security/ColorDeviceAdminAdd;

    invoke-direct {p4, p3, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const-string p5, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {p4, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "navigate_title_id"

    const p5, 0x7f120d13

    .line 264
    invoke-virtual {p4, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "hide_verification_dialog"

    const/4 p5, 0x1

    .line 265
    invoke-virtual {p4, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 266
    invoke-virtual {p3, p4, p2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    .line 211
    invoke-super {p0}, Landroidx/fragment/app/ListFragment;->onResume()V

    .line 212
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 213
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 214
    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->h:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->b:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 221
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->d:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    .line 224
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 225
    iget-object v5, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->g:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->c:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6, v4}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->a()V

    .line 1138
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->f:Lcom/coloros/settings/utils/bn;

    invoke-virtual {v0}, Lcom/coloros/settings/utils/bn;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1139
    iget-object v0, p0, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->f:Lcom/coloros/settings/utils/bn;

    new-instance v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$2;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;)V

    .line 2056
    iput-object v1, v0, Lcom/coloros/settings/utils/bn;->b:Lcom/coloros/settings/utils/bn$a;

    .line 1158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings$3;-><init>(Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;)V

    const-wide/16 v3, 0x190

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1169
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1171
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_2
    return-void
.end method
