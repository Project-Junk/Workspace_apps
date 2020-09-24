.class public Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OthersStorageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$b;,
        Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$c;,
        Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;,
        Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;,
        Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$e;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/coloros/settings/widget/SettingsColorListView;

.field private c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/storage/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/coloros/settings/feature/storage/b;

.field private f:Landroid/view/View;

.field private g:Lcolor/support/v7/app/AlertDialog;

.field private h:Landroid/content/Context;

.field private i:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Lcolor/support/v7/widget/Toolbar;

.field private n:Lcom/color/support/widget/navigation/ColorNavigationView;

.field private o:Lcolor/support/design/widget/ColorAppBarLayout;

.field private p:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private q:Landroid/view/Menu;

.field private r:Landroid/app/Dialog;

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private a(IZ)Lcom/color/support/widget/navigation/ColorNavigationView;
    .locals 3

    const v0, 0x7f0a044d

    .line 418
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/navigation/ColorNavigationView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 424
    invoke-virtual {v0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 425
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 426
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 428
    invoke-virtual {v0}, Lcom/color/support/widget/navigation/ColorNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0a01da

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 429
    :goto_0
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-nez p2, :cond_2

    const/16 p1, 0x8

    .line 432
    invoke-virtual {v0, p1}, Lcom/color/support/widget/navigation/ColorNavigationView;->setVisibility(I)V

    goto :goto_1

    .line 434
    :cond_2
    invoke-virtual {v0, v2}, Lcom/color/support/widget/navigation/ColorNavigationView;->setVisibility(I)V

    .line 437
    :goto_1
    new-instance p1, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$tGZvrevfLNn84PxiXq0ExMgKk74;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$tGZvrevfLNn84PxiXq0ExMgKk74;-><init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V

    invoke-virtual {v0, p1}, Lcom/color/support/widget/navigation/ColorNavigationView;->setOnNavigationItemSelectedListener(Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;)V

    .line 444
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(Z)V

    return-object v0
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 393
    invoke-direct {p0, v0, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(ZZ)V

    .line 394
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a(Z)V

    .line 395
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->c()V

    .line 396
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(I)V

    .line 397
    invoke-direct {p0, v0, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(IZ)Lcom/color/support/widget/navigation/ColorNavigationView;

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 313
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-boolean v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->s:Z

    if-eqz v1, :cond_2

    if-lez p1, :cond_1

    const v1, 0x7f12089d

    const/4 v2, 0x1

    .line 319
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f1208a7

    .line 320
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x7f120d91

    .line 322
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 324
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic a(ILjava/util/ArrayList;)V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scanProgress "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OthersStorageViewActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->j:Z

    .line 206
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->removeHeaderView(Landroid/view/View;)Z

    .line 208
    :cond_0
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d:Ljava/util/ArrayList;

    .line 209
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    iget-object p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d:Ljava/util/ArrayList;

    .line 5608
    iput-object p2, p1, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V
    .locals 1

    .line 6291
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->g:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6292
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->g:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/io/File;)V
    .locals 1

    .line 488
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->d(Ljava/io/File;)J

    .line 489
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->i:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;->removeMessages(I)V

    .line 490
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->i:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;->sendEmptyMessage(I)Z

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {v0}, Lcom/coloros/settings/widget/SettingsColorListView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    .line 193
    invoke-virtual {v2}, Lcom/coloros/settings/widget/SettingsColorListView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    .line 194
    invoke-virtual {v3}, Lcom/coloros/settings/widget/SettingsColorListView;->getPaddingRight()I

    move-result v3

    .line 195
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_1

    const p1, 0x7f0703a7

    goto :goto_0

    :cond_1
    const p1, 0x7f0702dd

    :goto_0
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 192
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/coloros/settings/widget/SettingsColorListView;->setPadding(IIII)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->q:Landroid/view/Menu;

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->s:Z

    .line 301
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->m:Lcolor/support/v7/widget/Toolbar;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->s:Z

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    .line 302
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->s:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 304
    iput-boolean p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->t:Z

    .line 306
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->q:Landroid/view/Menu;

    const v1, 0x7f0a0236

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 307
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->q:Landroid/view/Menu;

    const v1, 0x7f0a05de

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 308
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->q:Landroid/view/Menu;

    const v3, 0x7f0a05e0

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    move v1, v2

    :cond_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 309
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->q:Landroid/view/Menu;

    const v0, 0x7f0a011c

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private synthetic a(Landroid/view/MenuItem;)Z
    .locals 1

    const-string p1, "OthersStorageViewActivity"

    const-string v0, "Click delete"

    .line 438
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 439
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->showDialog(I)V

    return p1
.end method

.method private b()V
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->getCount()I

    move-result v0

    .line 402
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_1

    .line 406
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->c()V

    .line 407
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(I)V

    .line 408
    invoke-direct {p0, v3, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(IZ)Lcom/color/support/widget/navigation/ColorNavigationView;

    goto :goto_1

    .line 410
    :cond_1
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b()V

    .line 411
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(I)V

    .line 412
    invoke-direct {p0, v1, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(IZ)Lcom/color/support/widget/navigation/ColorNavigationView;

    .line 414
    :goto_1
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->s:Z

    invoke-direct {p0, v0, v4}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(ZZ)V

    return-void
.end method

.method private synthetic b(IZ)V
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCheckBoxChangedListener position:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",isChecked:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OthersStorageViewActivity"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->invalidateOptionsMenu()V

    .line 169
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->q:Landroid/view/Menu;

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a()I

    move-result p1

    .line 171
    iget-boolean p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->s:Z

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->getCount()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(ZZ)V

    .line 172
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(I)V

    .line 173
    iget-boolean p2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->s:Z

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(IZ)Lcom/color/support/widget/navigation/ColorNavigationView;

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V
    .locals 3

    .line 7279
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->g:Lcolor/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    .line 7280
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0143

    const/4 v2, 0x0

    .line 7281
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7282
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12156a

    .line 7283
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 7284
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 7285
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->g:Lcolor/support/v7/app/AlertDialog;

    .line 7287
    :cond_0
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->g:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private synthetic c()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->o:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result v0

    .line 180
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07055d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Lcom/coloros/settings/widget/SettingsColorListView;->setPadding(IIII)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V
    .locals 9

    .line 7450
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    .line 7813
    iget-object v0, v0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    .line 7452
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "checkedItems:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OthersStorageViewActivity"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 7454
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 7456
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "size:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 7458
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7460
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 8472
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 8477
    :cond_0
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/feature/storage/a/a;

    .line 8478
    iget-wide v4, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->l:J

    iget-wide v6, v3, Lcom/coloros/settings/feature/storage/a/a;->b:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->l:J

    .line 8479
    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lcom/coloros/settings/feature/storage/a/a;->c:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8480
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8482
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 8483
    iget-wide v5, v3, Lcom/coloros/settings/feature/storage/a/a;->b:J

    const-wide/32 v7, 0xa00000

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 8484
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->i:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;

    const/16 v5, 0x66

    invoke-virtual {v3, v5}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;->sendEmptyMessage(I)Z

    .line 8487
    :cond_1
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$yjCKyLuaEHhgT7U4IzMwUGePQgQ;

    invoke-direct {v5, p0, v4}, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$yjCKyLuaEHhgT7U4IzMwUGePQgQ;-><init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;Ljava/io/File;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 8473
    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "position:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7466
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 7467
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->invalidateOptionsMenu()V

    :cond_5
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)Landroid/view/Menu;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->q:Landroid/view/Menu;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a()V

    return-void
.end method

.method public static synthetic lambda$iI_gWwT91PrinUF5M1fh5Vp-OIw(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$iSwjBTILm4PKjpqYtNE9NJTHSwU(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b(IZ)V

    return-void
.end method

.method public static synthetic lambda$tGZvrevfLNn84PxiXq0ExMgKk74(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$yjCKyLuaEHhgT7U4IzMwUGePQgQ(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic lambda$yppiV9kM0zdc6m6mMoFUwR5ye80(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 7

    .line 3328
    iget-wide v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3330
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3332
    iget-wide v4, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->l:J

    const-string v6, "delete_file_data"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3333
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d:Ljava/util/ArrayList;

    const-string v5, "delete_file_list_data"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "result_bundle"

    .line 3335
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3336
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "mDeleteFileSizeSum = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->l:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "OthersStorageViewActivity"

    invoke-static {v4, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 3337
    invoke-virtual {p0, v1, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 3338
    iput-wide v2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->l:J

    .line 228
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->s:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a()V

    return-void

    .line 257
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 114
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-static {p0, v1, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    const v2, 0x7f0d0243

    .line 116
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->setContentView(I)V

    const v2, 0x7f0a03c9

    .line 117
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 118
    invoke-static {p0, v2, v0}, Lcom/coloros/settings/utils/al;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Z)V

    const v2, 0x7f0a070a

    .line 1261
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar;

    iput-object v2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->m:Lcolor/support/v7/widget/Toolbar;

    .line 1262
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 1264
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    .line 1265
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1266
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v3, 0x7f120d91

    .line 1267
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 1269
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "path_map"

    .line 1271
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d:Ljava/util/ArrayList;

    const-string v3, "is_sd_card"

    .line 1272
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->k:Z

    .line 1273
    invoke-static {p0, v2}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_0
    const v2, 0x102000a

    .line 121
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/widget/SettingsColorListView;

    iput-object v2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    const v2, 0x7f0a01a6

    .line 122
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->p:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 123
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->p:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v3, 0x7f0804bb

    invoke-virtual {v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    if-eqz p1, :cond_1

    const-string v2, "state_coordinator_Layout_fsw"

    .line 124
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->p:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v3, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {}, Lcom/coloros/settings/utils/al;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 127
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->p:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setFitsSystemWindows(Z)V

    .line 129
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 130
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f050063

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0a020e

    .line 131
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 v2, 0x8

    .line 133
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 138
    iput-object p0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->h:Landroid/content/Context;

    .line 139
    new-instance p1, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;-><init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->i:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;

    .line 141
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 142
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->k:Z

    if-eqz p1, :cond_4

    const-string p1, "OthersStorageViewActivity"

    const-string v0, "initFileCache"

    .line 2200
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 2201
    iput-wide v3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->l:J

    .line 2202
    new-instance p1, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$iI_gWwT91PrinUF5M1fh5Vp-OIw;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$iI_gWwT91PrinUF5M1fh5Vp-OIw;-><init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V

    .line 2212
    new-instance v0, Lcom/coloros/settings/feature/storage/b;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->h:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->k:Z

    invoke-direct {v0, v3, v2, v4}, Lcom/coloros/settings/feature/storage/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->e:Lcom/coloros/settings/feature/storage/b;

    .line 2213
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->e:Lcom/coloros/settings/feature/storage/b;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/storage/b;->a(Lcom/coloros/settings/feature/storage/b$b;)V

    .line 2214
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->e:Lcom/coloros/settings/feature/storage/b;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/b;->a()V

    .line 144
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0266

    .line 145
    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->f:Landroid/view/View;

    .line 146
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->f:Landroid/view/View;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_1

    .line 151
    :cond_4
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->j:Z

    :goto_1
    const p1, 0x7f0a000b

    .line 3165
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->o:Lcolor/support/design/widget/ColorAppBarLayout;

    .line 3166
    new-instance p1, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$iSwjBTILm4PKjpqYtNE9NJTHSwU;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$iSwjBTILm4PKjpqYtNE9NJTHSwU;-><init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V

    invoke-direct {p1, p0, v0, v3}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d$a;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    .line 3176
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3177
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/SettingsColorListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 3178
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->o:Lcolor/support/design/widget/ColorAppBarLayout;

    new-instance v0, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$yppiV9kM0zdc6m6mMoFUwR5ye80;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/-$$Lambda$OthersStorageViewActivity$yppiV9kM0zdc6m6mMoFUwR5ye80;-><init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;)V

    invoke-virtual {p1, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->post(Ljava/lang/Runnable;)Z

    .line 3183
    invoke-direct {p0, v1, v1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(IZ)Lcom/color/support/widget/navigation/ColorNavigationView;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->n:Lcom/color/support/widget/navigation/ColorNavigationView;

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4513
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a()I

    move-result v0

    .line 4518
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "markedCount:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OthersStorageViewActivity"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4520
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    .line 4813
    iget-object v1, v1, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->b:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 4523
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    move v5, v3

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v4, :cond_6

    .line 4525
    invoke-virtual {v1, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 4526
    invoke-virtual {v1, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    const-string v10, "position:"

    if-nez v9, :cond_1

    .line 4528
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    if-ltz v8, :cond_4

    .line 4532
    iget-object v9, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v8, v9, :cond_2

    goto :goto_1

    .line 4537
    :cond_2
    iget-object v9, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coloros/settings/feature/storage/a/a;

    .line 4538
    iget v8, v8, Lcom/coloros/settings/feature/storage/a/a;->a:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4533
    :cond_4
    :goto_1
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move v6, v3

    move v7, v6

    :cond_6
    if-ne v0, p2, :cond_8

    if-ne v6, p2, :cond_7

    const v0, 0x7f1208a2

    .line 4550
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const v0, 0x7f1208a0

    .line 4552
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    if-le v0, p2, :cond_b

    if-ne v6, v0, :cond_9

    const v1, 0x7f1208a3

    .line 4556
    new-array v2, p2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    if-ne v7, v0, :cond_a

    const v1, 0x7f1208a1

    .line 4558
    new-array v2, p2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    const v1, 0x7f1208a4

    .line 4560
    new-array v2, p2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    const-string v0, ""

    .line 4564
    :goto_3
    new-instance v1, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$c;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$c;-><init>(Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;I)V

    .line 4565
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4566
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    .line 4567
    invoke-virtual {p1, p2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 4568
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 4570
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 4571
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 498
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->r:Landroid/app/Dialog;

    .line 499
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->r:Landroid/app/Dialog;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0015

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 345
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->q:Landroid/view/Menu;

    .line 346
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->s:Z

    iget-boolean v1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->t:Z

    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(ZZ)V

    .line 347
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->e:Lcom/coloros/settings/feature/storage/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4272
    iget-object v0, v0, Lcom/coloros/settings/feature/storage/b;->a:Lcom/coloros/settings/feature/storage/b$a;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/storage/b$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->i:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 248
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 366
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 381
    :sswitch_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b()V

    return v2

    .line 378
    :sswitch_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->b()V

    return v2

    .line 371
    :sswitch_2
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->a(Z)V

    .line 372
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->notifyDataSetChanged()V

    .line 373
    invoke-direct {p0, v2, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(ZZ)V

    .line 374
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(I)V

    .line 375
    invoke-direct {p0, v0, v2}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a(IZ)Lcom/color/support/widget/navigation/ColorNavigationView;

    return v2

    .line 384
    :sswitch_3
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->a()V

    return v2

    .line 368
    :sswitch_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->finish()V

    .line 389
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f0a011c -> :sswitch_3
        0x7f0a0236 -> :sswitch_2
        0x7f0a05de -> :sswitch_1
        0x7f0a05e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .line 219
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 220
    invoke-static {}, Lcom/coloros/settings/utils/al;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->removeDialog(I)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 352
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 353
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->c:Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity$d;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v2, 0x7f0a0236

    .line 354
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 355
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz v0, :cond_1

    const v0, 0x7f12181c

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 158
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->p:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getFitsSystemWindows()Z

    move-result v0

    const-string v1, "state_coordinator_Layout_fsw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 233
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 234
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->r:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->removeDialog(I)V

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/coloros/settings/feature/storage/OthersStorageViewActivity;->r:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
