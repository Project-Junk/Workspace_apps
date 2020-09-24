.class public Lcom/android/settings/applications/ProcessStatsDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProcessStatsDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcessStatsDetail$a;
    }
.end annotation


# static fields
.field static final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/w;",
            ">;"
        }
    .end annotation
.end field

.field static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/w$a;",
            ">;"
        }
    .end annotation
.end field

.field static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ProcessStatsDetail$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/content/pm/PackageManager;

.field b:Landroid/app/admin/DevicePolicyManager;

.field c:Lcom/android/settings/applications/x;

.field d:D

.field e:J

.field private final i:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/settings/CancellablePreference;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/MenuItem;

.field private k:J

.field private l:D

.field private m:D

.field private n:Landroidx/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 247
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->f:Ljava/util/Comparator;

    .line 323
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->g:Ljava/util/Comparator;

    .line 336
    new-instance v0, Lcom/android/settings/applications/ProcessStatsDetail$4;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsDetail$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->h:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/util/ArrayMap;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 299
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 302
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/android/settings/applications/w;)Ljava/lang/String;
    .locals 0

    .line 526
    invoke-static {p0, p1}, Lcom/android/settings/applications/ProcessStatsDetail;->b(Ljava/lang/String;Lcom/android/settings/applications/w;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4414
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4415
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4427
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1212b9

    .line 4428
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1212b8

    .line 4429
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12081d

    new-instance v2, Lcom/android/settings/applications/ProcessStatsDetail$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail$5;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    .line 4430
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const p2, 0x7f120818

    const/4 v0, 0x0

    .line 4435
    invoke-virtual {p0, p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 4436
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4423
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    .line 4420
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Can\'t find app "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProcessStatsDetail"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->stopService(Landroid/content/Intent;)Z

    .line 441
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->c()V

    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/android/settings/applications/w;)Ljava/lang/String;
    .locals 3

    .line 306
    iget-object v0, p1, Lcom/android/settings/applications/w;->c:Ljava/lang/String;

    const-string v1, ":"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0x3a

    .line 308
    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 310
    :cond_0
    iget-object v1, p1, Lcom/android/settings/applications/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p1, Lcom/android/settings/applications/w;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    return-object p0

    .line 314
    :cond_1
    iget-object p0, p1, Lcom/android/settings/applications/w;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 315
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_2

    add-int/lit8 p0, p0, 0x1

    .line 318
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static b()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/w;",
            ">;"
        }
    .end annotation

    .line 530
    sget-object v0, Lcom/android/settings/applications/ProcessStatsDetail;->f:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsDetail;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 6

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const v1, 0x7fffffff

    .line 169
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 174
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/CancellablePreference;

    invoke-virtual {v4, v2}, Lcom/android/settings/CancellablePreference;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 179
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 180
    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v4, :cond_1

    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v4, :cond_2

    .line 183
    :cond_1
    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_2

    .line 186
    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 187
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/CancellablePreference;

    if-eqz v4, :cond_2

    .line 189
    new-instance v5, Lcom/android/settings/applications/ProcessStatsDetail$1;

    invoke-direct {v5, p0, v3}, Lcom/android/settings/applications/ProcessStatsDetail$1;-><init>(Lcom/android/settings/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V

    .line 4048
    iput-object v5, v4, Lcom/android/settings/CancellablePreference;->a:Lcom/android/settings/CancellablePreference$a;

    const/4 v3, 0x1

    .line 195
    invoke-virtual {v4, v3}, Lcom/android/settings/CancellablePreference;->a(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private d()V
    .locals 8

    .line 456
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->e()Lcom/android/settings/applications/ProcessStatsDetailAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->checkForceStop()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->j:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v0, v0, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/w;

    iget v0, v0, Lcom/android/settings/applications/w;->b:I

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_2

    .line 463
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->j:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    move v0, v1

    move v2, v0

    .line 467
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v3, v3, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_6

    .line 468
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v3, v3, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/w;

    move v5, v2

    move v2, v1

    .line 469
    :goto_1
    iget-object v6, v3, Lcom/android/settings/applications/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 470
    iget-object v6, v3, Lcom/android/settings/applications/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 471
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->b:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, v6}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 472
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->j:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    .line 476
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 477
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v7, 0x200000

    and-int/2addr v6, v7

    if-nez v6, :cond_4

    move v5, v4

    :catch_0
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    move v2, v5

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    .line 485
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->j:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    return-void
.end method

.method private e()Lcom/android/settings/applications/ProcessStatsDetailAdaptor;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 504
    const-class v0, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 505
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 6

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    move v2, v1

    .line 447
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v3, v3, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 448
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v3, v3, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/w;

    move v4, v1

    .line 449
    :goto_1
    iget-object v5, v3, Lcom/android/settings/applications/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 450
    iget-object v5, v3, Lcom/android/settings/applications/w;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->a:Landroid/content/pm/PackageManager;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->b:Landroid/app/admin/DevicePolicyManager;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "package_entry"

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/x;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    .line 111
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/x;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    const-string/jumbo v0, "weight_to_ram"

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->d:D

    const-string/jumbo v0, "total_time"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->e:J

    const-string v0, "max_memory_usage"

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->l:D

    const-string/jumbo v0, "total_scale"

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->m:D

    .line 116
    iget-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->e:J

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->k:J

    .line 118
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->i:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 1201
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->e()Lcom/android/settings/applications/ProcessStatsDetailAdaptor;

    move-result-object p1

    const v0, 0x7f15001b

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->getUserSettingsXml(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsDetail;->addPreferencesFromResource(I)V

    .line 1202
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->e()Lcom/android/settings/applications/ProcessStatsDetailAdaptor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->createDetails(Landroidx/preference/PreferenceScreen;)V

    const-string p1, "processes"

    .line 1203
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->n:Landroidx/preference/PreferenceCategory;

    .line 1260
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->e()Lcom/android/settings/applications/ProcessStatsDetailAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->fillProcessesSection()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 1264
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->n:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 1265
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 1266
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v3, v3, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1267
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v3, v3, Lcom/android/settings/applications/x;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/w;

    .line 1268
    iget-object v4, v3, Lcom/android/settings/applications/w;->a:Ljava/lang/String;

    const-string v5, "os"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1269
    iget-object v4, v3, Lcom/android/settings/applications/w;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/settings/applications/w;->d:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1271
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v4, v4, Lcom/android/settings/applications/x;->l:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/settings/applications/ProcessStatsDetail;->b(Ljava/lang/String;Lcom/android/settings/applications/w;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/w;->d:Ljava/lang/CharSequence;

    .line 1273
    :goto_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1275
    :cond_1
    sget-object v2, Lcom/android/settings/applications/ProcessStatsDetail;->f:Ljava/util/Comparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v2, v0

    .line 1276
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v2, v3, :cond_2

    .line 1277
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/w;

    .line 1278
    new-instance v5, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1279
    iget-object v6, v3, Lcom/android/settings/applications/w;->d:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1280
    invoke-virtual {v5, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 1282
    iget-wide v6, v3, Lcom/android/settings/applications/w;->j:J

    iget-wide v8, v3, Lcom/android/settings/applications/w;->f:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1283
    iget-wide v8, v3, Lcom/android/settings/applications/w;->m:D

    iget-wide v10, p0, Lcom/android/settings/applications/ProcessStatsDetail;->d:D

    mul-double/2addr v8, v10

    double-to-long v8, v8

    iget-wide v10, v3, Lcom/android/settings/applications/w;->i:D

    iget-wide v12, p0, Lcom/android/settings/applications/ProcessStatsDetail;->d:D

    mul-double/2addr v10, v12

    double-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1285
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    long-to-float v6, v6

    .line 1286
    iget-wide v7, p0, Lcom/android/settings/applications/ProcessStatsDetail;->e:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    .line 1287
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    .line 1286
    invoke-static {v6, v7}, Lcom/android/settings/applications/x;->a(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f120d74

    .line 1288
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    aput-object v6, v4, v1

    .line 1289
    invoke-virtual {p0, v7, v4}, Lcom/android/settings/applications/ProcessStatsDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1288
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1290
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsDetail;->n:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1292
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->n:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result p1

    if-ge p1, v4, :cond_3

    .line 1293
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->n:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_3
    const-string p1, "status_header"

    .line 1206
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SummaryPreference;

    .line 1209
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-wide v2, v2, Lcom/android/settings/applications/x;->j:D

    iget-object v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-wide v4, v4, Lcom/android/settings/applications/x;->f:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    move v0, v1

    :cond_4
    if-eqz v0, :cond_5

    .line 1210
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-wide v2, v0, Lcom/android/settings/applications/x;->j:D

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-wide v2, v0, Lcom/android/settings/applications/x;->f:D

    :goto_3
    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->d:D

    mul-double/2addr v2, v4

    .line 1211
    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->l:D

    div-double v4, v2, v4

    double-to-float v0, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    .line 1213
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    .line 1214
    invoke-virtual {p1, v0, v4}, Lcom/android/settings/SummaryPreference;->a(FF)V

    .line 1215
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    double-to-long v2, v2

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 1217
    iget-object v2, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/settings/SummaryPreference;->a(Ljava/lang/String;)V

    .line 1218
    iget-object v0, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/SummaryPreference;->b(Ljava/lang/String;)V

    .line 1220
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-wide v2, p1, Lcom/android/settings/applications/x;->g:J

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-wide v4, p1, Lcom/android/settings/applications/x;->c:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-float p1, v2

    .line 1221
    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->e:J

    long-to-float v0, v2

    div-float/2addr p1, v0

    .line 1222
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1221
    invoke-static {p1, v0}, Lcom/android/settings/applications/x;->a(FLandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "frequency"

    .line 1223
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1224
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-wide v2, p1, Lcom/android/settings/applications/x;->e:J

    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-wide v4, p1, Lcom/android/settings/applications/x;->i:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsDetail;->m:D

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v2, v4

    const-string p1, "max_usage"

    .line 1225
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsDetail;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 1226
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    double-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ProcessStatsDetail;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 231
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->e()Lcom/android/settings/applications/ProcessStatsDetailAdaptor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->onCreateOptionsMenu()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const v0, 0x7f120a1f

    const/4 v1, 0x0

    .line 232
    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->j:Landroid/view/MenuItem;

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->d()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 542
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 543
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->e()Lcom/android/settings/applications/ProcessStatsDetailAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->unbind()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->a()V

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 159
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->d()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->c()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 125
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object p1, p1, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->finish()V

    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->e()Lcom/android/settings/applications/ProcessStatsDetailAdaptor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/applications/ProcessStatsDetailAdaptor;->onViewCreate(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/ProcessStatsDetail;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    .line 136
    invoke-static {p1, p0, p2}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object p2

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v0, v0, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 139
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v2, v2, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 138
    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v0, v0, Lcom/android/settings/applications/x;->l:Ljava/lang/String;

    .line 2163
    iput-object v0, p2, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v0, v0, Lcom/android/settings/applications/x;->a:Ljava/lang/String;

    .line 2209
    iput-object v0, p2, Lcom/android/settings/widget/b;->e:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v0, v0, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail;->c:Lcom/android/settings/applications/x;

    iget-object v0, v0, Lcom/android/settings/applications/x;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1

    :cond_3
    const/16 v0, -0x2710

    .line 2214
    :goto_1
    iput v0, p2, Lcom/android/settings/widget/b;->f:I

    const/4 v0, 0x1

    .line 3197
    iput-boolean v0, p2, Lcom/android/settings/widget/b;->g:Z

    .line 147
    invoke-virtual {p2, v1}, Lcom/android/settings/widget/b;->a(I)Lcom/android/settings/widget/b;

    move-result-object p2

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsDetail;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public shouldAddPreferenceHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
