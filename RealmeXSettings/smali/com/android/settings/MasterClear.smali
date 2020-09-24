.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field a:Lcom/google/android/setupcompat/template/FooterButton;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroid/widget/CheckBox;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Landroid/view/View;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Landroid/widget/CheckBox;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Landroid/widget/ScrollView;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected final f:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 242
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 554
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private a(Landroid/os/UserManager;)V
    .locals 23

    move-object/from16 v1, p0

    .line 454
    iget-object v0, v1, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v2, 0x7f0a0037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 455
    iget-object v0, v1, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v3, 0x7f0a0036

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 456
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 459
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    move-object/from16 v5, p1

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 460
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 462
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v0, "layout_inflater"

    .line 464
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v7, :cond_9

    .line 469
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    .line 470
    iget v14, v13, Landroid/content/pm/UserInfo;->id:I

    .line 471
    new-instance v15, Landroid/os/UserHandle;

    invoke-direct {v15, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 472
    invoke-virtual {v8, v14}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v10

    .line 473
    array-length v12, v10

    if-eqz v12, :cond_8

    add-int v17, v0, v12

    .line 479
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 480
    invoke-virtual {v0, v14}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 481
    array-length v5, v14

    move-object/from16 v18, v6

    const v6, 0x1020016

    const/4 v0, 0x1

    if-le v7, v0, :cond_1

    .line 484
    invoke-static {v9, v3}, Lcom/android/settings/m;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 485
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Landroid/widget/TextView;

    .line 486
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v13

    if-eqz v13, :cond_0

    const v13, 0x7f1204b8

    goto :goto_1

    :cond_0
    const v13, 0x7f1204b7

    :goto_1
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(I)V

    .line 488
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v12, :cond_7

    .line 492
    aget-object v13, v10, v6

    const/4 v0, 0x0

    :goto_3
    const/16 v16, 0x0

    if-ge v0, v5, :cond_3

    move/from16 v19, v5

    .line 495
    iget-object v5, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v8

    aget-object v8, v14, v0

    iget-object v8, v8, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 496
    aget-object v0, v14, v0

    move-object v5, v0

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v19

    move-object/from16 v8, v20

    goto :goto_3

    :cond_3
    move/from16 v19, v5

    move-object/from16 v20, v8

    move-object/from16 v5, v16

    :goto_4
    const-string v8, "MasterClear"

    if-nez v5, :cond_4

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "No descriptor for account name="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v10

    move/from16 v22, v12

    const v8, 0x1020016

    goto/16 :goto_8

    .line 507
    :cond_4
    :try_start_0
    iget v0, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v0, :cond_5

    .line 508
    iget-object v0, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v21, v10

    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v10, v15}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 510
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v22, v12

    :try_start_2
    iget v12, v5, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 511
    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 510
    invoke-virtual {v10, v0, v15}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v16, v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_5
    move-object/from16 v21, v10

    move/from16 v22, v12

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v21, v10

    :goto_5
    move/from16 v22, v12

    .line 516
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Invalid icon id for account type "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_3
    move-object/from16 v21, v10

    :catch_4
    move/from16 v22, v12

    .line 514
    :catch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "Bad package name for account type "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    if-nez v16, :cond_6

    .line 519
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    :cond_6
    move-object/from16 v0, v16

    const v5, 0x7f0d01b9

    const/4 v8, 0x0

    .line 522
    invoke-virtual {v9, v5, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v8, 0x1020006

    .line 523
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v8, 0x1020016

    .line 524
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v10, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v19

    move-object/from16 v8, v20

    move-object/from16 v10, v21

    move/from16 v12, v22

    goto/16 :goto_2

    :cond_7
    move-object/from16 v20, v8

    move/from16 v0, v17

    goto :goto_9

    :cond_8
    move-object/from16 v18, v6

    move-object/from16 v20, v8

    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v5, p1

    move-object/from16 v6, v18

    move-object/from16 v8, v20

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x1

    if-lez v0, :cond_a

    const/4 v4, 0x0

    .line 530
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 531
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    .line 534
    :goto_a
    iget-object v0, v1, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v2, 0x7f0a04a1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v2

    sub-int/2addr v2, v7

    if-lez v2, :cond_b

    goto :goto_b

    :cond_b
    move v5, v4

    :goto_b
    if-eqz v5, :cond_c

    goto :goto_c

    :cond_c
    const/16 v10, 0x8

    move v4, v10

    .line 536
    :goto_c
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 2

    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 435
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 436
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 437
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 438
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 439
    invoke-direct {p0, v1, p2}, Lcom/android/settings/MasterClear;->a(Landroid/view/View;Ljava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 441
    :cond_2
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 442
    check-cast p1, Landroid/widget/TextView;

    .line 443
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string p1, ","

    .line 444
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "euicc"

    .line 397
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/euicc/EuiccManager;

    .line 398
    invoke-virtual {p0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method static a(Landroid/widget/ScrollView;)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 403
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 408
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p0

    add-int/2addr v3, p0

    sub-int/2addr v2, v3

    if-gtz v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/android/settings/MasterClear;)Z
    .locals 3

    .line 6140
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6141
    new-instance v1, Lcom/android/settings/password/b;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const p0, 0x7f120d3f

    .line 6142
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/16 v0, 0x37

    .line 6141
    invoke-virtual {v1, v0, p0}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private c()V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "MasterClear"

    if-nez v0, :cond_0

    const-string v0, "No activity attached, skipping setUpActionBarAndTitle"

    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "No actionbar, skipping setUpActionBarAndTitle"

    .line 125
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_1
    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 129
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method private d()V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 285
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->c()V

    .line 286
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->f()V

    .line 288
    iget-object v0, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v1, 0x7f0a026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->h:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v1, 0x7f0a026b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->b:Landroid/widget/CheckBox;

    .line 290
    iget-object v0, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v1, 0x7f0a026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->c:Landroid/view/View;

    .line 291
    iget-object v0, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v1, 0x7f0a0269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->d:Landroid/widget/CheckBox;

    .line 292
    iget-object v0, p0, Lcom/android/settings/MasterClear;->e:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v1, 0x7f0a03d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/settings/MasterClear;->e:Landroid/widget/ScrollView;

    .line 304
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 306
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/settings/MasterClear;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MasterClear;->h:Landroid/view/View;

    new-instance v3, Lcom/android/settings/MasterClear$2;

    invoke-direct {v3, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 307
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/settings/MasterClear;->h:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v3, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v5, 0x7f0a026d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 310
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v3, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v4, 0x7f0a007f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 313
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v3, p0, Lcom/android/settings/MasterClear;->b:Landroid/widget/CheckBox;

    xor-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 328
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "masterclear.allow_retain_esim_profiles_after_fdr"

    .line 3392
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lcom/android/settings/MasterClear;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/MasterClear;->c:Landroid/view/View;

    new-instance v1, Lcom/android/settings/MasterClear$3;

    invoke-direct {v1, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v3, 0x7f0a007e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v3, 0x7f0a0466

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 343
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/MasterClear;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 348
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 349
    invoke-direct {p0, v0}, Lcom/android/settings/MasterClear;->a(Landroid/os/UserManager;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 351
    iget-object v1, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v2, 0x7f0a03cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 352
    invoke-direct {p0, v1, v0}, Lcom/android/settings/MasterClear;->a(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 353
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/MasterClear;->e:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/settings/MasterClear$4;

    invoke-direct {v1, p0}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/MasterClear;->e:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private e()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 380
    invoke-static {v0}, Lcom/android/settings/MasterClear;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 383
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "euicc_provisioned"

    .line 384
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "development_settings_enabled"

    .line 385
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private f()V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/android/settings/MasterClear;->a:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v0, :cond_0

    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    const v1, 0x7f0a05f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 419
    const-class v1, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/a;

    .line 420
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$a;

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120d2e

    .line 422
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MasterClear;->f:Landroid/view/View$OnClickListener;

    .line 4347
    iput-object v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    .line 4353
    iput v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v2, 0x7f13027e

    .line 4359
    iput v2, v1, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 426
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 5273
    iget-object v0, v0, Lcom/google/android/setupcompat/template/a;->b:Lcom/google/android/setupcompat/template/FooterButton;

    .line 428
    iput-object v0, p0, Lcom/android/settings/MasterClear;->a:Lcom/google/android/setupcompat/template/FooterButton;

    return-void
.end method

.method private static g()Z
    .locals 2

    .line 449
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$D81bdy7azK30q7zgmcDAYItujj8(Lcom/android/settings/MasterClear;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->a(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/android/settings/MasterClear;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "erase_sd"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/MasterClear;->d:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const-string v2, "erase_esim"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    new-instance v1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/MasterClearConfirm;

    .line 187
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    .line 188
    invoke-virtual {v1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f120d2f

    .line 3063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method final b()Landroid/content/Intent;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1200d2

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1200c4

    .line 203
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1200c3

    .line 204
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "MasterClear"

    if-nez v4, :cond_3

    .line 206
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 207
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    .line 212
    invoke-virtual {v4, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 213
    array-length v4, v4

    if-lez v4, :cond_2

    .line 214
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 215
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 218
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    .line 219
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 222
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to resolve Activity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accounts installed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_3
    :goto_1
    const-string v0, "Resources not set for account confirmation."

    .line 208
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x38

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 1166
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->d()V

    return-void

    :cond_2
    if-eq p3, p1, :cond_3

    .line 1174
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->b()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2196
    invoke-virtual {p0, p1, p3}, Lcom/android/settings/MasterClear;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 1177
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->a()V

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 544
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string v0, "no_factory_reset"

    .line 543
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p3

    .line 545
    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 546
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 547
    invoke-static {p2, v0, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 549
    invoke-static {p2}, Lcom/android/settings/m;->k(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    const p2, 0x7f0d01bb

    .line 550
    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p3, :cond_3

    .line 552
    new-instance p1, Lcom/android/settings/enterprise/a;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/a;-><init>(Landroid/app/Activity;)V

    .line 553
    invoke-virtual {p1, v0, p3}, Lcom/android/settings/enterprise/a;->a(Ljava/lang/String;Lcom/android/settingslib/g$a;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/-$$Lambda$MasterClear$D81bdy7azK30q7zgmcDAYItujj8;

    invoke-direct {p2, p0}, Lcom/android/settings/-$$Lambda$MasterClear$D81bdy7azK30q7zgmcDAYItujj8;-><init>(Lcom/android/settings/MasterClear;)V

    .line 554
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 555
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    .line 556
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_3
    const p2, 0x7f0d01b8

    .line 559
    invoke-virtual {p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    .line 561
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->d()V

    .line 562
    iget-object p1, p0, Lcom/android/settings/MasterClear;->g:Landroid/view/View;

    return-object p1
.end method

.method public onGlobalLayout()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/settings/MasterClear;->a:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->e:Landroid/widget/ScrollView;

    invoke-static {v1}, Lcom/android/settings/MasterClear;->a(Landroid/widget/ScrollView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(Z)V

    return-void
.end method
