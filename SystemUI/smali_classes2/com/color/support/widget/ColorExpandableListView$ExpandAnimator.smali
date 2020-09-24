.class Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;
.super Landroid/animation/ValueAnimator;
.source "ColorExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpandAnimator"
.end annotation


# instance fields
.field private isFirst:Z

.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/color/support/widget/ColorExpandableListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/color/support/widget/ColorExpandableListView;JLandroid/animation/TimeInterpolator;)V
    .locals 1

    .line 646
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 647
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->reference:Ljava/lang/ref/WeakReference;

    .line 648
    invoke-virtual {p0, p2, p3}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 649
    invoke-virtual {p0, p4}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;)Z
    .locals 0

    .line 642
    iget-boolean p0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->isFirst:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;Z)Z
    .locals 0

    .line 642
    iput-boolean p1, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->isFirst:Z

    return p1
.end method

.method static synthetic access$800(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->reference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;)V
    .locals 0

    .line 642
    invoke-direct {p0}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->endAnimator()V

    return-void
.end method

.method private endAnimator()V
    .locals 0

    .line 705
    invoke-virtual {p0}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->removeAllUpdateListeners()V

    .line 706
    invoke-virtual {p0}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->end()V

    return-void
.end method


# virtual methods
.method public setParam(ZZILandroid/view/View;Lcom/color/support/widget/ColorExpandableListView$GroupInfo;II)V
    .locals 9

    move-object v7, p0

    const/4 v0, 0x1

    .line 654
    iput-boolean v0, v7, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->isFirst:Z

    const/4 v1, 0x2

    .line 655
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p6, v1, v2

    aput p7, v1, v0

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->setIntValues([I)V

    .line 656
    invoke-virtual {p0}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->removeAllUpdateListeners()V

    .line 657
    new-instance v8, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;

    move-object v0, v8

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator$1;-><init>(Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;ZIZLandroid/view/View;Lcom/color/support/widget/ColorExpandableListView$GroupInfo;)V

    invoke-virtual {p0, v8}, Lcom/color/support/widget/ColorExpandableListView$ExpandAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
