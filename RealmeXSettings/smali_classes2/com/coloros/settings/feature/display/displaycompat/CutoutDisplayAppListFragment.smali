.class public Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;
.super Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;
.source "CutoutDisplayAppListFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;,
        Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;,
        Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/coloros/settings/a/a;

.field private c:Lcom/color/util/ColorDisplayCompatUtils;

.field private d:Landroidx/preference/PreferenceScreen;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/Activity;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroidx/recyclerview/widget/RecyclerView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/oppo/support/widget/OppoTouchSearchView;

.field private o:Landroid/view/View;

.field private p:Z

.field private q:I

.field private r:Landroid/widget/ImageView;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    .line 92
    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->d:Landroidx/preference/PreferenceScreen;

    .line 100
    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->l:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->q:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->s:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->t:Ljava/util/List;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->u:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->v:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->w:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 370
    iget-object v1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 374
    :cond_0
    iget v2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a:I

    if-nez v2, :cond_1

    .line 375
    invoke-virtual {v1}, Lcom/color/util/ColorDisplayCompatUtils;->getDisplayCompatData()Lcom/color/util/ColorDisplayCompatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/util/ColorDisplayCompatData;->getInstalledThirdPartyAppList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {v1}, Lcom/color/util/ColorDisplayCompatUtils;->getDisplayCompatData()Lcom/color/util/ColorDisplayCompatData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/util/ColorDisplayCompatData;->getInstalledCompatList()Ljava/util/List;

    move-result-object v1

    .line 379
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 380
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    :try_start_0
    iget v3, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {v3, v2}, Lcom/color/util/ColorDisplayCompatUtils;->inWhitePkgList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    .line 383
    invoke-virtual {v3, v2}, Lcom/color/util/ColorDisplayCompatUtils;->inBlackPkgList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 386
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayCutout"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)Ljava/util/List;
    .locals 4

    .line 4348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4349
    iget-object v1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->e:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 4353
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 4354
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 4356
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 4358
    new-instance v3, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;

    invoke-direct {v3, p0, v2}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;-><init>(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4363
    :cond_2
    sget-object p0, Lcom/coloros/settings/feature/a/a;->b:Lcom/coloros/settings/feature/a/a;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->g:Landroid/view/View;

    const v1, 0x7f0a0713

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->o:Landroid/view/View;

    .line 552
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->g:Landroid/view/View;

    const v1, 0x7f0a0714

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/support/widget/OppoTouchSearchView;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->n:Lcom/oppo/support/widget/OppoTouchSearchView;

    .line 553
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->n:Lcom/oppo/support/widget/OppoTouchSearchView;

    if-eqz v0, :cond_0

    .line 554
    new-instance v1, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$1;-><init>(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)V

    invoke-virtual {v0, v1}, Lcom/oppo/support/widget/OppoTouchSearchView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;Z)V
    .locals 0

    .line 4342
    iget-object p0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->j:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 4343
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->e:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    .line 205
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 529
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->p:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->n:Lcom/oppo/support/widget/OppoTouchSearchView;

    if-eqz p1, :cond_0

    if-eqz p1, :cond_0

    .line 3543
    :try_start_0
    invoke-virtual {p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->closing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3545
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisplayCutout"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 446
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->k:Landroid/graphics/drawable/Drawable;

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/ColorPackageManager;->getColorPackageManager(Landroid/content/Context;)Landroid/content/pm/ColorPackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/ColorPackageManager;->getApplicationIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 449
    iget p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->q:I

    iget v1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->q:I

    .line 1296
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1297
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ne v2, p1, :cond_0

    if-ne v3, v1, :cond_0

    goto :goto_0

    .line 1306
    :cond_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 1307
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1308
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1310
    :cond_1
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1311
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    .line 1312
    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1313
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x1

    .line 1315
    invoke-static {v4, p1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1316
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :goto_0
    return-object v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)V
    .locals 6

    .line 5231
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->n:Lcom/oppo/support/widget/OppoTouchSearchView;

    if-eqz v0, :cond_0

    .line 5232
    new-instance v0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->m:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$a;-><init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;)V

    .line 5233
    iget-object v1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->n:Lcom/oppo/support/widget/OppoTouchSearchView;

    invoke-virtual {v1, v0}, Lcom/oppo/support/widget/OppoTouchSearchView;->setTouchSearchActionListener(Lcom/oppo/support/widget/OppoTouchSearchView$TouchSearchActionListener;)V

    .line 5320
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->h:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->o:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 5321
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x8

    if-gtz v0, :cond_1

    .line 5322
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5323
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5333
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5334
    instance-of v2, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_3

    .line 5335
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 5336
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 5337
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_1

    .line 5326
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5327
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->o:Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->f:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    const-string v0, "screen_compat_apps"

    .line 5236
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->d:Landroidx/preference/PreferenceScreen;

    .line 5237
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->d:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_8

    .line 5238
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 5239
    iget v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a:I

    if-nez v0, :cond_6

    .line 6248
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;

    .line 6431
    iget-object v3, v2, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->a:Landroid/content/pm/PackageInfo;

    .line 6250
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 6252
    new-instance v4, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    iget-object v5, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;-><init>(Landroid/content/Context;)V

    .line 6253
    invoke-virtual {v2}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 7411
    iget-object v5, v2, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->b:Landroid/graphics/drawable/Drawable;

    .line 6254
    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f0d00a7

    .line 6255
    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setLayoutResource(I)V

    const v5, 0x7f0d00c3

    .line 6256
    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setWidgetLayoutResource(I)V

    .line 6257
    invoke-virtual {v4, v3}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setKey(Ljava/lang/String;)V

    .line 6258
    invoke-virtual {v4, v1}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setPersistent(Z)V

    .line 6259
    invoke-virtual {v2}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    const v2, 0x7f030065

    .line 6260
    invoke-virtual {v4, v2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setEntries(I)V

    const v2, 0x7f030066

    .line 6261
    invoke-virtual {v4, v2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setEntryValues(I)V

    .line 6262
    iget-object v2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {v2, v3}, Lcom/color/util/ColorDisplayCompatUtils;->getAppCutoutMode(Ljava/lang/String;)I

    move-result v2

    .line 6263
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setValue(Ljava/lang/String;)V

    .line 6264
    invoke-virtual {v4}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v2, v3, v2

    invoke-virtual {v4, v2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Ljava/lang/CharSequence;)V

    .line 6265
    invoke-virtual {v4, p0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 6266
    iget-object v2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->d:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_5
    return-void

    .line 8272
    :cond_6
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;

    .line 8431
    iget-object v3, v2, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->a:Landroid/content/pm/PackageInfo;

    .line 8274
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 8276
    new-instance v4, Landroidx/preference/SwitchPreference;

    iget-object v5, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->e:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 8277
    invoke-virtual {v2}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 9411
    iget-object v2, v2, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$c;->b:Landroid/graphics/drawable/Drawable;

    .line 8278
    invoke-virtual {v4, v2}, Landroidx/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 8280
    invoke-virtual {v4, v3}, Landroidx/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 8281
    invoke-virtual {v4, v1}, Landroidx/preference/SwitchPreference;->setPersistent(Z)V

    .line 8282
    iget-object v2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {v2, v3}, Lcom/color/util/ColorDisplayCompatUtils;->getAppCutoutMode(Ljava/lang/String;)I

    .line 8283
    iget-object v2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {v2, v3}, Lcom/color/util/ColorDisplayCompatUtils;->shouldCompatAdjustForPkg(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 8284
    invoke-virtual {v4, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 8285
    iget-object v2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->d:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_8
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->k:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)Landroid/app/Activity;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->f:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic lambda$MkkRkBv1yqcuR2opI2gAO7yfvv8(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 523
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 458
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 459
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->e:Landroid/content/Context;

    .line 460
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->f:Landroid/app/Activity;

    .line 461
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->f:Landroid/app/Activity;

    const v0, 0x7f13040b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 462
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->f:Landroid/app/Activity;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 463
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->f:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 464
    new-instance p1, Lcom/coloros/settings/a/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/coloros/settings/a/a;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->b:Lcom/coloros/settings/a/a;

    .line 465
    invoke-static {}, Lcom/color/util/ColorDisplayCompatUtils;->getInstance()Lcom/color/util/ColorDisplayCompatUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    .line 466
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatUtils;->initData()V

    .line 468
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatUtils;->getDisplayCompatData()Lcom/color/util/ColorDisplayCompatData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatData;->getLocalCutoutDefaultList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->u:Ljava/util/List;

    .line 469
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatUtils;->getDisplayCompatData()Lcom/color/util/ColorDisplayCompatData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatData;->getLocalCutoutShowList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->s:Ljava/util/List;

    .line 470
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatUtils;->getDisplayCompatData()Lcom/color/util/ColorDisplayCompatData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatData;->getLocalCutoutHideList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->t:Ljava/util/List;

    .line 471
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatUtils;->getDisplayCompatData()Lcom/color/util/ColorDisplayCompatData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatData;->getLocalCompatList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->v:Ljava/util/List;

    .line 472
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->c:Lcom/color/util/ColorDisplayCompatUtils;

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatUtils;->getDisplayCompatData()Lcom/color/util/ColorDisplayCompatData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/color/util/ColorDisplayCompatData;->getLocalFullScreenList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->w:Ljava/util/List;

    .line 474
    iget-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070350

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->q:I

    const p1, 0x7f150090

    .line 476
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->addPreferencesFromResource(I)V

    .line 478
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "title_string_id"

    .line 480
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 481
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    const v2, 0x7f120688

    if-ne p1, v2, :cond_0

    .line 483
    iput v1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a:I

    return-void

    :cond_0
    const v1, 0x7f120689

    if-ne p1, v1, :cond_1

    .line 485
    iput v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a:I

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->f:Landroid/app/Activity;

    const v1, 0x7f13040b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 501
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 502
    iput-object p1, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->g:Landroid/view/View;

    const p2, 0x7f0a0246

    .line 503
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->h:Landroid/view/View;

    const p2, 0x7f0a0248

    .line 504
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->r:Landroid/widget/ImageView;

    const p2, 0x7f0a020e

    .line 505
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 506
    iget-object p3, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->f:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f050063

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x8

    .line 507
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->i:Landroidx/recyclerview/widget/RecyclerView;

    const p2, 0x7f0a03b6

    .line 510
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->j:Landroid/widget/LinearLayout;

    const-string p2, "category_compat_apps"

    .line 511
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceScreen;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->d:Landroidx/preference/PreferenceScreen;

    .line 513
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->e:Landroid/content/Context;

    const p3, 0x1080093

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 514
    iget-object p3, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->e:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/af;->b(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->k:Landroid/graphics/drawable/Drawable;

    .line 1527
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->i:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    .line 1528
    new-instance p3, Lcom/coloros/settings/feature/display/displaycompat/-$$Lambda$CutoutDisplayAppListFragment$MkkRkBv1yqcuR2opI2gAO7yfvv8;

    invoke-direct {p3, p0}, Lcom/coloros/settings/feature/display/displaycompat/-$$Lambda$CutoutDisplayAppListFragment$MkkRkBv1yqcuR2opI2gAO7yfvv8;-><init>(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 517
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->l:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->l:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;->cancel(Z)Z

    .line 605
    :cond_0
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 493
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :cond_1
    invoke-super {p0, p1}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 595
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onPause()V

    .line 596
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->b:Lcom/coloros/settings/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->c()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 123
    iget v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a:I

    const-string v1, ", "

    const/4 v2, 0x1

    const-string v3, "DisplayCutout"

    if-nez v0, :cond_7

    .line 124
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    if-eqz v0, :cond_9

    .line 125
    move-object v0, p1

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;

    .line 126
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    .line 127
    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    if-ltz p2, :cond_0

    .line 128
    array-length v5, v4

    if-ge p2, v5, :cond_0

    .line 129
    aget-object v4, v4, p2

    invoke-virtual {v0, v4}, Lcom/coloros/settings/widget/preference/SettingsSingleSelectListPreference;->a(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1143
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "refreshCutoutMode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 1160
    :cond_1
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->u:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1161
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->s:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1162
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->t:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1163
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->t:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1153
    :cond_2
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->u:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1154
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->s:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1155
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->s:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    :cond_3
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->t:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1146
    :cond_4
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->u:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1147
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->u:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    :cond_5
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->s:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1150
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->t:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1169
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->u:Ljava/util/List;

    const-string v0, "key_display_nonimmersive_local_apps"

    invoke-direct {p0, p2, v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 1170
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->s:Ljava/util/List;

    const-string v0, "key_display_immersive_local_apps"

    invoke-direct {p0, p2, v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 1171
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->t:Ljava/util/List;

    const-string v0, "cutout_hide_app_list"

    invoke-direct {p0, p2, v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 1173
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mLocalDefaultModeList: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->u:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mLocalShowModeList: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->s:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mLocalHideModeList: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->t:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-ne v0, v2, :cond_9

    .line 135
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 136
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1179
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "refreshCompatMode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    .line 1181
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->w:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->v:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1184
    :cond_8
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->w:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1185
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->v:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    :goto_1
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->v:Ljava/util/List;

    const-string v0, "key_display_compat_local_apps_v1"

    invoke-direct {p0, p2, v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 1188
    iget-object p2, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->w:Ljava/util/List;

    const-string v0, "key_display_fullscreen_local_apps_v1"

    invoke-direct {p0, p2, v0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 1190
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mLocalCompatList: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->v:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mLocalFullscreenList: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->w:Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return v2
.end method

.method public onResume()V
    .locals 2

    .line 579
    invoke-super {p0}, Lcom/coloros/settings/SettingsNoSearchMenuPreferenceFragment;->onResume()V

    .line 580
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->f:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 581
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->b:Lcom/coloros/settings/a/a;

    .line 2089
    iget-object v0, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->b:Lcom/coloros/settings/a/a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 3085
    iput-object v1, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->o:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->n:Lcom/oppo/support/widget/OppoTouchSearchView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->h:Landroid/view/View;

    if-nez v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->g:Landroid/view/View;

    const v1, 0x7f0a0246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->h:Landroid/view/View;

    .line 586
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->a()V

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->b:Lcom/coloros/settings/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->b()V

    .line 589
    new-instance v0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;-><init>(Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->l:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;

    .line 590
    iget-object v0, p0, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment;->l:Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/display/displaycompat/CutoutDisplayAppListFragment$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
