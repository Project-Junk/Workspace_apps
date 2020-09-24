.class final Landroidx/fragment/app/j;
.super Landroidx/fragment/app/i;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/j$b;,
        Landroidx/fragment/app/j$a;,
        Landroidx/fragment/app/j$g;,
        Landroidx/fragment/app/j$f;,
        Landroidx/fragment/app/j$e;,
        Landroidx/fragment/app/j$d;,
        Landroidx/fragment/app/j$c;
    }
.end annotation


# static fields
.field static final D:Landroid/view/animation/Interpolator;

.field static final E:Landroid/view/animation/Interpolator;

.field static b:Z = false


# instance fields
.field A:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/j$g;",
            ">;"
        }
    .end annotation
.end field

.field C:Ljava/lang/Runnable;

.field private F:Landroidx/activity/OnBackPressedDispatcher;

.field private final G:Landroidx/activity/b;

.field private final H:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/j$c;",
            ">;"
        }
    .end annotation
.end field

.field private I:Landroidx/fragment/app/l;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/j$e;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:I

.field final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/d;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/d;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/d;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/i$b;",
            ">;"
        }
    .end annotation
.end field

.field m:I

.field n:Landroidx/fragment/app/h;

.field o:Landroidx/fragment/app/e;

.field p:Landroidx/fragment/app/d;

.field q:Landroidx/fragment/app/d;

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/d;",
            ">;"
        }
    .end annotation
.end field

.field z:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/j;->D:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/j;->E:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/i;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/j;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    new-instance v1, Landroidx/fragment/app/j$1;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/j$1;-><init>(Landroidx/fragment/app/j;Z)V

    iput-object v1, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/b;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    new-instance v0, Landroidx/fragment/app/j$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/j$2;-><init>(Landroidx/fragment/app/j;)V

    iput-object v0, p0, Landroidx/fragment/app/j;->C:Ljava/lang/Runnable;

    return-void
.end method

.method private D()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/b;

    invoke-virtual {p0, v1}, Landroidx/activity/b;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/b;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->d()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {p0, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/activity/b;->a(Z)V

    return-void
.end method

.method private E()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/j;->j()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private F()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    iget-object v0, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$g;

    invoke-virtual {v0}, Landroidx/fragment/app/j$g;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private H()V
    .locals 8

    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/d;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/fragment/app/d;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroidx/fragment/app/d;->getStateAfterAnimating()I

    move-result v4

    invoke-virtual {v3}, Landroidx/fragment/app/d;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroidx/fragment/app/d;->setAnimatingAway(Landroid/view/View;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IIIZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/d;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Landroidx/fragment/app/d;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private I()V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/b/b;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/d;",
            ">;)I"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_0
    if-lt v0, p3, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2}, Landroidx/fragment/app/a;->e()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, p1, v4, p4}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_4

    iget-object v4, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    :cond_1
    new-instance v4, Landroidx/fragment/app/j$g;

    invoke-direct {v4, v2, v3}, Landroidx/fragment/app/j$g;-><init>(Landroidx/fragment/app/a;Z)V

    iget-object v6, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Landroidx/fragment/app/a;->a(Landroidx/fragment/app/d$c;)V

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v5}, Landroidx/fragment/app/a;->b(Z)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    invoke-direct {p0, p5}, Landroidx/fragment/app/j;->b(Landroidx/b/b;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method static a(FF)Landroidx/fragment/app/j$a;
    .locals 1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object p0, Landroidx/fragment/app/j;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0xdc

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance p0, Landroidx/fragment/app/j$a;

    invoke-direct {p0, v0}, Landroidx/fragment/app/j$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method static a(FFFF)Landroidx/fragment/app/j$a;
    .locals 11

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v1

    move v3, p0

    move v4, p1

    move v5, p0

    move v6, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object p0, Landroidx/fragment/app/j;->D:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0xdc

    invoke-virtual {v1, p0, p1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object p2, Landroidx/fragment/app/j;->E:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p0, Landroidx/fragment/app/j$a;

    invoke-direct {p0, v0}, Landroidx/fragment/app/j$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method private a(Landroidx/b/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/d;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/b/b;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/b/b;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    iget-boolean v2, v1, Landroidx/fragment/app/d;->mAdded:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/d;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, v1, Landroidx/fragment/app/d;->mPostponedAlpha:F

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/fragment/app/d;Landroidx/fragment/app/j$a;I)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iget-object v1, p1, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroidx/fragment/app/d;->setStateAfterAnimating(I)V

    iget-object p3, p2, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    if-eqz p3, :cond_0

    new-instance p3, Landroidx/fragment/app/j$b;

    iget-object p2, p2, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    invoke-direct {p3, p2, v1, v0}, Landroidx/fragment/app/j$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object p2, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/d;->setAnimatingAway(Landroid/view/View;)V

    new-instance p2, Landroidx/fragment/app/j$3;

    invoke-direct {p2, p0, v1, p1}, Landroidx/fragment/app/j$3;-><init>(Landroidx/fragment/app/j;Landroid/view/ViewGroup;Landroidx/fragment/app/d;)V

    invoke-virtual {p3, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object p3, p2, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    iget-object p2, p2, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/d;->setAnimator(Landroid/animation/Animator;)V

    new-instance p2, Landroidx/fragment/app/j$4;

    invoke-direct {p2, p0, v1, v0, p1}, Landroidx/fragment/app/j$4;-><init>(Landroidx/fragment/app/j;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/d;)V

    invoke-virtual {p3, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 4

    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroidx/core/e/b;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroidx/core/e/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    const-string v0, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v1, v2}, Landroidx/fragment/app/h;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FragmentManager"

    const-string v1, "Failed dumping state"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v1, v2}, Landroidx/fragment/app/j;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    throw p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_5

    iget-object v3, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/j$g;

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    iget-boolean v5, v3, Landroidx/fragment/app/j$g;->a:Z

    if-nez v5, :cond_1

    iget-object v5, v3, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_2
    invoke-virtual {v3}, Landroidx/fragment/app/j$g;->e()V

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/j$g;->c()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    iget-object v5, v3, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_3

    iget-boolean v5, v3, Landroidx/fragment/app/j$g;->a:Z

    if-nez v5, :cond_3

    iget-object v5, v3, Landroidx/fragment/app/j$g;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_3

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/j$g;->d()V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    iget-boolean v11, v0, Landroidx/fragment/app/a;->t:Z

    iget-object v0, v6, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, v6, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v0, v6, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    iget-object v1, v6, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/j;->A()Landroidx/fragment/app/d;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    move v12, v1

    move v0, v9

    :goto_1
    const/4 v13, 0x1

    if-ge v0, v10, :cond_4

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v6, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/a;->a(Ljava/util/ArrayList;Landroidx/fragment/app/d;)Landroidx/fragment/app/d;

    move-result-object v2

    goto :goto_2

    :cond_1
    iget-object v4, v6, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/a;->b(Ljava/util/ArrayList;Landroidx/fragment/app/d;)Landroidx/fragment/app/d;

    move-result-object v2

    :goto_2
    if-nez v12, :cond_3

    iget-boolean v3, v3, Landroidx/fragment/app/a;->k:Z

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    move v12, v1

    goto :goto_4

    :cond_3
    :goto_3
    move v12, v13

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v6, Landroidx/fragment/app/j;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_5

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/j;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_5
    invoke-static/range {p1 .. p4}, Landroidx/fragment/app/j;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz v11, :cond_6

    new-instance v14, Landroidx/b/b;

    invoke-direct {v14}, Landroidx/b/b;-><init>()V

    invoke-direct {p0, v14}, Landroidx/fragment/app/j;->b(Landroidx/b/b;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/b/b;)I

    move-result v0

    invoke-direct {p0, v14}, Landroidx/fragment/app/j;->a(Landroidx/b/b;)V

    move v4, v0

    goto :goto_5

    :cond_6
    move v4, v10

    :goto_5
    if-eq v4, v9, :cond_7

    if-eqz v11, :cond_7

    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/j;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    iget v0, v6, Landroidx/fragment/app/j;->m:I

    invoke-virtual {p0, v0, v13}, Landroidx/fragment/app/j;->a(IZ)V

    :cond_7
    :goto_6
    if-ge v9, v10, :cond_9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v0, Landroidx/fragment/app/a;->c:I

    if-ltz v1, :cond_8

    iget v1, v0, Landroidx/fragment/app/a;->c:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/j;->c(I)V

    const/4 v1, -0x1

    iput v1, v0, Landroidx/fragment/app/a;->c:I

    :cond_8
    invoke-virtual {v0}, Landroidx/fragment/app/a;->a()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    if-eqz v12, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/j;->n()V

    :cond_a
    return-void
.end method

.method private a(Ljava/lang/String;II)Z
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/j;->l()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->c(Z)V

    iget-object v1, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    invoke-virtual {v1}, Landroidx/fragment/app/d;->getChildFragmentManager()Landroidx/fragment/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/i;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    iget-object p3, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/j;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroidx/fragment/app/j;->F()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/j;->F()V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/j;->D()V

    invoke-virtual {p0}, Landroidx/fragment/app/j;->m()V

    invoke-direct {p0}, Landroidx/fragment/app/j;->I()V

    return p1
.end method

.method public static b(IZ)I
    .locals 1

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p0, 0x5

    goto :goto_0

    :cond_3
    const/4 p0, 0x6

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method private b(Landroidx/b/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/b<",
            "Landroidx/fragment/app/d;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v1, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/fragment/app/d;

    iget v2, v9, Landroidx/fragment/app/d;->mState:I

    if-ge v2, v0, :cond_1

    invoke-virtual {v9}, Landroidx/fragment/app/d;->getNextAnim()I

    move-result v5

    invoke-virtual {v9}, Landroidx/fragment/app/d;->getNextTransition()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IIIZ)V

    iget-object v2, v9, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Landroidx/fragment/app/d;->mHidden:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Landroidx/fragment/app/d;->mIsNewlyAdded:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1, v9}, Landroidx/b/b;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->t:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/a;->t:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error with the back stack records"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    return-void
.end method

.method private static b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/a;->a(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->b(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/fragment/app/a;->a(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->d()V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private c(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->j()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroidx/fragment/app/j;->E()V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/j;->d:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p1, p0, Landroidx/fragment/app/j;->d:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Landroidx/fragment/app/j;->d:Z

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called from main thread of fragment host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment host has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager is already executing transactions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/j$e;

    invoke-interface {v3, p1, p2}, Landroidx/fragment/app/j$e;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->j()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroidx/fragment/app/j;->C:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0

    return v2

    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static d(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method private e(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/j;->a(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroidx/fragment/app/j;->d:Z

    invoke-virtual {p0}, Landroidx/fragment/app/j;->l()Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/fragment/app/j;->d:Z

    throw p1
.end method

.method private u(Landroidx/fragment/app/d;)Landroidx/fragment/app/d;
    .locals 4

    iget-object v0, p1, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    iget-object v3, v1, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    if-ne v3, v0, :cond_1

    iget-object v3, v1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2
.end method

.method private v(Landroidx/fragment/app/d;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v0, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/d;->performPrimaryNavigationFragmentChanged()V

    :cond_0
    return-void
.end method

.method private w(Landroidx/fragment/app/d;)Z
    .locals 0

    iget-boolean p0, p1, Landroidx/fragment/app/d;->mHasMenu:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Landroidx/fragment/app/d;->mMenuVisible:Z

    if-nez p0, :cond_1

    :cond_0
    iget-object p0, p1, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->B()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A()Landroidx/fragment/app/d;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    return-object p0
.end method

.method B()Z
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/d;

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/d;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method C()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    return-object p0
.end method

.method public a(Landroidx/fragment/app/a;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Landroidx/fragment/app/j;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Landroidx/fragment/app/j;->b:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/d;
    .locals 4

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": unique id "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/d;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/fragment/app/d;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroidx/fragment/app/d;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method a(Landroidx/fragment/app/d;IZI)Landroidx/fragment/app/j$a;
    .locals 5

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getNextAnim()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/fragment/app/d;->setNextAnim(I)V

    iget-object v2, p1, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/d;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance p0, Landroidx/fragment/app/j$a;

    invoke-direct {p0, v2}, Landroidx/fragment/app/j$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    :cond_1
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/d;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p0, Landroidx/fragment/app/j$a;

    invoke-direct {p0, p1}, Landroidx/fragment/app/j$a;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_2
    if-eqz v0, :cond_6

    iget-object p1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "anim"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v2}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v4, Landroidx/fragment/app/j$a;

    invoke-direct {v4, v2}, Landroidx/fragment/app/j$a;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_4
    :goto_0
    if-nez v1, :cond_6

    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Landroidx/fragment/app/j$a;

    invoke-direct {v2, v1}, Landroidx/fragment/app/j$a;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    :catch_2
    move-exception v1

    if-nez p1, :cond_5

    iget-object p1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance p0, Landroidx/fragment/app/j$a;

    invoke-direct {p0, p1}, Landroidx/fragment/app/j$a;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    :cond_5
    throw v1

    :cond_6
    if-nez p2, :cond_7

    return-object v3

    :cond_7
    invoke-static {p2, p3}, Landroidx/fragment/app/j;->b(IZ)I

    move-result p1

    if-gez p1, :cond_8

    return-object v3

    :cond_8
    const p2, 0x3f79999a    # 0.975f

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    if-nez p4, :cond_9

    iget-object p1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->e()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->f()I

    move-result p4

    goto :goto_1

    :pswitch_0
    invoke-static {v0, p3}, Landroidx/fragment/app/j;->a(FF)Landroidx/fragment/app/j$a;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p3, v0}, Landroidx/fragment/app/j;->a(FF)Landroidx/fragment/app/j$a;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p0, 0x3f89999a    # 1.075f

    invoke-static {v0, p0, v0, p3}, Landroidx/fragment/app/j;->a(FFFF)Landroidx/fragment/app/j$a;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p2, v0, p3, v0}, Landroidx/fragment/app/j;->a(FFFF)Landroidx/fragment/app/j$a;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {v0, p2, v0, p3}, Landroidx/fragment/app/j;->a(FFFF)Landroidx/fragment/app/j$a;

    move-result-object p0

    return-object p0

    :pswitch_5
    const/high16 p0, 0x3f900000    # 1.125f

    invoke-static {p0, v0, p3, v0}, Landroidx/fragment/app/j;->a(FFFF)Landroidx/fragment/app/j$a;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_1
    if-nez p4, :cond_a

    :cond_a
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a()Landroidx/fragment/app/n;
    .locals 1

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j;)V

    return-object v0
.end method

.method public a(II)V
    .locals 2

    if-ltz p1, :cond_0

    new-instance v0, Landroidx/fragment/app/j$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/j$f;-><init>(Landroidx/fragment/app/j;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/j$e;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(ILandroidx/fragment/app/a;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    iget-object v1, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    :cond_3
    sget-boolean v1, Landroidx/fragment/app/j;->b:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p1, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(IZ)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroidx/fragment/app/j;->m:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/fragment/app/j;->m:I

    iget-object p1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/j;->j(Landroidx/fragment/app/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Landroidx/fragment/app/d;->mRemoving:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Landroidx/fragment/app/d;->mDetached:Z

    if-eqz v1, :cond_4

    :cond_5
    iget-boolean v1, v0, Landroidx/fragment/app/d;->mIsNewlyAdded:Z

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, Landroidx/fragment/app/j;->j(Landroidx/fragment/app/d;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/j;->i()V

    iget-boolean p1, p0, Landroidx/fragment/app/j;->r:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-eqz p1, :cond_7

    iget p1, p0, Landroidx/fragment/app/j;->m:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {p1}, Landroidx/fragment/app/h;->d()V

    iput-boolean p2, p0, Landroidx/fragment/app/j;->r:Z

    :cond_7
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/d;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/d;)V
    .locals 3

    iget-object v0, p3, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object p0, p3, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Landroid/os/Parcelable;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/fragment/app/k;

    iget-object v0, p1, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    sget-boolean v5, Landroidx/fragment/app/j;->b:Z

    if-eqz v5, :cond_3

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreSaveState: re-attaching retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p1, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/m;

    iget-object v7, v6, Landroidx/fragment/app/m;->b:Ljava/lang/String;

    iget-object v8, v1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_5
    move-object v6, v4

    :goto_1
    if-nez v6, :cond_7

    sget-boolean v3, Landroidx/fragment/app/j;->b:Z

    if-eqz v3, :cond_6

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding retained Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " that was not found in the set of active Fragments "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IIIZ)V

    iput-boolean v2, v1, Landroidx/fragment/app/d;->mRemoving:Z

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IIIZ)V

    goto :goto_0

    :cond_7
    iput-object v1, v6, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    iput-object v4, v1, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    iput v3, v1, Landroidx/fragment/app/d;->mBackStackNesting:I

    iput-boolean v3, v1, Landroidx/fragment/app/d;->mInLayout:Z

    iput-boolean v3, v1, Landroidx/fragment/app/d;->mAdded:Z

    iget-object v2, v1, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    if-eqz v2, :cond_8

    iget-object v2, v1, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    iget-object v2, v2, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    goto :goto_2

    :cond_8
    move-object v2, v4

    :goto_2
    iput-object v2, v1, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    iput-object v4, v1, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    iget-object v2, v6, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    iget-object v2, v6, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    iget-object v3, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v3}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v2, v6, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    const-string v3, "android:view_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, v1, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v2, v6, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    iput-object v2, v1, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p1, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m;

    if-eqz v1, :cond_a

    iget-object v5, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v5}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/j;->f()Landroidx/fragment/app/g;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroidx/fragment/app/m;->a(Ljava/lang/ClassLoader;Landroidx/fragment/app/g;)Landroidx/fragment/app/d;

    move-result-object v5

    iput-object p0, v5, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    sget-boolean v6, Landroidx/fragment/app/j;->b:Z

    if-eqz v6, :cond_b

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSaveState: active ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v6, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v7, v5, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, v1, Landroidx/fragment/app/m;->n:Landroidx/fragment/app/d;

    goto :goto_3

    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Landroidx/fragment/app/k;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroidx/fragment/app/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/d;

    if-nez v5, :cond_d

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No instantiated fragment for ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    :cond_d
    iput-boolean v2, v5, Landroidx/fragment/app/d;->mAdded:Z

    sget-boolean v6, Landroidx/fragment/app/j;->b:Z

    if-eqz v6, :cond_e

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSaveState: added ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v6, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already added "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    iget-object v0, p1, Landroidx/fragment/app/k;->c:[Landroidx/fragment/app/b;

    if-eqz v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/fragment/app/k;->c:[Landroidx/fragment/app/b;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    move v0, v3

    :goto_5
    iget-object v1, p1, Landroidx/fragment/app/k;->c:[Landroidx/fragment/app/b;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    iget-object v1, p1, Landroidx/fragment/app/k;->c:[Landroidx/fragment/app/b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroidx/fragment/app/b;->a(Landroidx/fragment/app/j;)Landroidx/fragment/app/a;

    move-result-object v1

    sget-boolean v2, Landroidx/fragment/app/j;->b:Z

    if-eqz v2, :cond_11

    const-string v2, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: back stack #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroidx/fragment/app/a;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroidx/core/e/b;

    const-string v4, "FragmentManager"

    invoke-direct {v2, v4}, Landroidx/core/e/b;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "  "

    invoke-virtual {v1, v2, v4, v3}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_11
    iget-object v2, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v1, Landroidx/fragment/app/a;->c:I

    if-ltz v2, :cond_12

    iget v2, v1, Landroidx/fragment/app/a;->c:I

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/j;->a(ILandroidx/fragment/app/a;)V

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    iput-object v4, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    :cond_14
    iget-object v0, p1, Landroidx/fragment/app/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    iput-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    iget-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->v(Landroidx/fragment/app/d;)V

    :cond_15
    iget p1, p1, Landroidx/fragment/app/k;->e:I

    iput p1, p0, Landroidx/fragment/app/j;->e:I

    return-void
.end method

.method a(Landroidx/fragment/app/a;ZZZ)V
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Landroidx/fragment/app/a;->b(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/a;->d()V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/j;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    iget p2, p0, Landroidx/fragment/app/j;->m:I

    invoke-virtual {p0, p2, v6}, Landroidx/fragment/app/j;->a(IZ)V

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/d;

    if-eqz p2, :cond_3

    iget-object p3, p2, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz p3, :cond_3

    iget-boolean p3, p2, Landroidx/fragment/app/d;->mIsNewlyAdded:Z

    if-eqz p3, :cond_3

    iget p3, p2, Landroidx/fragment/app/d;->mContainerId:I

    invoke-virtual {p1, p3}, Landroidx/fragment/app/a;->b(I)Z

    move-result p3

    if-eqz p3, :cond_3

    iget p3, p2, Landroidx/fragment/app/d;->mPostponedAlpha:F

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-lez p3, :cond_4

    iget-object p3, p2, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iget v1, p2, Landroidx/fragment/app/d;->mPostponedAlpha:F

    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p4, :cond_5

    iput v0, p2, Landroidx/fragment/app/d;->mPostponedAlpha:F

    goto :goto_1

    :cond_5
    const/high16 p3, -0x40800000    # -1.0f

    iput p3, p2, Landroidx/fragment/app/d;->mPostponedAlpha:F

    const/4 p3, 0x0

    iput-boolean p3, p2, Landroidx/fragment/app/d;->mIsNewlyAdded:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method a(Landroidx/fragment/app/d;IIIZ)V
    .locals 14

    move-object v6, p0

    move-object v7, p1

    iget-boolean v0, v7, Landroidx/fragment/app/d;->mAdded:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v7, Landroidx/fragment/app/d;->mDetached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v8, :cond_2

    move v0, v8

    :cond_2
    :goto_1
    iget-boolean v1, v7, Landroidx/fragment/app/d;->mRemoving:Z

    if-eqz v1, :cond_4

    iget v1, v7, Landroidx/fragment/app/d;->mState:I

    if-le v0, v1, :cond_4

    iget v0, v7, Landroidx/fragment/app/d;->mState:I

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/d;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    goto :goto_2

    :cond_3
    iget v0, v7, Landroidx/fragment/app/d;->mState:I

    :cond_4
    :goto_2
    iget-boolean v1, v7, Landroidx/fragment/app/d;->mDeferStart:Z

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v1, :cond_5

    iget v1, v7, Landroidx/fragment/app/d;->mState:I

    if-ge v1, v9, :cond_5

    if-le v0, v10, :cond_5

    move v0, v10

    :cond_5
    iget-object v1, v7, Landroidx/fragment/app/d;->mMaxState:Landroidx/lifecycle/e$b;

    sget-object v2, Landroidx/lifecycle/e$b;->c:Landroidx/lifecycle/e$b;

    if-ne v1, v2, :cond_6

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_3
    move v11, v0

    goto :goto_4

    :cond_6
    iget-object v1, v7, Landroidx/fragment/app/d;->mMaxState:Landroidx/lifecycle/e$b;

    invoke-virtual {v1}, Landroidx/lifecycle/e$b;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    :goto_4
    iget v0, v7, Landroidx/fragment/app/d;->mState:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-gt v0, v11, :cond_27

    iget-boolean v0, v7, Landroidx/fragment/app/d;->mFromLayout:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v7, Landroidx/fragment/app/d;->mInLayout:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-virtual {p1, v13}, Landroidx/fragment/app/d;->setAnimatingAway(Landroid/view/View;)V

    invoke-virtual {p1, v13}, Landroidx/fragment/app/d;->setAnimator(Landroid/animation/Animator;)V

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IIIZ)V

    :cond_9
    iget v0, v7, Landroidx/fragment/app/d;->mState:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_18

    :pswitch_0
    if-lez v11, :cond_17

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v1, v6, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v7, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/j;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v0, v13

    :goto_5
    iput-object v0, v7, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    iget-object v0, v7, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Landroidx/fragment/app/d;->mTargetRequestCode:I

    :cond_c
    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v7, Landroidx/fragment/app/d;->mUserVisibleHint:Z

    iput-object v13, v7, Landroidx/fragment/app/d;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_6

    :cond_d
    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/fragment/app/d;->mUserVisibleHint:Z

    :goto_6
    iget-boolean v0, v7, Landroidx/fragment/app/d;->mUserVisibleHint:Z

    if-nez v0, :cond_e

    iput-boolean v8, v7, Landroidx/fragment/app/d;->mDeferStart:Z

    if-le v11, v10, :cond_e

    move v11, v10

    :cond_e
    iget-object v0, v6, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iput-object v0, v7, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    iget-object v0, v6, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    iput-object v0, v7, Landroidx/fragment/app/d;->mParentFragment:Landroidx/fragment/app/d;

    iget-object v0, v6, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_f

    iget-object v0, v6, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->mChildFragmentManager:Landroidx/fragment/app/j;

    goto :goto_7

    :cond_f
    iget-object v0, v6, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/h;->b:Landroidx/fragment/app/j;

    :goto_7
    iput-object v0, v7, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    iget-object v0, v7, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    if-eqz v0, :cond_12

    iget-object v0, v6, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, v7, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    iget-object v1, v1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    if-ne v0, v1, :cond_11

    iget-object v0, v7, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    iget v0, v0, Landroidx/fragment/app/d;->mState:I

    if-ge v0, v8, :cond_10

    iget-object v1, v7, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IIIZ)V

    :cond_10
    iget-object v0, v7, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    iget-object v0, v0, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    iput-object v0, v7, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    iput-object v13, v7, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    goto :goto_8

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_8
    iget-object v0, v7, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, v6, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, v7, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/d;

    if-eqz v1, :cond_13

    iget v0, v1, Landroidx/fragment/app/d;->mState:I

    if-ge v0, v8, :cond_14

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IIIZ)V

    goto :goto_9

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_9
    iget-object v0, v6, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v12}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroidx/fragment/app/d;->performAttach()V

    iget-object v0, v7, Landroidx/fragment/app/d;->mParentFragment:Landroidx/fragment/app/d;

    if-nez v0, :cond_15

    iget-object v0, v6, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->b(Landroidx/fragment/app/d;)V

    goto :goto_a

    :cond_15
    iget-object v0, v7, Landroidx/fragment/app/d;->mParentFragment:Landroidx/fragment/app/d;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/d;->onAttachFragment(Landroidx/fragment/app/d;)V

    :goto_a
    iget-object v0, v6, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v12}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/d;Landroid/content/Context;Z)V

    iget-boolean v0, v7, Landroidx/fragment/app/d;->mIsCreated:Z

    if-nez v0, :cond_16

    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v12}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/d;->performCreate(Landroid/os/Bundle;)V

    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v12}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V

    goto :goto_b

    :cond_16
    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/d;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iput v8, v7, Landroidx/fragment/app/d;->mState:I

    :cond_17
    :goto_b
    :pswitch_1
    if-lez v11, :cond_18

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->h(Landroidx/fragment/app/d;)V

    :cond_18
    if-le v11, v8, :cond_23

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_19

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-boolean v0, v7, Landroidx/fragment/app/d;->mFromLayout:Z

    if-nez v0, :cond_21

    iget v0, v7, Landroidx/fragment/app/d;->mContainerId:I

    if-eqz v0, :cond_1b

    iget v0, v7, Landroidx/fragment/app/d;->mContainerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    :cond_1a
    iget-object v0, v6, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    iget v1, v7, Landroidx/fragment/app/d;->mContainerId:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/e;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1c

    iget-boolean v1, v7, Landroidx/fragment/app/d;->mRestored:Z

    if-nez v1, :cond_1c

    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v7, Landroidx/fragment/app/d;->mContainerId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    const-string v1, "unknown"

    :goto_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No view found for id 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Landroidx/fragment/app/d;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") for fragment "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    goto :goto_d

    :cond_1b
    move-object v0, v13

    :cond_1c
    :goto_d
    iput-object v0, v7, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/d;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/d;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v1, :cond_20

    iget-object v1, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iput-object v1, v7, Landroidx/fragment/app/d;->mInnerView:Landroid/view/View;

    iget-object v1, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v0, :cond_1d

    iget-object v1, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1d
    iget-boolean v0, v7, Landroidx/fragment/app/d;->mHidden:Z

    if-eqz v0, :cond_1e

    iget-object v0, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    iget-object v0, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iget-object v1, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iget-object v1, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v1, v12}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v7, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1f

    goto :goto_e

    :cond_1f
    move v8, v12

    :goto_e
    iput-boolean v8, v7, Landroidx/fragment/app/d;->mIsNewlyAdded:Z

    goto :goto_f

    :cond_20
    iput-object v13, v7, Landroidx/fragment/app/d;->mInnerView:Landroid/view/View;

    :cond_21
    :goto_f
    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/d;->performActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v12}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/d;->restoreViewState(Landroid/os/Bundle;)V

    :cond_22
    iput-object v13, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_23
    :pswitch_2
    if-le v11, v10, :cond_25

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_24

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-virtual {p1}, Landroidx/fragment/app/d;->performStart()V

    invoke-virtual {p0, p1, v12}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/d;Z)V

    :cond_25
    :pswitch_3
    if-le v11, v9, :cond_41

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_26

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    invoke-virtual {p1}, Landroidx/fragment/app/d;->performResume()V

    invoke-virtual {p0, p1, v12}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/d;Z)V

    iput-object v13, v7, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v13, v7, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_18

    :cond_27
    iget v0, v7, Landroidx/fragment/app/d;->mState:I

    if-le v0, v11, :cond_41

    iget v0, v7, Landroidx/fragment/app/d;->mState:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_18

    :pswitch_4
    const/4 v0, 0x4

    if-ge v11, v0, :cond_29

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_28

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-virtual {p1}, Landroidx/fragment/app/d;->performPause()V

    invoke-virtual {p0, p1, v12}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/d;Z)V

    :cond_29
    :pswitch_5
    if-ge v11, v9, :cond_2b

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_2a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    invoke-virtual {p1}, Landroidx/fragment/app/d;->performStop()V

    invoke-virtual {p0, p1, v12}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/d;Z)V

    :cond_2b
    :pswitch_6
    if-ge v11, v10, :cond_32

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_2c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v0, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_2d

    iget-object v0, v6, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/d;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v7, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_2d

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->r(Landroidx/fragment/app/d;)V

    :cond_2d
    invoke-virtual {p1}, Landroidx/fragment/app/d;->performDestroyView()V

    invoke-virtual {p0, p1, v12}, Landroidx/fragment/app/j;->f(Landroidx/fragment/app/d;Z)V

    iget-object v0, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_31

    iget-object v0, v7, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_31

    iget-object v0, v7, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getParentFragment()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getParentFragment()Landroidx/fragment/app/d;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/fragment/app/d;->mRemoving:Z

    if-nez v0, :cond_31

    :cond_2e
    iget v0, v6, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x0

    if-lez v0, :cond_2f

    iget-boolean v0, v6, Landroidx/fragment/app/j;->u:Z

    if-nez v0, :cond_2f

    iget-object v0, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    iget v0, v7, Landroidx/fragment/app/d;->mPostponedAlpha:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2f

    move/from16 v0, p3

    move/from16 v2, p4

    invoke-virtual {p0, p1, v0, v12, v2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IZI)Landroidx/fragment/app/j$a;

    move-result-object v0

    goto :goto_10

    :cond_2f
    move-object v0, v13

    :goto_10
    iput v1, v7, Landroidx/fragment/app/d;->mPostponedAlpha:F

    if-eqz v0, :cond_30

    invoke-direct {p0, p1, v0, v11}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;Landroidx/fragment/app/j$a;I)V

    :cond_30
    iget-object v0, v7, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_31
    iput-object v13, v7, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    iput-object v13, v7, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iput-object v13, v7, Landroidx/fragment/app/d;->mViewLifecycleOwner:Landroidx/fragment/app/r;

    iget-object v0, v7, Landroidx/fragment/app/d;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/m;

    invoke-virtual {v0, v13}, Landroidx/lifecycle/m;->a(Ljava/lang/Object;)V

    iput-object v13, v7, Landroidx/fragment/app/d;->mInnerView:Landroid/view/View;

    iput-boolean v12, v7, Landroidx/fragment/app/d;->mInLayout:Z

    :cond_32
    :pswitch_7
    if-ge v11, v8, :cond_41

    iget-boolean v0, v6, Landroidx/fragment/app/j;->u:Z

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v13}, Landroidx/fragment/app/d;->setAnimatingAway(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_11

    :cond_33
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p1, v13}, Landroidx/fragment/app/d;->setAnimator(Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_34
    :goto_11
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_40

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_35

    goto/16 :goto_17

    :cond_35
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_36

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    iget-boolean v0, v7, Landroidx/fragment/app/d;->mRemoving:Z

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroidx/fragment/app/d;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v8

    goto :goto_12

    :cond_37
    move v0, v12

    :goto_12
    if-nez v0, :cond_39

    iget-object v1, v6, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/d;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_13

    :cond_38
    iput v12, v7, Landroidx/fragment/app/d;->mState:I

    goto :goto_15

    :cond_39
    :goto_13
    iget-object v1, v6, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    instance-of v1, v1, Landroidx/lifecycle/s;

    if-eqz v1, :cond_3a

    iget-object v1, v6, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v1}, Landroidx/fragment/app/l;->b()Z

    move-result v8

    goto :goto_14

    :cond_3a
    iget-object v1, v6, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3b

    iget-object v1, v6, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v8, v1

    :cond_3b
    :goto_14
    if-nez v0, :cond_3c

    if-eqz v8, :cond_3d

    :cond_3c
    iget-object v1, v6, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/l;->f(Landroidx/fragment/app/d;)V

    :cond_3d
    invoke-virtual {p1}, Landroidx/fragment/app/d;->performDestroy()V

    invoke-virtual {p0, p1, v12}, Landroidx/fragment/app/j;->g(Landroidx/fragment/app/d;Z)V

    :goto_15
    invoke-virtual {p1}, Landroidx/fragment/app/d;->performDetach()V

    invoke-virtual {p0, p1, v12}, Landroidx/fragment/app/j;->h(Landroidx/fragment/app/d;Z)V

    if-nez p5, :cond_41

    if-nez v0, :cond_3f

    iget-object v0, v6, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l;->b(Landroidx/fragment/app/d;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_16

    :cond_3e
    iput-object v13, v7, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    iput-object v13, v7, Landroidx/fragment/app/d;->mParentFragment:Landroidx/fragment/app/d;

    iput-object v13, v7, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    iget-object v0, v7, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, v6, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, v7, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_41

    iput-object v0, v7, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    goto :goto_18

    :cond_3f
    :goto_16
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->l(Landroidx/fragment/app/d;)V

    goto :goto_18

    :cond_40
    :goto_17
    invoke-virtual {p1, v11}, Landroidx/fragment/app/d;->setStateAfterAnimating(I)V

    goto :goto_19

    :cond_41
    :goto_18
    move v8, v11

    :goto_19
    iget v0, v7, Landroidx/fragment/app/d;->mState:I

    if-eq v0, v8, :cond_42

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveToState: Fragment state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v7, Landroidx/fragment/app/d;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, v7, Landroidx/fragment/app/d;->mState:I

    :cond_42
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method a(Landroidx/fragment/app/d;Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/i$a;->a(Landroidx/fragment/app/i;Landroidx/fragment/app/d;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method a(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/i$a;->a(Landroidx/fragment/app/i;Landroidx/fragment/app/d;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method a(Landroidx/fragment/app/d;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p4, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroidx/fragment/app/i$a;->a(Landroidx/fragment/app/i;Landroidx/fragment/app/d;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Landroidx/fragment/app/d;Landroidx/lifecycle/e$b;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    if-ne v0, p0, :cond_1

    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/d;->mMaxState:Landroidx/lifecycle/e$b;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroidx/fragment/app/d;Z)V
    .locals 3

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->k(Landroidx/fragment/app/d;)V

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mDetached:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/d;->mAdded:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/d;->mRemoving:Z

    iget-object v2, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    iput-boolean v1, p1, Landroidx/fragment/app/d;->mHiddenChanged:Z

    :cond_1
    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/d;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Landroidx/fragment/app/j;->r:Z

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->g(Landroidx/fragment/app/d;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment already added: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Landroidx/fragment/app/h;Landroidx/fragment/app/e;Landroidx/fragment/app/d;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-nez v0, :cond_5

    iput-object p1, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iput-object p2, p0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    iput-object p3, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    iget-object p2, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroidx/fragment/app/j;->D()V

    :cond_0
    instance-of p2, p1, Landroidx/activity/c;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Landroidx/activity/c;

    invoke-interface {p2}, Landroidx/activity/c;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/j;->F:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_1

    move-object p2, p3

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->F:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/b;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/h;Landroidx/activity/b;)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object p1, p3, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/d;)Landroidx/fragment/app/l;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    goto :goto_1

    :cond_3
    instance-of p2, p1, Landroidx/lifecycle/s;

    if-eqz p2, :cond_4

    check-cast p1, Landroidx/lifecycle/s;

    invoke-interface {p1}, Landroidx/lifecycle/s;->getViewModelStore()Landroidx/lifecycle/r;

    move-result-object p1

    invoke-static {p1}, Landroidx/fragment/app/l;->a(Landroidx/lifecycle/r;)Landroidx/fragment/app/l;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-instance p1, Landroidx/fragment/app/l;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/fragment/app/l;-><init>(Z)V

    goto :goto_0

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroidx/fragment/app/j$e;Z)V
    .locals 1

    if-nez p2, :cond_0

    invoke-direct {p0}, Landroidx/fragment/app/j;->E()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/fragment/app/j;->u:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/j;->k()V

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Active Fragments in "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/d;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, p2, p3, p4}, Landroidx/fragment/app/d;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Added Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_1
    if-ge v1, p2, :cond_2

    iget-object v2, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/d;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_2
    if-ge v1, p2, :cond_3

    iget-object v2, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/d;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_3
    if-ge v1, p2, :cond_4

    iget-object v2, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    iget-object p2, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, p4

    :goto_4
    if-ge v0, p2, :cond_5

    iget-object v1, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    if-ge p4, p2, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$e;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz p2, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/j;->m:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/j;->s:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/j;->t:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/j;->u:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Landroidx/fragment/app/j;->r:Z

    if-eqz p2, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/fragment/app/j;->r:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/d;->performMultiWindowModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(I)Z
    .locals 0

    iget p0, p0, Landroidx/fragment/app/j;->m:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 4

    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/d;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    move v0, v1

    move v4, v0

    :goto_0
    iget-object v5, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/d;

    if-eqz v5, :cond_2

    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/d;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    iget-object p1, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/d;

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/d;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iput-object v3, p0, Landroidx/fragment/app/j;->i:Ljava/util/ArrayList;

    return v4
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/d;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method a(Landroidx/fragment/app/d;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->A()Landroidx/fragment/app/d;

    move-result-object v2

    if-ne p1, v2, :cond_1

    iget-object p1, v1, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_2

    iget-object p3, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-gez p3, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, -0x1

    move v2, p3

    goto :goto_4

    :cond_4
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    :goto_1
    if-ltz v2, :cond_7

    iget-object v3, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    if-eqz p3, :cond_5

    invoke-virtual {v3}, Landroidx/fragment/app/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    if-ltz p4, :cond_6

    iget v3, v3, Landroidx/fragment/app/a;->c:I

    if-ne p4, v3, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gez v2, :cond_8

    return v1

    :cond_8
    and-int/2addr p5, v0

    if-eqz p5, :cond_b

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_b

    iget-object p5, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/a;

    if-eqz p3, :cond_a

    invoke-virtual {p5}, Landroidx/fragment/app/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_a
    if-ltz p4, :cond_b

    iget p5, p5, Landroidx/fragment/app/a;->c:I

    if-ne p4, p5, :cond_b

    goto :goto_3

    :cond_b
    :goto_4
    iget-object p3, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne v2, p3, :cond_c

    return v1

    :cond_c
    iget-object p3, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_5
    if-le p3, v2, :cond_d

    iget-object p4, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_d
    :goto_6
    return v0
.end method

.method public b(I)Landroidx/fragment/app/d;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    if-eqz v1, :cond_0

    iget v2, v1, Landroidx/fragment/app/d;->mFragmentId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    if-eqz v0, :cond_2

    iget v1, v0, Landroidx/fragment/app/d;->mFragmentId:I

    if-ne v1, p1, :cond_2

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Landroidx/fragment/app/d;
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/d;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method b(Landroidx/fragment/app/d;)Landroidx/lifecycle/r;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l;->e(Landroidx/fragment/app/d;)Landroidx/lifecycle/r;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 4

    new-instance v0, Landroidx/fragment/app/j$f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v2, v3, v1}, Landroidx/fragment/app/j$f;-><init>(Landroidx/fragment/app/j;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/j$e;Z)V

    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroidx/fragment/app/d;->performOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method b(Landroidx/fragment/app/a;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Landroidx/fragment/app/d;Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/d;Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/i$a;->b(Landroidx/fragment/app/i;Landroidx/fragment/app/d;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method b(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/i$a;->b(Landroidx/fragment/app/i;Landroidx/fragment/app/d;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method b(Landroidx/fragment/app/d;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/d;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/i$a;->a(Landroidx/fragment/app/i;Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroidx/fragment/app/d;->performPictureInPictureModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 4

    iget v0, p0, Landroidx/fragment/app/j;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/d;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method c(Landroidx/fragment/app/d;)Landroidx/fragment/app/l;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l;->d(Landroidx/fragment/app/d;)Landroidx/fragment/app/l;

    move-result-object p0

    return-object p0
.end method

.method public c(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    :cond_0
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method c(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/i$a;->c(Landroidx/fragment/app/i;Landroidx/fragment/app/d;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method c(Landroidx/fragment/app/d;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/d;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/i$a;->b(Landroidx/fragment/app/i;Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public c()Z
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/j;->E()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/fragment/app/j;->a(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method d(Landroidx/fragment/app/d;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/j;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p0, Landroidx/fragment/app/j;->b:Z

    if-eqz p0, :cond_0

    const-string p0, "FragmentManager"

    const-string p1, "Ignoring addRetainedFragment as the state is already saved"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l;->a(Landroidx/fragment/app/d;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Landroidx/fragment/app/j;->b:Z

    if-eqz p0, :cond_2

    const-string p0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating retained Fragments: Added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method d(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p3, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/i$a;->d(Landroidx/fragment/app/i;Landroidx/fragment/app/d;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method d(Landroidx/fragment/app/d;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/d;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/i$a;->c(Landroidx/fragment/app/i;Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method e(Landroidx/fragment/app/d;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/j;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p0, Landroidx/fragment/app/j;->b:Z

    if-eqz p0, :cond_0

    const-string p0, "FragmentManager"

    const-string p1, "Ignoring removeRetainedFragment as the state is already saved"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/j;->I:Landroidx/fragment/app/l;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/l;->c(Landroidx/fragment/app/d;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Landroidx/fragment/app/j;->b:Z

    if-eqz p0, :cond_2

    const-string p0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating retained Fragments: Removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method e(Landroidx/fragment/app/d;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/d;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/i$a;->d(Landroidx/fragment/app/i;Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public f()Landroidx/fragment/app/g;
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/i;->f()Landroidx/fragment/app/g;

    move-result-object v0

    sget-object v1, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/g;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    iget-object p0, p0, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->f()Landroidx/fragment/app/g;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/fragment/app/j$6;

    invoke-direct {v0, p0}, Landroidx/fragment/app/j$6;-><init>(Landroidx/fragment/app/j;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/g;)V

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/i;->f()Landroidx/fragment/app/g;

    move-result-object p0

    return-object p0
.end method

.method public f(Landroidx/fragment/app/d;)V
    .locals 7

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mDeferStart:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/j;->v:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/d;->mDeferStart:Z

    iget v3, p0, Landroidx/fragment/app/j;->m:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IIIZ)V

    :cond_1
    return-void
.end method

.method f(Landroidx/fragment/app/d;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->f(Landroidx/fragment/app/d;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/i$a;->e(Landroidx/fragment/app/i;Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method g()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/j;->l()Z

    iget-object v0, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/activity/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/j;->c()Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/j;->F:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    :goto_0
    return-void
.end method

.method g(Landroidx/fragment/app/d;)V
    .locals 6

    iget v2, p0, Landroidx/fragment/app/j;->m:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IIIZ)V

    return-void
.end method

.method g(Landroidx/fragment/app/d;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->g(Landroidx/fragment/app/d;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/i$a;->f(Landroidx/fragment/app/i;Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method h(Landroidx/fragment/app/d;)V
    .locals 3

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mFromLayout:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mPerformedCreateView:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/d;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/d;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iput-object v0, p1, Landroidx/fragment/app/d;->mInnerView:Landroid/view/View;

    iget-object v0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iget-object v2, p1, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iget-object v2, p1, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    iput-object v2, p1, Landroidx/fragment/app/d;->mInnerView:Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method

.method h(Landroidx/fragment/app/d;Z)V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/j;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/fragment/app/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->h(Landroidx/fragment/app/d;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->H:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$c;

    if-eqz p2, :cond_2

    iget-boolean v2, v1, Landroidx/fragment/app/j$c;->b:Z

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$c;->a:Landroidx/fragment/app/i$a;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/i$a;->g(Landroidx/fragment/app/i;Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/fragment/app/j;->u:Z

    return p0
.end method

.method i()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/j;->f(Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method i(Landroidx/fragment/app/d;)V
    .locals 7

    iget-object v0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getNextTransition()I

    move-result v0

    iget-boolean v3, p1, Landroidx/fragment/app/d;->mHidden:Z

    xor-int/2addr v3, v1

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getNextTransitionStyle()I

    move-result v4

    invoke-virtual {p0, p1, v0, v3, v4}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IZI)Landroidx/fragment/app/j$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v3, p1, Landroidx/fragment/app/d;->mHidden:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/d;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroidx/fragment/app/d;->setHideReplaced(Z)V

    goto :goto_0

    :cond_0
    iget-object v3, p1, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v5, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/j$5;

    invoke-direct {v6, p0, v3, v4, p1}, Landroidx/fragment/app/j$5;-><init>(Landroidx/fragment/app/j;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/d;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iget-object v3, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_3
    iget-boolean v0, p1, Landroidx/fragment/app/d;->mHidden:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/d;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    iget-object v3, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroidx/fragment/app/d;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v2}, Landroidx/fragment/app/d;->setHideReplaced(Z)V

    :cond_5
    :goto_2
    iget-boolean v0, p1, Landroidx/fragment/app/d;->mAdded:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/d;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Landroidx/fragment/app/j;->r:Z

    :cond_6
    iput-boolean v2, p1, Landroidx/fragment/app/d;->mHiddenChanged:Z

    iget-boolean p0, p1, Landroidx/fragment/app/d;->mHidden:Z

    invoke-virtual {p1, p0}, Landroidx/fragment/app/d;->onHiddenChanged(Z)V

    return-void
.end method

.method j(Landroidx/fragment/app/d;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/fragment/app/j;->m:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "since it is not added to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Landroidx/fragment/app/j;->m:I

    iget-boolean v1, p1, Landroidx/fragment/app/d;->mRemoving:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/d;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_4
    :goto_0
    move v6, v0

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getNextTransition()I

    move-result v7

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getNextTransitionStyle()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IIIZ)V

    iget-object v0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->u(Landroidx/fragment/app/d;)Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iget-object v1, p1, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v4, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_5

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_5
    iget-boolean v0, p1, Landroidx/fragment/app/d;->mIsNewlyAdded:Z

    if-eqz v0, :cond_8

    iget-object v0, p1, Landroidx/fragment/app/d;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget v0, p1, Landroidx/fragment/app/d;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-object v0, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iget v4, p1, Landroidx/fragment/app/d;->mPostponedAlpha:F

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    iput v1, p1, Landroidx/fragment/app/d;->mPostponedAlpha:F

    iput-boolean v2, p1, Landroidx/fragment/app/d;->mIsNewlyAdded:Z

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getNextTransition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getNextTransitionStyle()I

    move-result v1

    invoke-virtual {p0, p1, v0, v3, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IZI)Landroidx/fragment/app/j$a;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, v0, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_7

    iget-object v1, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    iget-object v0, v0, Landroidx/fragment/app/j$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_7
    iget-object v1, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, v0, Landroidx/fragment/app/j$a;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_8
    :goto_1
    iget-boolean v0, p1, Landroidx/fragment/app/d;->mHiddenChanged:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->i(Landroidx/fragment/app/d;)V

    :cond_9
    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/fragment/app/j;->t:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method k()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/fragment/app/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/j;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/j;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroidx/fragment/app/j;->D()V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method k(Landroidx/fragment/app/d;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mRetainInstanceChangedWhileDetached:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mRetainInstance:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/d;)V

    :goto_0
    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/fragment/app/d;->mRetainInstanceChangedWhileDetached:Z

    :cond_2
    sget-boolean p0, Landroidx/fragment/app/j;->b:Z

    if-eqz p0, :cond_3

    const-string p0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added fragment to active set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method l(Landroidx/fragment/app/d;)V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed fragment from active set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    if-eqz v1, :cond_2

    iget-object v3, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    iget-object v4, v1, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object p1, v1, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    iput-object v2, v1, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/d;)V

    iget-object v0, p1, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v0, p1, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/d;

    iput-object p0, p1, Landroidx/fragment/app/d;->mTarget:Landroidx/fragment/app/d;

    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/d;->initState()V

    return-void
.end method

.method public l()Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->c(Z)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroidx/fragment/app/j;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->d:Z

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/j;->w:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/j;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/j;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroidx/fragment/app/j;->F()V

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/j;->F()V

    throw v0

    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/j;->D()V

    invoke-virtual {p0}, Landroidx/fragment/app/j;->m()V

    invoke-direct {p0}, Landroidx/fragment/app/j;->I()V

    return v1
.end method

.method m()V
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/j;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->v:Z

    invoke-virtual {p0}, Landroidx/fragment/app/j;->i()V

    :cond_0
    return-void
.end method

.method public m(Landroidx/fragment/app/d;)V
    .locals 3

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/d;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/d;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroidx/fragment/app/d;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroidx/fragment/app/j;->r:Z

    :cond_2
    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/fragment/app/d;->mAdded:Z

    iput-boolean v1, p1, Landroidx/fragment/app/d;->mRemoving:Z

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method n()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/j;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/j;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/i$b;

    invoke-interface {v1}, Landroidx/fragment/app/i$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n(Landroidx/fragment/app/d;)V
    .locals 2

    sget-boolean p0, Landroidx/fragment/app/j;->b:Z

    if-eqz p0, :cond_0

    const-string p0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p1, Landroidx/fragment/app/d;->mHidden:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    iput-boolean p0, p1, Landroidx/fragment/app/d;->mHidden:Z

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mHiddenChanged:Z

    xor-int/2addr p0, v0

    iput-boolean p0, p1, Landroidx/fragment/app/d;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method o()Landroid/os/Parcelable;
    .locals 11

    invoke-direct {p0}, Landroidx/fragment/app/j;->G()V

    invoke-direct {p0}, Landroidx/fragment/app/j;->H()V

    invoke-virtual {p0}, Landroidx/fragment/app/j;->l()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    iget-object v1, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/d;

    if-eqz v6, :cond_1

    iget-object v5, v6, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eq v5, p0, :cond_2

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure saving state: active "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " was removed from the FragmentManager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    :cond_2
    new-instance v5, Landroidx/fragment/app/m;

    invoke-direct {v5, v6}, Landroidx/fragment/app/m;-><init>(Landroidx/fragment/app/d;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v6, Landroidx/fragment/app/d;->mState:I

    if-lez v7, :cond_5

    iget-object v7, v5, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    if-nez v7, :cond_5

    invoke-virtual {p0, v6}, Landroidx/fragment/app/j;->s(Landroidx/fragment/app/d;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v5, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    iget-object v7, v6, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v8, v6, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/d;

    if-nez v7, :cond_3

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure saving state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Landroidx/fragment/app/d;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    :cond_3
    iget-object v8, v5, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    if-nez v8, :cond_4

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v5, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    :cond_4
    iget-object v8, v5, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    invoke-virtual {p0, v8, v9, v7}, Landroidx/fragment/app/j;->a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/d;)V

    iget v7, v6, Landroidx/fragment/app/d;->mTargetRequestCode:I

    if-eqz v7, :cond_6

    iget-object v7, v5, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    iget v9, v6, Landroidx/fragment/app/d;->mTargetRequestCode:I

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    iget-object v7, v6, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v7, v5, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    :cond_6
    :goto_1
    sget-boolean v7, Landroidx/fragment/app/j;->b:Z

    if-eqz v7, :cond_7

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved state of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroidx/fragment/app/m;->m:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v5, v0

    goto/16 :goto_0

    :cond_8
    if-nez v5, :cond_a

    sget-boolean p0, Landroidx/fragment/app/j;->b:Z

    if-eqz p0, :cond_9

    const-string p0, "FragmentManager"

    const-string v0, "saveAllState: no fragments!"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v2

    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/d;

    iget-object v6, v5, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    if-eq v6, p0, :cond_c

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure saving state: active "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " was removed from the FragmentManager"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroidx/fragment/app/j;->a(Ljava/lang/RuntimeException;)V

    :cond_c
    sget-boolean v6, Landroidx/fragment/app/j;->b:Z

    if-eqz v6, :cond_b

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding fragment ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_d
    move-object v1, v2

    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    new-array v2, v0, [Landroidx/fragment/app/b;

    :goto_3
    if-ge v4, v0, :cond_10

    new-instance v5, Landroidx/fragment/app/b;

    iget-object v6, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    invoke-direct {v5, v6}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    aput-object v5, v2, v4

    sget-boolean v5, Landroidx/fragment/app/j;->b:Z

    if-eqz v5, :cond_f

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveAllState: adding back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/fragment/app/j;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_10
    new-instance v0, Landroidx/fragment/app/k;

    invoke-direct {v0}, Landroidx/fragment/app/k;-><init>()V

    iput-object v3, v0, Landroidx/fragment/app/k;->a:Ljava/util/ArrayList;

    iput-object v1, v0, Landroidx/fragment/app/k;->b:Ljava/util/ArrayList;

    iput-object v2, v0, Landroidx/fragment/app/k;->c:[Landroidx/fragment/app/b;

    iget-object v1, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    iget-object v1, v1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/k;->d:Ljava/lang/String;

    :cond_11
    iget p0, p0, Landroidx/fragment/app/j;->e:I

    iput p0, v0, Landroidx/fragment/app/k;->e:I

    return-object v0
.end method

.method public o(Landroidx/fragment/app/d;)V
    .locals 2

    sget-boolean p0, Landroidx/fragment/app/j;->b:Z

    if-eqz p0, :cond_0

    const-string p0, "FragmentManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p1, Landroidx/fragment/app/d;->mHidden:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/fragment/app/d;->mHidden:Z

    iget-boolean p0, p1, Landroidx/fragment/app/d;->mHiddenChanged:Z

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, p1, Landroidx/fragment/app/d;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p4

    const-string v2, "fragment"

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "class"

    invoke-interface {v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroidx/fragment/app/j$d;->a:[I

    move-object v5, p3

    invoke-virtual {p3, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v7, v2

    const/4 v2, -0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v7, :cond_11

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, v7}, Landroidx/fragment/app/g;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    :cond_3
    if-ne v6, v2, :cond_5

    if-ne v9, v2, :cond_5

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-eq v9, v2, :cond_6

    invoke-virtual {p0, v9}, Landroidx/fragment/app/j;->b(I)Landroidx/fragment/app/d;

    move-result-object v3

    :cond_6
    if-nez v3, :cond_7

    if-eqz v10, :cond_7

    invoke-virtual {p0, v10}, Landroidx/fragment/app/j;->a(Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object v3

    :cond_7
    if-nez v3, :cond_8

    if-eq v6, v2, :cond_8

    invoke-virtual {p0, v6}, Landroidx/fragment/app/j;->b(I)Landroidx/fragment/app/d;

    move-result-object v3

    :cond_8
    sget-boolean v2, Landroidx/fragment/app/j;->b:Z

    if-eqz v2, :cond_9

    const-string v2, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreateView: id=0x"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " fname="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " existing="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v3, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/j;->f()Landroidx/fragment/app/g;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroidx/fragment/app/g;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object v2

    iput-boolean v8, v2, Landroidx/fragment/app/d;->mFromLayout:Z

    if-eqz v9, :cond_a

    move v3, v9

    goto :goto_1

    :cond_a
    move v3, v6

    :goto_1
    iput v3, v2, Landroidx/fragment/app/d;->mFragmentId:I

    iput v6, v2, Landroidx/fragment/app/d;->mContainerId:I

    iput-object v10, v2, Landroidx/fragment/app/d;->mTag:Ljava/lang/String;

    iput-boolean v8, v2, Landroidx/fragment/app/d;->mInLayout:Z

    iput-object v0, v2, Landroidx/fragment/app/d;->mFragmentManager:Landroidx/fragment/app/j;

    iget-object v3, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iput-object v3, v2, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    iget-object v3, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v3}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v2, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v1, v4}, Landroidx/fragment/app/d;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2, v8}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;Z)V

    move-object v6, v2

    goto :goto_2

    :cond_b
    iget-boolean v2, v3, Landroidx/fragment/app/d;->mInLayout:Z

    if-nez v2, :cond_10

    iput-boolean v8, v3, Landroidx/fragment/app/d;->mInLayout:Z

    iget-object v2, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iput-object v2, v3, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    iget-object v2, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v2}, Landroidx/fragment/app/h;->i()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v3, Landroidx/fragment/app/d;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v1, v4}, Landroidx/fragment/app/d;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    move-object v6, v3

    :goto_2
    iget v1, v0, Landroidx/fragment/app/j;->m:I

    if-ge v1, v8, :cond_c

    iget-boolean v1, v6, Landroidx/fragment/app/d;->mFromLayout:Z

    if-eqz v1, :cond_c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;IIIZ)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v6}, Landroidx/fragment/app/j;->g(Landroidx/fragment/app/d;)V

    :goto_3
    iget-object v0, v6, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v0, :cond_f

    if-eqz v9, :cond_d

    iget-object v0, v6, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    :cond_d
    iget-object v0, v6, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, v6, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_e
    iget-object v0, v6, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Duplicate id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or parent id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with another fragment for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_4
    return-object v3
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/j;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public p()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/fragment/app/d;->noteStateNotSaved()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p(Landroidx/fragment/app/d;)V
    .locals 4

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/d;->mDetached:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/d;->mDetached:Z

    iget-boolean v1, p1, Landroidx/fragment/app/d;->mAdded:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Landroidx/fragment/app/j;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/d;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Landroidx/fragment/app/j;->r:Z

    :cond_2
    const/4 p0, 0x0

    iput-boolean p0, p1, Landroidx/fragment/app/d;->mAdded:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    return-void
.end method

.method public q(Landroidx/fragment/app/d;)V
    .locals 3

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/d;->mDetached:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/d;->mDetached:Z

    iget-boolean v0, p1, Landroidx/fragment/app/d;->mAdded:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Landroidx/fragment/app/j;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/d;->mAdded:Z

    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->w(Landroidx/fragment/app/d;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Landroidx/fragment/app/j;->r:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    return-void
.end method

.method r(Landroidx/fragment/app/d;)V
    .locals 2

    iget-object v0, p1, Landroidx/fragment/app/d;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :goto_0
    iget-object v0, p1, Landroidx/fragment/app/d;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    iput-object v0, p1, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/fragment/app/j;->A:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method s(Landroidx/fragment/app/d;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/d;->performSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/d;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    iput-object v1, p0, Landroidx/fragment/app/j;->z:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v1, p1, Landroidx/fragment/app/d;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/j;->r(Landroidx/fragment/app/d;)V

    :cond_2
    iget-object p0, p1, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz p0, :cond_4

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_3
    const-string p0, "android:view_state"

    iget-object v1, p1, Landroidx/fragment/app/d;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    iget-boolean p0, p1, Landroidx/fragment/app/d;->mUserVisibleHint:Z

    if-nez p0, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_5
    const-string p0, "android:user_visible_hint"

    iget-boolean p1, p1, Landroidx/fragment/app/d;->mUserVisibleHint:Z

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    return-object v0
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/j;->s:Z

    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    return-void
.end method

.method public t(Landroidx/fragment/app/d;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/d;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/d;->mHost:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/d;->getFragmentManager()Landroidx/fragment/app/i;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    iput-object p1, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->v(Landroidx/fragment/app/d;)V

    iget-object p1, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    invoke-direct {p0, p1}, Landroidx/fragment/app/j;->v(Landroidx/fragment/app/d;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    :goto_0
    invoke-static {p0, v0}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    goto :goto_0

    :goto_1
    const-string p0, "}}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->t:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    return-void
.end method

.method public x()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/j;->u:Z

    invoke-virtual {p0}, Landroidx/fragment/app/j;->l()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->e(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    iput-object v0, p0, Landroidx/fragment/app/j;->o:Landroidx/fragment/app/e;

    iput-object v0, p0, Landroidx/fragment/app/j;->p:Landroidx/fragment/app/d;

    iget-object v1, p0, Landroidx/fragment/app/j;->F:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/j;->G:Landroidx/activity/b;

    invoke-virtual {v1}, Landroidx/activity/b;->b()V

    iput-object v0, p0, Landroidx/fragment/app/j;->F:Landroidx/activity/OnBackPressedDispatcher;

    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/d;->performLowMemory()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method z()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/j;->D()V

    iget-object v0, p0, Landroidx/fragment/app/j;->q:Landroidx/fragment/app/d;

    invoke-direct {p0, v0}, Landroidx/fragment/app/j;->v(Landroidx/fragment/app/d;)V

    return-void
.end method
