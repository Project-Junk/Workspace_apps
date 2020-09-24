.class public Landroidx/appcompat/app/l;
.super Landroidx/appcompat/app/a;

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/l$a;
    }
.end annotation


# static fields
.field static final synthetic s:Z

.field private static final t:Landroid/view/animation/Interpolator;

.field private static final u:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Z

.field a:Landroid/content/Context;

.field b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field c:Landroidx/appcompat/widget/ActionBarContainer;

.field d:Landroidx/appcompat/widget/ac;

.field e:Landroidx/appcompat/widget/ActionBarContextView;

.field f:Landroid/view/View;

.field g:Landroidx/appcompat/widget/ao;

.field h:Landroidx/appcompat/app/l$a;

.field i:Landroidx/appcompat/view/b;

.field j:Landroidx/appcompat/view/b$a;

.field k:Z

.field l:Z

.field m:Z

.field n:Landroidx/appcompat/view/h;

.field o:Z

.field final p:Landroidx/core/f/y;

.field final q:Landroidx/core/f/y;

.field final r:Landroidx/core/f/aa;

.field private v:Landroid/content/Context;

.field private w:Landroid/app/Activity;

.field private x:Landroid/app/Dialog;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroidx/appcompat/app/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroidx/appcompat/app/l;->s:Z

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/l;->t:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/l;->u:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->y:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/l;->z:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->C:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/l;->E:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->k:Z

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->G:Z

    new-instance v0, Landroidx/appcompat/app/l$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$1;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->p:Landroidx/core/f/y;

    new-instance v0, Landroidx/appcompat/app/l$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$2;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->q:Landroidx/core/f/y;

    new-instance v0, Landroidx/appcompat/app/l$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$3;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->r:Landroidx/core/f/aa;

    iput-object p1, p0, Landroidx/appcompat/app/l;->w:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/l;->a(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->y:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/app/l;->z:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/l;->C:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/l;->E:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->k:Z

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->G:Z

    new-instance v0, Landroidx/appcompat/app/l$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$1;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->p:Landroidx/core/f/y;

    new-instance v0, Landroidx/appcompat/app/l$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$2;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->q:Landroidx/core/f/y;

    new-instance v0, Landroidx/appcompat/app/l$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/l$3;-><init>(Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/l;->r:Landroidx/core/f/aa;

    iput-object p1, p0, Landroidx/appcompat/app/l;->x:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/l;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 5

    sget v0, Landroidx/appcompat/a$f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$a;)V

    :cond_0
    sget v0, Landroidx/appcompat/a$f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->b(Landroid/view/View;)Landroidx/appcompat/widget/ac;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    sget v0, Landroidx/appcompat/a$f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    sget v0, Landroidx/appcompat/a$f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object p1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p1}, Landroidx/appcompat/widget/ac;->b()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    iget-object p1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p1}, Landroidx/appcompat/widget/ac;->o()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->A:Z

    :cond_2
    iget-object v2, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/a;->f()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v0

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->a(Z)V

    invoke-virtual {v2}, Landroidx/appcompat/view/a;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/l;->k(Z)V

    iget-object p1, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroidx/appcompat/a$j;->ActionBar:[I

    sget v4, Landroidx/appcompat/a$a;->actionBarStyle:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v2, Landroidx/appcompat/a$j;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/l;->b(Z)V

    :cond_5
    sget v0, Landroidx/appcompat/a$j;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/l;->a(F)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/view/View;)Landroidx/appcompat/widget/ac;
    .locals 2

    instance-of p0, p1, Landroidx/appcompat/widget/ac;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/appcompat/widget/ac;

    return-object p1

    :cond_0
    instance-of p0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p0, :cond_1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/ac;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "null"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private k(Z)V
    .locals 4

    iput-boolean p1, p0, Landroidx/appcompat/app/l;->D:Z

    iget-boolean p1, p0, Landroidx/appcompat/app/l;->D:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/ac;->a(Landroidx/appcompat/widget/ao;)V

    iget-object p1, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ao;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ao;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ao;)V

    iget-object p1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    iget-object v0, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ao;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/ac;->a(Landroidx/appcompat/widget/ao;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/l;->i()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ao;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ao;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ao;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroidx/core/f/t;->n(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/l;->g:Landroidx/appcompat/widget/ao;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ao;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    iget-boolean v3, p0, Landroidx/appcompat/app/l;->D:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/ac;->a(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean p0, p0, Landroidx/appcompat/app/l;->D:Z

    if-nez p0, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private l(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->l:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/l;->m:Z

    iget-boolean v2, p0, Landroidx/appcompat/app/l;->F:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/l;->a(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->G:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->G:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->h(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/app/l;->G:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->G:Z

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->i(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private n()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->F:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->F:Z

    iget-object v1, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->l(Z)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->F:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->F:Z

    iget-object v1, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->l(Z)V

    :cond_1
    return-void
.end method

.method private p()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p0}, Landroidx/core/f/t;->s(Landroid/view/View;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p0}, Landroidx/appcompat/widget/ac;->o()I

    move-result p0

    return p0
.end method

.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    invoke-virtual {v0}, Landroidx/appcompat/app/l$a;->c()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->c()V

    new-instance v0, Landroidx/appcompat/app/l$a;

    iget-object v1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/l$a;-><init>(Landroidx/appcompat/app/l;Landroid/content/Context;Landroidx/appcompat/view/b$a;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/l$a;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v0, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    invoke-virtual {v0}, Landroidx/appcompat/app/l$a;->d()V

    iget-object p1, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/view/b;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->j(Z)V

    iget-object p0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(F)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p0, p1}, Landroidx/core/f/t;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/app/l;->E:I

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->o()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/app/l;->A:Z

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ac;->c(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/a;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/l;->k(Z)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ac;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ac;->b(Z)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    invoke-virtual {p0}, Landroidx/appcompat/app/l$a;->b()Landroid/view/Menu;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {p0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public b()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/l;->v:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/appcompat/a$a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/l;->v:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/l;->v:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/app/l;->v:Landroid/content/Context;

    return-object p0
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/app/l;->o:Z

    iget-object p0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->A:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/l;->f(Z)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/app/l;->H:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    invoke-virtual {p0}, Landroidx/appcompat/view/h;->c()V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->B:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/l;->B:Z

    iget-object v0, p0, Landroidx/appcompat/app/l;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/appcompat/app/l;->C:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/a$b;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/a$b;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/l;->a(II)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {v0}, Landroidx/appcompat/widget/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p0}, Landroidx/appcompat/widget/ac;->d()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/app/l;->k:Z

    return-void
.end method

.method h()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Landroidx/appcompat/view/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->j:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/view/b;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/view/b;

    iput-object v0, p0, Landroidx/appcompat/app/l;->j:Landroidx/appcompat/view/b$a;

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Landroidx/appcompat/app/l;->E:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->H:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iget-object v2, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    new-instance p1, Landroidx/appcompat/view/h;

    invoke-direct {p1}, Landroidx/appcompat/view/h;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Landroidx/core/f/t;->k(Landroid/view/View;)Landroidx/core/f/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/f/x;->b(F)Landroidx/core/f/x;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/app/l;->r:Landroidx/core/f/aa;

    invoke-virtual {v2, v3}, Landroidx/core/f/x;->a(Landroidx/core/f/aa;)Landroidx/core/f/x;

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/h;->a(Landroidx/core/f/x;)Landroidx/appcompat/view/h;

    iget-boolean v2, p0, Landroidx/appcompat/app/l;->k:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/f/t;->k(Landroid/view/View;)Landroidx/core/f/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/f/x;->b(F)Landroidx/core/f/x;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/f/x;)Landroidx/appcompat/view/h;

    :cond_3
    sget-object v0, Landroidx/appcompat/app/l;->u:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/h;->a(J)Landroidx/appcompat/view/h;

    iget-object v0, p0, Landroidx/appcompat/app/l;->q:Landroidx/core/f/y;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/f/y;)Landroidx/appcompat/view/h;

    iput-object p1, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    invoke-virtual {p1}, Landroidx/appcompat/view/h;->a()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    iget-object p1, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    iget-boolean p1, p0, Landroidx/appcompat/app/l;->k:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    iget-object p1, p0, Landroidx/appcompat/app/l;->q:Landroidx/core/f/y;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/f/y;->b(Landroid/view/View;)V

    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_6

    iget-object p0, p0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {p0}, Landroidx/core/f/t;->n(Landroid/view/View;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public i()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p0}, Landroidx/appcompat/widget/ac;->p()I

    move-result p0

    return p0
.end method

.method public i(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()V

    :cond_0
    iget v0, p0, Landroidx/appcompat/app/l;->E:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->H:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v0, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Landroidx/appcompat/view/h;

    invoke-direct {v0}, Landroidx/appcompat/view/h;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iget-object v3, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/l;->c:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/f/t;->k(Landroid/view/View;)Landroidx/core/f/x;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/f/x;->b(F)Landroidx/core/f/x;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/app/l;->r:Landroidx/core/f/aa;

    invoke-virtual {p1, v1}, Landroidx/core/f/x;->a(Landroidx/core/f/aa;)Landroidx/core/f/x;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/f/x;)Landroidx/appcompat/view/h;

    iget-boolean p1, p0, Landroidx/appcompat/app/l;->k:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/l;->f:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/f/t;->k(Landroid/view/View;)Landroidx/core/f/x;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/f/x;->b(F)Landroidx/core/f/x;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/f/x;)Landroidx/appcompat/view/h;

    :cond_3
    sget-object p1, Landroidx/appcompat/app/l;->t:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/h;->a(J)Landroidx/appcompat/view/h;

    iget-object p1, p0, Landroidx/appcompat/app/l;->p:Landroidx/core/f/y;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/f/y;)Landroidx/appcompat/view/h;

    iput-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/appcompat/app/l;->p:Landroidx/core/f/y;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/core/f/y;->b(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public j()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->m:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->l(Z)V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/appcompat/app/l;->n()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/l;->o()V

    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/l;->p()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p1, v2, v6, v7}, Landroidx/appcompat/widget/ac;->a(IJ)Landroidx/core/f/x;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Landroidx/core/f/x;

    move-result-object p0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p1, v3, v4, v5}, Landroidx/appcompat/widget/ac;->a(IJ)Landroidx/core/f/x;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v1, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Landroidx/core/f/x;

    move-result-object p0

    :goto_1
    new-instance v0, Landroidx/appcompat/view/h;

    invoke-direct {v0}, Landroidx/appcompat/view/h;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/f/x;Landroidx/core/f/x;)Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p1, v2}, Landroidx/appcompat/widget/ac;->d(I)V

    iget-object p0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/ac;

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/ac;->d(I)V

    iget-object p0, p0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public k()V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/app/l;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/l;->m:Z

    invoke-direct {p0, v0}, Landroidx/appcompat/app/l;->l(Z)V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/l;->n:Landroidx/appcompat/view/h;

    :cond_0
    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method
