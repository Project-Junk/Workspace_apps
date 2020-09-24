.class public Lcom/android/settings/TrustedCredentialsSettings$e;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$e$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/android/settings/TrustedCredentialsSettings$a;

.field final synthetic b:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$f;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 360
    invoke-virtual {p1, p2, p0}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings$f;Lcom/android/settings/TrustedCredentialsSettings$e;)Lcom/android/settings/TrustedCredentialsSettings$a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->a:Lcom/android/settings/TrustedCredentialsSettings$a;

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$e;->a()V

    return-void
.end method

.method private c(I)Landroid/os/UserHandle;
    .locals 2

    .line 379
    new-instance v0, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->a:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method private d(I)I
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->a:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(I)Landroid/content/pm/UserInfo;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings;->a:Landroid/os/UserManager;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/android/settings/TrustedCredentialsSettings$c;Lcom/android/settings/TrustedCredentialsSettings$f;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 510
    new-instance p3, Lcom/android/settings/TrustedCredentialsSettings$e$a;

    invoke-direct {p3, p0}, Lcom/android/settings/TrustedCredentialsSettings$e$a;-><init>(Lcom/android/settings/TrustedCredentialsSettings$e;)V

    .line 511
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0375

    .line 512
    invoke-virtual {v1, v2, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 513
    invoke-virtual {p4, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f0a0724

    .line 515
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/android/settings/TrustedCredentialsSettings$e$a;->a:Landroid/widget/TextView;

    const v1, 0x7f0a0725

    .line 517
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/android/settings/TrustedCredentialsSettings$e$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0a0723

    .line 518
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 2537
    iput-object v1, p3, Lcom/android/settings/TrustedCredentialsSettings$e$a;->c:Landroid/widget/Switch;

    .line 3537
    iget-object v1, p3, Lcom/android/settings/TrustedCredentialsSettings$e$a;->c:Landroid/widget/Switch;

    .line 520
    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/settings/TrustedCredentialsSettings$e$a;

    move-object v4, p4

    move-object p4, p3

    move-object p3, v4

    .line 524
    :goto_0
    iget-object v1, p3, Lcom/android/settings/TrustedCredentialsSettings$e$a;->a:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v1, p3, Lcom/android/settings/TrustedCredentialsSettings$e$a;->b:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-boolean p2, p2, Lcom/android/settings/TrustedCredentialsSettings$f;->e:Z

    if-eqz p2, :cond_1

    .line 4537
    iget-object p2, p3, Lcom/android/settings/TrustedCredentialsSettings$e$a;->c:Landroid/widget/Switch;

    .line 527
    iget-boolean v1, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->f:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 5537
    iget-object p2, p3, Lcom/android/settings/TrustedCredentialsSettings$e$a;->c:Landroid/widget/Switch;

    .line 528
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings;->a:Landroid/os/UserManager;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "no_config_credentials"

    invoke-virtual {v1, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 6537
    iget-object p2, p3, Lcom/android/settings/TrustedCredentialsSettings$e$a;->c:Landroid/widget/Switch;

    .line 531
    invoke-virtual {p2, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 7537
    iget-object p2, p3, Lcom/android/settings/TrustedCredentialsSettings$e$a;->c:Landroid/widget/Switch;

    .line 532
    invoke-virtual {p2, p1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    :cond_1
    return-object p4
.end method

.method public final a(II)Lcom/android/settings/TrustedCredentialsSettings$c;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->a:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/TrustedCredentialsSettings$c;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 460
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$a$a;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->a:Lcom/android/settings/TrustedCredentialsSettings$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$a$a;-><init>(Lcom/android/settings/TrustedCredentialsSettings$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Lcom/android/settings/TrustedCredentialsSettings$c;)V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->a:Lcom/android/settings/TrustedCredentialsSettings$a;

    .line 1845
    iget-object v1, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1846
    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1848
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(IZ)Z
    .locals 3

    .line 484
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->c(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 485
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 486
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 487
    invoke-static {v0}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 490
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p2}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v2

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v1, v1, Lcom/android/settings/TrustedCredentialsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 494
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    .line 495
    invoke-virtual {v1}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 496
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 498
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p1, v0}, Lcom/android/settings/TrustedCredentialsSettings;->a(I)Z

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public b(I)Lcom/android/settings/TrustedCredentialsSettings$d;
    .locals 2

    .line 475
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$d;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$d;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$e;I)V

    return-object v0
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$e;->a(II)Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 427
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/TrustedCredentialsSettings$e;->a(II)Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->a:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object p2, p2, Lcom/android/settings/TrustedCredentialsSettings$a;->b:Lcom/android/settings/TrustedCredentialsSettings$f;

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/settings/TrustedCredentialsSettings$e;->a(Lcom/android/settings/TrustedCredentialsSettings$c;Lcom/android/settings/TrustedCredentialsSettings$f;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->a:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 373
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->c(I)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->a:Lcom/android/settings/TrustedCredentialsSettings$a;

    iget-object v0, v0, Lcom/android/settings/TrustedCredentialsSettings$a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .line 388
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->d(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p3, :cond_0

    .line 408
    iget-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p2}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "layout_inflater"

    .line 409
    invoke-virtual {p2, p3}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 410
    invoke-static {p2, p4}, Lcom/android/settings/m;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    :cond_0
    const p2, 0x1020016

    .line 413
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->a(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1204b8

    .line 415
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1204b7

    .line 417
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/4 p1, 0x6

    .line 419
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 420
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p4, 0x7f06012b

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 438
    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p3, p4}, Lcom/android/settings/TrustedCredentialsSettings$e;->a(II)Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/TrustedCredentialsSettings;->a(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$c;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 448
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/TrustedCredentialsSettings$c;

    .line 449
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-static {v0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$c;)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$e;->b:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->b(Lcom/android/settings/TrustedCredentialsSettings$c;)V

    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    const/4 p1, 0x1

    .line 1479
    invoke-virtual {p0, p3, p1}, Lcom/android/settings/TrustedCredentialsSettings$e;->a(IZ)Z

    move-result p2

    if-nez p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
