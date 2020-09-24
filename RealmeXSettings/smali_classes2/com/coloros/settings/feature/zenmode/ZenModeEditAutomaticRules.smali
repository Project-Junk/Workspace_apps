.class public Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ZenModeEditAutomaticRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$b;,
        Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;
    }
.end annotation


# static fields
.field private static final C:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/animation/ObjectAnimator;

.field private B:Landroid/animation/ObjectAnimator;

.field protected a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/content/Context;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field private final g:Ljava/text/SimpleDateFormat;

.field private h:Lcolor/support/v7/widget/Toolbar;

.field private i:Landroid/view/View;

.field private j:Lcom/coloros/settings/widget/SettingsColorListView;

.field private k:Lcolor/support/design/widget/ColorAppBarLayout;

.field private l:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

.field private m:Lcom/coloros/settings/feature/zenmode/b;

.field private n:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/view/MenuItem;

.field private p:Landroid/view/MenuItem;

.field private q:Lcom/color/support/widget/navigation/ColorNavigationView;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 512
    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$3;

    invoke-direct {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$3;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->C:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->g:Ljava/text/SimpleDateFormat;

    const-string v0, ""

    .line 81
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->d:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    const/4 v0, 0x7

    .line 84
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->s:I

    const/16 v0, 0x12c

    .line 85
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->t:I

    const/16 v0, 0x96

    .line 86
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->u:I

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->v:F

    const v1, 0x3e99999a    # 0.3f

    .line 88
    iput v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->w:F

    .line 89
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->x:F

    const v0, 0x3dcccccd    # 0.1f

    .line 90
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->y:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 91
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->z:F

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)[Ljava/util/Map$Entry;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->n:[Ljava/util/Map$Entry;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;[Ljava/util/Map$Entry;)[Ljava/util/Map$Entry;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->n:[Ljava/util/Map$Entry;

    return-object p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)Lcom/coloros/settings/feature/zenmode/b;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->m:Lcom/coloros/settings/feature/zenmode/b;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)I
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    return v0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->l:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    return-object p0
.end method

.method static synthetic e()Ljava/util/List;
    .locals 1

    .line 2542
    sget-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2543
    sget-object v0, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    sput-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->f:Ljava/util/List;

    .line 2545
    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)Ljava/util/Set;
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->h()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    return v0
.end method

.method private f()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->q:Lcom/color/support/widget/navigation/ColorNavigationView;

    if-eqz v0, :cond_0

    .line 401
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->g()V

    .line 402
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->A:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->B:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)I
    .locals 2

    .line 64
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    return v0
.end method

.method private g()V
    .locals 11

    .line 409
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->A:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    const v2, 0x7f070143

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "translationY"

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->q:Lcom/color/support/widget/navigation/ColorNavigationView;

    new-array v6, v4, [F

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v3

    const/4 v7, 0x0

    aput v7, v6, v1

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->A:Landroid/animation/ObjectAnimator;

    .line 411
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->A:Landroid/animation/ObjectAnimator;

    iget v6, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->t:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 412
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->A:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/PathInterpolator;

    iget v7, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->w:F

    iget v8, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->x:F

    iget v9, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->y:F

    iget v10, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->z:F

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->B:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->q:Lcom/color/support/widget/navigation/ColorNavigationView;

    new-array v4, v4, [F

    iget v6, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->v:F

    aput v6, v4, v3

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v4, v1

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->B:Landroid/animation/ObjectAnimator;

    .line 416
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->B:Landroid/animation/ObjectAnimator;

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->u:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 417
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->B:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    iget v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->w:F

    iget v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->x:F

    iget v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->y:F

    iget v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->z:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 418
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->B:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$2;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method private h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    .line 508
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .locals 7

    .line 462
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 464
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    .line 465
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz p1, :cond_5

    .line 466
    array-length v0, p1

    if-lez v0, :cond_5

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 469
    :goto_0
    sget-object v4, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 470
    sget-object v4, Lcom/coloros/settings/feature/zenmode/ZenModeScheduleDaysSelection;->a:[I

    aget v4, v4, v3

    move v5, v2

    .line 471
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_2

    .line 472
    aget v6, p1, v5

    if-ne v4, v6, :cond_1

    const/4 v5, 0x7

    .line 473
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, " "

    .line 475
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_0
    iget-object v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 483
    array-length p1, p1

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->s:I

    if-ne p1, v1, :cond_4

    .line 484
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    const v0, 0x7f121b73

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 486
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 491
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    const v0, 0x7f121b74

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->o:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    const v2, 0x7f1208a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->o:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    const v2, 0x7f1208a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->p:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->p:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 7

    .line 258
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    if-nez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    const v2, 0x7f121b7b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100063

    iget v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final d()[Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 500
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->h()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a:Ljava/util/Set;

    .line 501
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 502
    sget-object v1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->C:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public finish()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 97
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d03bc

    .line 98
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->setContentView(I)V

    .line 99
    iput-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    .line 1350
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1351
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1352
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v1, v3, :cond_0

    .line 1353
    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1356
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1357
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1358
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f050065

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1359
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1362
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1365
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 2067
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 2069
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2070
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ne v3, v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 1366
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x2001

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    const v0, 0x7f0a070a

    .line 1369
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->h:Lcolor/support/v7/widget/Toolbar;

    .line 1370
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->h:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const v0, 0x7f0a020e

    .line 1372
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->i:Landroid/view/View;

    .line 1373
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1374
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const v0, 0x7f0a000b

    .line 1376
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->k:Lcolor/support/design/widget/ColorAppBarLayout;

    .line 1380
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->h:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v0, v4}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    .line 1381
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    const v3, 0x7f121b7b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->m:Lcom/coloros/settings/feature/zenmode/b;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const-string v1, "mChecked"

    .line 102
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    goto :goto_2

    :cond_6
    move-object p1, v0

    :goto_2
    if-nez p1, :cond_7

    .line 104
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b()V

    .line 2189
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    const-string v3, "position"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_a

    .line 2193
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2194
    iput v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    .line 2195
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c()V

    goto :goto_4

    .line 107
    :cond_7
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    if-eqz v1, :cond_a

    .line 108
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 109
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 113
    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    goto :goto_3

    .line 116
    :cond_9
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c()V

    :cond_a
    :goto_4
    const p1, 0x7f0a07d1

    .line 120
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 121
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ag(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/view/View;I)V

    const p1, 0x7f0a0599

    .line 122
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/SettingsColorListView;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->j:Lcom/coloros/settings/widget/SettingsColorListView;

    .line 123
    new-instance p1, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->d()[Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p1, p0, p0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;Landroid/content/Context;[Ljava/util/Map$Entry;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->l:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    .line 124
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->j:Lcom/coloros/settings/widget/SettingsColorListView;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->l:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/SettingsColorListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->j:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/SettingsColorListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->j:Lcom/coloros/settings/widget/SettingsColorListView;

    invoke-virtual {p1, v4}, Lcom/coloros/settings/widget/SettingsColorListView;->setNestedScrollingEnabled(Z)V

    const p1, 0x7f0a0598

    .line 129
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/navigation/ColorNavigationView;

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->q:Lcom/color/support/widget/navigation/ColorNavigationView;

    .line 130
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->q:Lcom/color/support/widget/navigation/ColorNavigationView;

    invoke-virtual {p1}, Lcom/color/support/widget/navigation/ColorNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v0, 0x7f0a01da

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->p:Landroid/view/MenuItem;

    .line 131
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->p:Landroid/view/MenuItem;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    if-eqz v0, :cond_b

    move v2, v4

    :cond_b
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 132
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->q:Lcom/color/support/widget/navigation/ColorNavigationView;

    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$1;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;)V

    invoke-virtual {p1, v0}, Lcom/color/support/widget/navigation/ColorNavigationView;->setOnNavigationItemSelectedListener(Lcom/color/support/widget/navigation/ColorNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a059a

    .line 216
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->o:Landroid/view/MenuItem;

    .line 219
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->o:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a()V

    .line 223
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 438
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->f()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0597

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const v1, 0x7f0a059a

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->o:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    const v3, 0x7f1208a6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    .line 235
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c()V

    goto :goto_2

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->o:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c:Landroid/content/Context;

    const v3, 0x7f1208a8

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 237
    :goto_1
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 238
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    :cond_3
    iput v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->r:I

    .line 241
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->c()V

    .line 243
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->a()V

    .line 244
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->l:Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules$a;->notifyDataSetChanged()V

    goto :goto_3

    .line 248
    :cond_5
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->f()V

    .line 249
    invoke-virtual {p0, v2, v2}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->overridePendingTransition(II)V

    .line 254
    :goto_3
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 165
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 2391
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->q:Lcom/color/support/widget/navigation/ColorNavigationView;

    if-eqz v0, :cond_0

    .line 2392
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->g()V

    .line 2393
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->A:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 2394
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 159
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeEditAutomaticRules;->b:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "mChecked"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
