.class public Lcom/android/settings/applications/RunningServiceDetails;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings/applications/y$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/android/settings/applications/RunningServiceDetails$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/ActivityManager;

.field public b:Landroid/view/LayoutInflater;

.field c:Lcom/android/settings/applications/y;

.field d:Z

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field h:Z

.field i:Lcom/android/settings/applications/y$d;

.field j:Landroid/view/View;

.field public k:Landroid/view/ViewGroup;

.field public l:Landroid/view/ViewGroup;

.field m:Lcom/android/settings/applications/RunningProcessesView$a;

.field n:Lcom/android/settings/applications/RunningProcessesView$c;

.field public o:I

.field public p:I

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningServiceDetails$a;",
            ">;"
        }
    .end annotation
.end field

.field t:Ljava/lang/StringBuilder;

.field private w:Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->s:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->t:Ljava/lang/StringBuilder;

    return-void
.end method

.method private a()V
    .locals 4

    .line 244
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->addProcessesHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->p:I

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0d02c8

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->r:Landroid/widget/TextView;

    .line 250
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->r:Landroid/widget/TextView;

    const v1, 0x7f1212b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 253
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->p:I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->b()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 1

    .line 2582
    invoke-static {p1}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->a(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object p1

    const/4 v0, 0x0

    .line 2584
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 2585
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "confirmstop"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/android/settings/applications/y$d;ZZ)V
    .locals 9

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v1

    .line 414
    :goto_0
    iget-object v2, p1, Lcom/android/settings/applications/y$d;->q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settings/applications/y$d;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, p2, v3}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->setPositionAndSize(II)V

    .line 416
    iget-object v2, p1, Lcom/android/settings/applications/y$d;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/y$g;

    invoke-direct {p0, v2, p1, v0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/y$g;Lcom/android/settings/applications/y$d;ZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_d

    .line 421
    iget-object p2, p1, Lcom/android/settings/applications/y$d;->q:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    if-gtz p2, :cond_2

    .line 425
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->addSeparatorHeader()V

    .line 426
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object p2

    invoke-virtual {p2, v1, v0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->setPositionAndSize(II)V

    .line 427
    iget p2, p1, Lcom/android/settings/applications/y$d;->b:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, p3, p1, v1, v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/y$g;Lcom/android/settings/applications/y$d;ZZ)V

    return-void

    :cond_2
    const/4 p2, -0x1

    .line 431
    :goto_2
    iget-object v2, p1, Lcom/android/settings/applications/y$d;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_d

    if-gez p2, :cond_3

    .line 432
    iget-object v2, p1, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    goto :goto_3

    :cond_3
    iget-object v2, p1, Lcom/android/settings/applications/y$d;->p:Ljava/util/ArrayList;

    .line 433
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/y$f;

    :goto_3
    if-eqz v2, :cond_4

    .line 434
    iget v3, v2, Lcom/android/settings/applications/y$f;->r:I

    if-lez v3, :cond_c

    .line 438
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settings/applications/y$d;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, p2, v4}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->setPositionAndSize(II)V

    if-gez p2, :cond_5

    move v3, v0

    goto :goto_4

    :cond_5
    move v3, v1

    .line 1351
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->a()V

    .line 1353
    new-instance v4, Lcom/android/settings/applications/RunningServiceDetails$a;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/RunningServiceDetails$a;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 1354
    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->b:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object v6

    const v7, 0x7f0d02b2

    invoke-virtual {v6, v7}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getServiceDetailProcessLayoutResID(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1356
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->setListViewStyle(Landroid/view/View;)V

    .line 1357
    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1358
    iput-object v5, v4, Lcom/android/settings/applications/RunningServiceDetails$a;->a:Landroid/view/View;

    .line 1359
    new-instance v6, Lcom/android/settings/applications/RunningProcessesView$c;

    invoke-direct {v6, v5}, Lcom/android/settings/applications/RunningProcessesView$c;-><init>(Landroid/view/View;)V

    iput-object v6, v4, Lcom/android/settings/applications/RunningServiceDetails$a;->f:Lcom/android/settings/applications/RunningProcessesView$c;

    .line 1360
    iget-object v6, v4, Lcom/android/settings/applications/RunningServiceDetails$a;->f:Lcom/android/settings/applications/RunningProcessesView$c;

    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    iget-object v8, p0, Lcom/android/settings/applications/RunningServiceDetails;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v2, v8}, Lcom/android/settings/applications/RunningProcessesView$c;->a(Lcom/android/settings/applications/y;Lcom/android/settings/applications/y$c;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$a;

    move-result-object v6

    iput-object v6, v4, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    const v6, 0x7f0a018a

    .line 1362
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1363
    iget v6, v2, Lcom/android/settings/applications/y$f;->b:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eq v6, v7, :cond_6

    const/16 v2, 0x8

    .line 1366
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_6
    if-eqz v3, :cond_7

    const v2, 0x7f120d11

    .line 1368
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 1372
    :cond_7
    iget-object v2, v2, Lcom/android/settings/applications/y$f;->v:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1373
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 1376
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eq v3, v0, :cond_9

    const/4 v6, 0x2

    if-eq v3, v6, :cond_8

    move-object v2, p3

    move v3, v1

    goto :goto_5

    :cond_8
    const v3, 0x7f121121

    .line 1391
    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_a

    .line 1393
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v2, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 1395
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7, v2}, Lcom/android/settings/applications/y;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_9
    const v3, 0x7f121120

    .line 1379
    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_a

    .line 1381
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v2, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 1383
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7, v2}, Lcom/android/settings/applications/y;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    :cond_a
    move-object v2, p3

    :goto_5
    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    .line 1403
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v2, v7, v1

    invoke-virtual {v6, v3, v7}, Landroidx/fragment/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    :cond_b
    :goto_6
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_2

    :cond_d
    return-void
.end method

.method private a(Lcom/android/settings/applications/y$g;Lcom/android/settings/applications/y$d;ZZ)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 1231
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->addServicesHeader()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1234
    iget v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->o:I

    if-nez v2, :cond_0

    .line 1235
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0d02c8

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->q:Landroid/widget/TextView;

    .line 1237
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->q:Landroid/widget/TextView;

    const v3, 0x7f1212b6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1238
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1240
    :cond_0
    iget v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->o:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->o:I

    goto :goto_0

    .line 260
    :cond_1
    iget v2, p2, Lcom/android/settings/applications/y$d;->b:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 265
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->a()V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    move-object v2, p1

    goto :goto_1

    :cond_3
    move-object v2, p2

    .line 270
    :goto_1
    new-instance v3, Lcom/android/settings/applications/RunningServiceDetails$a;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/RunningServiceDetails$a;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    .line 271
    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->b:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object v5

    const v6, 0x7f0d02b3

    invoke-virtual {v5, v6}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getServiceDetailLayoutResID(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 273
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->setRootLayoutPara(Landroid/view/View;)V

    .line 274
    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 275
    iput-object v4, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->a:Landroid/view/View;

    .line 276
    iput-object p1, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    .line 277
    new-instance v5, Lcom/android/settings/applications/RunningProcessesView$c;

    invoke-direct {v5, v4}, Lcom/android/settings/applications/RunningProcessesView$c;-><init>(Landroid/view/View;)V

    iput-object v5, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->f:Lcom/android/settings/applications/RunningProcessesView$c;

    .line 278
    iget-object v5, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->f:Lcom/android/settings/applications/RunningProcessesView$c;

    iget-object v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    iget-object v7, p0, Lcom/android/settings/applications/RunningServiceDetails;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v2, v7}, Lcom/android/settings/applications/RunningProcessesView$c;->a(Lcom/android/settings/applications/y;Lcom/android/settings/applications/y$c;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$a;

    move-result-object v2

    iput-object v2, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    const/16 v2, 0x8

    if-nez p4, :cond_4

    const p4, 0x7f0a05ea

    .line 281
    invoke-virtual {v4, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz p1, :cond_5

    .line 284
    iget-object p4, p1, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget p4, p4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz p4, :cond_5

    .line 285
    iget-object p4, p0, Lcom/android/settings/applications/RunningServiceDetails;->a:Landroid/app/ActivityManager;

    iget-object v5, p1, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p4, v5}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object p4

    iput-object p4, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->g:Landroid/app/PendingIntent;

    :cond_5
    const p4, 0x7f0a018a

    .line 289
    invoke-virtual {v4, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v5, 0x7f0a0392

    .line 290
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->b:Landroid/widget/Button;

    const v5, 0x7f0a0574

    .line 291
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->c:Landroid/widget/Button;

    if-eqz p3, :cond_6

    .line 293
    iget p3, p2, Lcom/android/settings/applications/y$d;->b:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq p3, v5, :cond_6

    .line 297
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0a01a4

    .line 298
    invoke-virtual {v4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_6
    if-eqz p1, :cond_7

    .line 300
    iget-object p3, p1, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget p3, p3, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz p3, :cond_7

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p1, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v4, p1, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p3, v2, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 305
    :cond_7
    iget-boolean p2, p2, Lcom/android/settings/applications/y$d;->m:Z

    if-eqz p2, :cond_8

    const p2, 0x7f1202b4

    .line 306
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 307
    :cond_8
    iget-object p2, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->g:Landroid/app/PendingIntent;

    if-eqz p2, :cond_9

    if-eqz p1, :cond_b

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p1, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p2

    .line 312
    iget-object p3, p1, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget p3, p3, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v2, 0x7f12141d

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-virtual {p3, v2, v4}, Landroidx/fragment/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 319
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p1, :cond_a

    const p3, 0x7f121422

    goto :goto_2

    :cond_a
    const p3, 0x7f120a78

    :goto_2
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :catch_0
    :cond_b
    :goto_3
    iget-object p2, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->b:Landroid/widget/Button;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object p2, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object p4, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->g:Landroid/app/PendingIntent;

    if-eqz p4, :cond_c

    const p4, 0x7f12141c

    goto :goto_4

    :cond_c
    const p4, 0x7f121421

    :goto_4
    invoke-virtual {p3, p4}, Landroidx/fragment/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object p2, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->c:Landroid/widget/Button;

    invoke-virtual {p2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object p2, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->c:Landroid/widget/Button;

    const p3, 0x7f121230

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "send_action_app_error"

    invoke-static {p2, p3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_e

    if-eqz p1, :cond_e

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p1, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/applications/y$g;->o:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 337
    invoke-static {p2, p3, p1}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->h:Landroid/content/ComponentName;

    .line 340
    iget-object p1, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->c:Landroid/widget/Button;

    iget-object p2, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->h:Landroid/content/ComponentName;

    if-eqz p2, :cond_d

    goto :goto_5

    :cond_d
    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6

    .line 342
    :cond_e
    iget-object p1, v3, Lcom/android/settings/applications/RunningServiceDetails$a;->c:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 344
    :goto_6
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->addServiceDetailsView(Lcom/android/settings/applications/RunningServiceDetails$a;)V

    .line 347
    :goto_7
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->s:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Z)V
    .locals 7

    .line 2204
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    .line 2205
    invoke-virtual {v0}, Lcom/android/settings/applications/y;->f()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    invoke-virtual {v0}, Lcom/android/settings/applications/y;->e()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, v2

    .line 2207
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2208
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/y$d;

    .line 2209
    iget v5, v4, Lcom/android/settings/applications/y$d;->b:I

    iget v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->f:I

    if-ne v5, v6, :cond_2

    .line 2212
    iget v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->e:I

    if-ltz v5, :cond_1

    iget-object v5, v4, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget v5, v5, Lcom/android/settings/applications/y$f;->p:I

    iget v6, p0, Lcom/android/settings/applications/RunningServiceDetails;->e:I

    if-ne v5, v6, :cond_2

    .line 2215
    :cond_1
    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->g:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->g:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/settings/applications/y$d;->n:Lcom/android/settings/applications/y$f;

    iget-object v6, v6, Lcom/android/settings/applications/y$f;->q:Ljava/lang/String;

    .line 2216
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v1

    .line 2223
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->i:Lcom/android/settings/applications/y$d;

    const/4 v3, 0x1

    if-eq v0, v4, :cond_5

    .line 2224
    iput-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->i:Lcom/android/settings/applications/y$d;

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    move p1, v3

    :cond_6
    if-eqz p1, :cond_10

    .line 492
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->i:Lcom/android/settings/applications/y$d;

    if-eqz p1, :cond_7

    .line 493
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->n:Lcom/android/settings/applications/RunningProcessesView$c;

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    iget-object v5, p0, Lcom/android/settings/applications/RunningServiceDetails;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, p1, v5}, Lcom/android/settings/applications/RunningProcessesView$c;->a(Lcom/android/settings/applications/y;Lcom/android/settings/applications/y$c;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->m:Lcom/android/settings/applications/RunningProcessesView$a;

    goto :goto_4

    .line 495
    :cond_7
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->m:Lcom/android/settings/applications/RunningProcessesView$a;

    if-eqz p1, :cond_f

    .line 497
    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView$a;->c:Lcom/android/settings/applications/RunningProcessesView$c;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView$c;->e:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->m:Lcom/android/settings/applications/RunningProcessesView$a;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView$a;->c:Lcom/android/settings/applications/RunningProcessesView$c;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView$c;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->m:Lcom/android/settings/applications/RunningProcessesView$a;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView$a;->c:Lcom/android/settings/applications/RunningProcessesView$c;

    iget-object p1, p1, Lcom/android/settings/applications/RunningProcessesView$c;->d:Landroid/widget/TextView;

    const v0, 0x7f120e84

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2447
    :goto_4
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_5
    if-ltz p1, :cond_8

    .line 2448
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/settings/applications/RunningServiceDetails;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningServiceDetails$a;

    iget-object v4, v4, Lcom/android/settings/applications/RunningServiceDetails$a;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    .line 2450
    :cond_8
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2452
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->removeHead()V

    .line 2454
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->q:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 2455
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2456
    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->q:Landroid/widget/TextView;

    .line 2459
    :cond_9
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->r:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    .line 2460
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2461
    iput-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->r:Landroid/widget/TextView;

    .line 2464
    :cond_a
    iput v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->p:I

    iput v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->o:I

    .line 2466
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->i:Lcom/android/settings/applications/y$d;

    if-eqz p1, :cond_10

    .line 2467
    iget-object p1, p1, Lcom/android/settings/applications/y$d;->o:Lcom/android/settings/applications/y$j;

    if-eqz p1, :cond_e

    .line 2469
    iget-boolean p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->h:Z

    if-eqz p1, :cond_b

    .line 2470
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->i:Lcom/android/settings/applications/y$d;

    iget-object v0, v0, Lcom/android/settings/applications/y$d;->r:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2471
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    iget-object v0, v0, Lcom/android/settings/applications/y;->v:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_6

    .line 2473
    :cond_b
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->i:Lcom/android/settings/applications/y$d;

    iget-object p1, p1, Lcom/android/settings/applications/y$d;->r:Ljava/util/ArrayList;

    :goto_6
    move v0, v2

    .line 2475
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 2476
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/y$d;

    invoke-direct {p0, v1, v3, v2}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/y$d;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    move v0, v2

    .line 2478
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 2479
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/y$d;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/y$d;ZZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    return-void

    .line 2482
    :cond_e
    iget-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->i:Lcom/android/settings/applications/y$d;

    invoke-direct {p0, p1, v3, v3}, Lcom/android/settings/applications/RunningServiceDetails;->a(Lcom/android/settings/applications/y$d;ZZ)V

    goto :goto_9

    .line 502
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->b()V

    :cond_10
    :goto_9
    return-void
.end method

.method private b()V
    .locals 1

    .line 510
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$RunningServiceDetails$CW0LFqehP-U1ddojw1lACBgExMo;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$$Lambda$RunningServiceDetails$CW0LFqehP-U1ddojw1lACBgExMo;-><init>(Lcom/android/settings/applications/RunningServiceDetails;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 639
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 640
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->d:Z

    .line 641
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/y;->a(Lcom/android/settings/applications/y$e;)V

    .line 646
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    invoke-virtual {v1}, Lcom/android/settings/applications/y;->c()V

    .line 650
    invoke-direct {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Z)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 4

    .line 655
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->m:Lcom/android/settings/applications/RunningProcessesView$a;

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/RunningProcessesView$a;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    :cond_0
    const/4 v0, 0x0

    .line 658
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 659
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails$a;

    iget-object v1, v1, Lcom/android/settings/applications/RunningServiceDetails$a;->e:Lcom/android/settings/applications/RunningProcessesView$a;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningServiceDetails;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$a;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->w:Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    if-nez v0, :cond_0

    .line 687
    const-class v0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->w:Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    .line 688
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->w:Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->bind(Ljava/lang/Object;)V

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->w:Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    return-object v0
.end method

.method private synthetic f()V
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$CW0LFqehP-U1ddojw1lACBgExMo(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->f()V

    return-void
.end method


# virtual methods
.method final a(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$a;
    .locals 3

    const/4 v0, 0x0

    .line 571
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningServiceDetails$a;

    .line 573
    iget-object v2, v1, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    iget-object v2, v2, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/applications/RunningServiceDetails$a;->d:Lcom/android/settings/applications/y$g;

    iget-object v2, v2, Lcom/android/settings/applications/y$g;->n:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 574
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(I)V
    .locals 2

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 675
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/applications/RunningServiceDetails;->a(Z)V

    .line 676
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->d()V

    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 671
    invoke-direct {p0, p1}, Lcom/android/settings/applications/RunningServiceDetails;->a(Z)V

    .line 672
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->d()V

    return-void

    .line 668
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->d()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x55

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 520
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/RunningServiceDetails;->setHasOptionsMenu(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "uid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->e:I

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->f:I

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->g:Ljava/lang/String;

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "background"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->h:Z

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->a:Landroid/app/ActivityManager;

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->b:Landroid/view/LayoutInflater;

    .line 531
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/applications/y;->a(Landroid/content/Context;)Lcom/android/settings/applications/y;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    .line 532
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->onCreate()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 537
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object p3

    const v0, 0x7f0d02b1

    invoke-virtual {p3, v0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->getLayoutResID(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 538
    invoke-static {p2, p1, p1}, Lcom/android/settings/m;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    .line 540
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails;->j:Landroid/view/View;

    const p2, 0x7f0a007c

    .line 541
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/settings/applications/RunningServiceDetails;->k:Landroid/view/ViewGroup;

    const p2, 0x7f0a062c

    .line 542
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/settings/applications/RunningServiceDetails;->l:Landroid/view/ViewGroup;

    .line 543
    new-instance p2, Lcom/android/settings/applications/RunningProcessesView$c;

    iget-object p3, p0, Lcom/android/settings/applications/RunningServiceDetails;->l:Landroid/view/ViewGroup;

    invoke-direct {p2, p3}, Lcom/android/settings/applications/RunningProcessesView$c;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/settings/applications/RunningServiceDetails;->n:Lcom/android/settings/applications/RunningProcessesView$c;

    .line 547
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->c()V

    .line 548
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->e()Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/applications/RunningServiceDetails;->j:Landroid/view/View;

    invoke-virtual {p2, p3}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->onCreateView(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->w:Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->onDestroy()V

    .line 696
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->w:Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;->unbind()V

    const/4 v0, 0x0

    .line 697
    iput-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->w:Lcom/coloros/settings/adaptor/RunningServiceDetailsAdaptor;

    .line 698
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 554
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->d:Z

    .line 556
    iget-object v0, p0, Lcom/android/settings/applications/RunningServiceDetails;->c:Lcom/android/settings/applications/y;

    invoke-virtual {v0}, Lcom/android/settings/applications/y;->d()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 566
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 567
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServiceDetails;->c()V

    return-void
.end method
