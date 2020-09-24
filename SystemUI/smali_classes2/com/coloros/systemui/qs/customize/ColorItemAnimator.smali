.class public Lcom/coloros/systemui/qs/customize/ColorItemAnimator;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "ColorItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;,
        Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ColorItemAnimator"

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAlphaInDuration:J

.field private mAlphaOutDuration:J

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxInPageTranslation:I

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v0, 0xfa

    .line 41
    iput-wide v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAlphaInDuration:J

    const-wide/16 v0, 0x32

    .line 42
    iput-wide v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAlphaOutDuration:J

    const/16 v0, 0x438

    .line 43
    iput v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMaxInPageTranslation:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method private animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 201
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 203
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$4;-><init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 419
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 420
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;

    .line 421
    invoke-direct {p0, v1, p2}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->endChangeAnimationIfNecessary(Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, v1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 423
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;)V
    .locals 1

    .line 430
    iget-object v0, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->endChangeAnimationIfNecessary(Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 433
    :cond_0
    iget-object v0, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->endChangeAnimationIfNecessary(Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 439
    iget-object v0, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_0

    .line 440
    iput-object v2, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 441
    :cond_0
    iget-object v0, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_1

    .line 442
    iput-object v2, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move v3, v1

    .line 447
    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 448
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 449
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 450
    invoke-virtual {p0, p2, v3}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_1
    return v3
.end method

.method private resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 541
    sget-object v0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 544
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 545
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 224
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 225
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 226
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 231
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 234
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$5;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$5;-><init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 235
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 253
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    .line 358
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-eqz p2, :cond_0

    .line 361
    invoke-direct {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 362
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 364
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v7, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method animateChangeImpl(Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;)V
    .locals 6

    .line 369
    iget-object v0, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 371
    :goto_0
    iget-object v2, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 372
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 375
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->getChangeDuration()J

    move-result-wide v4

    .line 374
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 376
    iget-object v4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$7;

    invoke-direct {v5, p0, p1, v3, v0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$7;-><init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    if-eqz v1, :cond_3

    .line 396
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 397
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->getChangeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 399
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$8;-><init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 414
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    .line 259
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 260
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int v4, p2, v1

    .line 261
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int v5, p3, p2

    .line 262
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p4, v4

    sub-int p3, p5, v5

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    neg-int p2, p2

    int-to-float p2, p2

    .line 270
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    if-eqz p3, :cond_2

    neg-int p2, p3

    int-to-float p2, p2

    .line 273
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 275
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance p2, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;

    move-object v2, p2

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 9

    .line 280
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v3, p4, p2

    sub-int v5, p5, p3

    .line 285
    iget p3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMaxInPageTranslation:I

    const/4 p5, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lt p2, p3, :cond_0

    if-ge p4, p3, :cond_0

    .line 288
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 289
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move v2, p5

    move v7, v1

    goto :goto_0

    .line 290
    :cond_0
    iget p3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMaxInPageTranslation:I

    if-ge p2, p3, :cond_1

    if-lt p4, p3, :cond_1

    .line 293
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move v7, p5

    move v2, v1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 298
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_2
    if-eqz v5, :cond_3

    .line 301
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    move v2, v1

    move v7, v2

    .line 308
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 309
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_4

    .line 310
    iget-wide p2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAlphaInDuration:J

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    iget-wide p2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAlphaOutDuration:J

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->getMoveDuration()J

    move-result-wide p2

    .line 311
    :goto_1
    invoke-virtual {v8, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;

    move-object v0, p3

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$6;-><init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;ZILandroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;ZLandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 352
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 196
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 684
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p0

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

.method cancelAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 660
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    .line 661
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .locals 1

    .line 569
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .line 456
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 458
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 460
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 461
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;

    .line 462
    iget-object v3, v3, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_0

    .line 463
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 464
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 465
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 466
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 470
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 471
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 472
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 475
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 476
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 479
    :cond_3
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    .line 480
    iget-object v4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 481
    invoke-direct {p0, v4, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 482
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 483
    iget-object v4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 486
    :cond_5
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_8

    .line 487
    iget-object v4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 488
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_7

    .line 489
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;

    .line 490
    iget-object v6, v6, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v6, p1, :cond_6

    .line 491
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 492
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 493
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 494
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 495
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 496
    iget-object v4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 502
    :cond_8
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_a

    .line 503
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 504
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 505
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 506
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 507
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 508
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 515
    :cond_a
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 521
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 527
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 533
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .locals 7

    .line 576
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 578
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;

    .line 579
    iget-object v3, v2, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 580
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 581
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 582
    iget-object v1, v2, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 583
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 587
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 588
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 589
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2

    .line 593
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 594
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 595
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 596
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_3

    .line 600
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->endChangeAnimationIfNecessary(Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 603
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 607
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    .line 609
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 610
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_5
    if-ltz v4, :cond_6

    .line 612
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;

    .line 613
    iget-object v6, v5, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 614
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 615
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 616
    invoke-virtual {v6, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 617
    iget-object v5, v5, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v5}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 618
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 619
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 620
    iget-object v5, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 624
    :cond_7
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_a

    .line 626
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 627
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_7
    if-ltz v3, :cond_9

    .line 629
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 630
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 631
    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 632
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 633
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 634
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 635
    iget-object v4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 639
    :cond_a
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_d

    .line 641
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 642
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_c

    .line 644
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->endChangeAnimationIfNecessary(Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;)V

    .line 645
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 646
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 651
    :cond_d
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 652
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 653
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 654
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 656
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public getAlphaInDuration()J
    .locals 2

    .line 700
    iget-wide v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAlphaInDuration:J

    return-wide v0
.end method

.method public getAlphaOutDuration()J
    .locals 2

    .line 704
    iget-wide v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAlphaOutDuration:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 552
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 553
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 554
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 555
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 556
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 557
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 558
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 559
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 560
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public runPendingAnimations()V
    .locals 10

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 105
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 106
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 107
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 114
    invoke-direct {p0, v5}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v4, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 119
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v6, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v6, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v6, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 123
    new-instance v6, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$1;

    invoke-direct {v6, p0, v5}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$1;-><init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;

    iget-object v5, v5, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 136
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->getRemoveDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 138
    :cond_2
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 143
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v6, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v6, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v6, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 147
    new-instance v6, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$2;

    invoke-direct {v6, p0, v5}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$2;-><init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_4

    .line 158
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;

    iget-object v5, v5, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 159
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->getRemoveDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 161
    :cond_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v5, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    iget-object v5, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v5, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 170
    new-instance v5, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$3;

    invoke-direct {v5, p0, v3}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator$3;-><init>(Lcom/coloros/systemui/qs/customize/ColorItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 188
    :cond_6
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :cond_7
    :goto_3
    const-wide/16 v6, 0x0

    if-eqz v0, :cond_8

    .line 181
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    goto :goto_4

    :cond_8
    move-wide v8, v6

    :goto_4
    if-eqz v1, :cond_9

    .line 182
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->getMoveDuration()J

    move-result-wide v0

    goto :goto_5

    :cond_9
    move-wide v0, v6

    :goto_5
    if-eqz v2, :cond_a

    .line 183
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 184
    :cond_a
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v8, v0

    .line 185
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 186
    invoke-static {p0, v5, v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_b
    :goto_6
    return-void
.end method

.method public setAlphaInDuration(J)V
    .locals 0

    .line 688
    iput-wide p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAlphaInDuration:J

    return-void
.end method

.method public setAlphaOutDuration(J)V
    .locals 0

    .line 692
    iput-wide p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mAlphaOutDuration:J

    return-void
.end method

.method public setMaxInPageTranslation(I)V
    .locals 0

    .line 696
    iput p1, p0, Lcom/coloros/systemui/qs/customize/ColorItemAnimator;->mMaxInPageTranslation:I

    return-void
.end method
