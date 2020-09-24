.class public Lcom/coloros/settings/feature/weather/view/HeadersGridView;
.super Landroid/widget/GridView;
.source "HeadersGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;,
        Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;,
        Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;,
        Lcom/coloros/settings/feature/weather/view/HeadersGridView$h;,
        Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;,
        Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;,
        Lcom/coloros/settings/feature/weather/view/HeadersGridView$d;,
        Lcom/coloros/settings/feature/weather/view/HeadersGridView$c;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private B:Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;

.field private C:Landroid/widget/AbsListView$OnScrollListener;

.field private D:I

.field private E:Landroid/view/View;

.field private F:Ljava/lang/Runnable;

.field private G:I

.field private H:I

.field private I:Landroid/database/DataSetObserver;

.field public a:Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;

.field public b:Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;

.field protected c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

.field protected d:Z

.field protected e:I

.field protected f:I

.field g:Lcom/coloros/settings/feature/weather/view/HeadersGridView$c;

.field h:Lcom/coloros/settings/feature/weather/view/HeadersGridView$d;

.field private final j:Landroid/graphics/Rect;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:J

.field private q:I

.field private r:Z

.field private s:I

.field private t:Z

.field private u:F

.field private v:I

.field private w:Z

.field private x:I

.field private y:Landroid/widget/AdapterView$OnItemClickListener;

.field private z:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error supporting platform "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    .line 185
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 91
    iput-boolean p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->k:Z

    const/4 p3, 0x1

    .line 93
    iput-boolean p3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->l:Z

    const-wide/16 v0, -0x1

    .line 101
    iput-wide v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->p:J

    .line 109
    iput-boolean p3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->t:Z

    .line 120
    iput p3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->x:I

    .line 136
    iput p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->D:I

    .line 168
    new-instance p3, Lcom/coloros/settings/feature/weather/view/HeadersGridView$1;

    invoke-direct {p3, p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$1;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)V

    iput-object p3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->I:Landroid/database/DataSetObserver;

    .line 190
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 191
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 193
    iget-boolean p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->w:Z

    if-nez p2, :cond_0

    const/4 p2, -0x1

    .line 194
    iput p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->v:I

    .line 197
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->G:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/weather/view/HeadersGridView;I)J
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1628
    iget-wide p0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->p:J

    return-wide p0

    .line 1630
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getFirstVisiblePosition()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;
    .locals 19

    move/from16 v0, p2

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-object p1

    .line 791
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    .line 792
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 793
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 795
    invoke-static/range {p1 .. p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b(Landroid/view/MotionEvent;)[I

    move-result-object v7

    .line 796
    invoke-static/range {p1 .. p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v8

    .line 797
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 798
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v10

    .line 799
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v11

    .line 800
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    .line 801
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v13

    .line 802
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v14

    .line 803
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v15

    move/from16 p1, v15

    move-object/from16 v15, p0

    .line 805
    invoke-virtual {v15, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v16, 0x0

    move/from16 v15, v16

    :goto_0
    if-ge v15, v6, :cond_1

    move/from16 v16, v14

    .line 807
    aget-object v14, v8, v15

    move/from16 v17, v13

    iget v13, v14, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v18, v12

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v13, v12

    iput v13, v14, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    move/from16 v13, v17

    move/from16 v12, v18

    goto :goto_0

    :cond_1
    move/from16 v18, v12

    move/from16 v17, v13

    move/from16 v16, v14

    move-wide v0, v1

    move-wide v2, v3

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move/from16 v11, v18

    move/from16 v12, v17

    move/from16 v13, v16

    move/from16 v14, p1

    .line 809
    invoke-static/range {v0 .. v14}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c()V

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;
    .locals 4

    .line 148
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 149
    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 151
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v1, v2

    .line 152
    aget-object v3, v1, v2

    invoke-virtual {p0, v2, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)Ljava/lang/Runnable;
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->F:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b()V
    .locals 5

    .line 634
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 639
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 642
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 648
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 649
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_2

    .line 650
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1

    .line 652
    :cond_2
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 654
    :goto_1
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 656
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    if-eqz v0, :cond_3

    .line 657
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    .line 660
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 659
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private b(I)V
    .locals 11

    .line 671
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->getCount()I

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->l:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    .line 675
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 683
    :cond_1
    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->x:I

    sub-int v1, p1, v1

    if-gez v1, :cond_2

    move v1, p1

    .line 688
    :cond_2
    iget v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->x:I

    add-int/2addr v2, p1

    .line 689
    iget-object v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    move v2, p1

    .line 693
    :cond_3
    iget v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->H:I

    if-eqz v3, :cond_6

    if-gez v3, :cond_5

    .line 696
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b(I)J

    .line 697
    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->x:I

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 698
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gtz v1, :cond_4

    .line 699
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b(I)J

    move-result-wide v3

    move v1, v2

    goto :goto_1

    .line 702
    :cond_4
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b(I)J

    move-result-wide v3

    goto :goto_0

    .line 705
    :cond_5
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lez v2, :cond_6

    .line 706
    iget v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->H:I

    if-ge v2, v3, :cond_6

    .line 707
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b(I)J

    move-result-wide v3

    goto :goto_1

    .line 710
    :cond_6
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->b(I)J

    move-result-wide v3

    :goto_0
    move v1, p1

    .line 714
    :goto_1
    iget-wide v5, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->p:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_7

    .line 715
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    .line 716
    invoke-virtual {v2, v1, p0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 715
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c(Landroid/view/View;)V

    .line 717
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b()V

    .line 718
    iput-wide v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->p:J

    .line 721
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v2, 0x0

    const v3, 0x1869f

    move v4, v3

    move-object v3, v2

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_a

    .line 728
    invoke-super {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 731
    iget-boolean v6, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->m:Z

    if-eqz v6, :cond_8

    .line 732
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    goto :goto_3

    .line 734
    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    :goto_3
    if-ltz v6, :cond_9

    .line 741
    iget-object v7, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    .line 742
    invoke-virtual {p0, v5}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->getItemId(I)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_9

    if-ge v6, v4, :cond_9

    move-object v3, v5

    move v4, v6

    .line 727
    :cond_9
    iget v5, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->x:I

    add-int/2addr v2, v5

    goto :goto_2

    .line 749
    :cond_a
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getHeaderHeight()I

    move-result v1

    if-eqz v3, :cond_f

    if-nez p1, :cond_b

    .line 754
    invoke-super {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-lez p1, :cond_b

    iget-boolean p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->m:Z

    if-nez p1, :cond_b

    .line 756
    iput v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    return-void

    .line 758
    :cond_b
    iget-boolean p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->m:Z

    if-eqz p1, :cond_d

    .line 759
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result p1

    .line 760
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    .line 759
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    .line 761
    iget p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingTop()I

    move-result v0

    if-ge p1, v0, :cond_c

    .line 762
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingTop()I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_4

    :cond_c
    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    :goto_4
    iput v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    return-void

    .line 765
    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    .line 766
    iget p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    if-gez p1, :cond_e

    move p1, v1

    :cond_e
    iput p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    return-void

    .line 772
    :cond_f
    iput v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    .line 773
    iget-boolean p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->m:Z

    if-eqz p1, :cond_10

    .line 774
    iget p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingTop()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    :cond_10
    :goto_5
    return-void
.end method

.method private static b(Landroid/view/MotionEvent;)[I
    .locals 4

    .line 158
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 159
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 161
    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic c(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    .line 665
    iput v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    const/4 v0, 0x0

    .line 666
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c(Landroid/view/View;)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 667
    iput-wide v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->p:J

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b(Landroid/view/View;)V

    .line 782
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(Landroid/view/View;)V

    .line 783
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)I
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWindowAttachCount()I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->k:Z

    return p0
.end method

.method private getHeaderHeight()I
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 621
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    return-object p1

    .line 220
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Landroid/view/View;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1035
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 1036
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1037
    const-class v2, Landroid/view/View;

    const-string v3, "dispatchAttachedToWindow"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-string v6, "android.view.View$AttachInfo"

    .line 1038
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    .line 1037
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1039
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1040
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v7

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1052
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1050
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p1

    .line 1048
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception p1

    .line 1046
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Ljava/lang/Exception;)V

    throw v0

    :catch_4
    move-exception p1

    .line 1044
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Ljava/lang/Exception;)V

    throw v0

    :catch_5
    move-exception p1

    .line 1042
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Ljava/lang/Exception;)V

    throw v0
.end method

.method final b(Landroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1062
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchDetachedFromWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 1063
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1064
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1072
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1070
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p1

    .line 1068
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Ljava/lang/Exception;)V

    throw v0

    :catch_3
    move-exception p1

    .line 1066
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Ljava/lang/Exception;)V

    throw v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    .line 817
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b(I)V

    .line 821
    :cond_0
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-boolean v4, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->l:Z

    if-eqz v4, :cond_1

    .line 822
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 823
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getHeaderHeight()I

    move-result v9

    .line 824
    iget v4, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    sub-int/2addr v4, v9

    if-eqz v1, :cond_3

    .line 828
    iget-boolean v5, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->t:Z

    if-eqz v5, :cond_3

    .line 829
    iget-boolean v5, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    if-eqz v5, :cond_2

    .line 830
    iget-object v5, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 831
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 833
    :cond_2
    iget-object v5, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 834
    iget-object v5, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 836
    :goto_1
    iget-object v5, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    iget v6, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 837
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getHeight()I

    move-result v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 840
    iget-object v5, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    invoke-virtual {v8, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 844
    :cond_3
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 847
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 849
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getFirstVisiblePosition()I

    move-result v6

    move v7, v3

    :goto_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getLastVisiblePosition()I

    move-result v10

    if-gt v6, v10, :cond_5

    .line 850
    invoke-virtual {p0, v6}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_4

    .line 852
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_4
    iget v10, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->x:I

    add-int/2addr v6, v10

    add-int/2addr v7, v10

    goto :goto_2

    :cond_5
    move v6, v3

    .line 859
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    if-ge v6, v7, :cond_d

    .line 860
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 862
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 863
    instance-of v13, v12, Landroid/view/View;

    if-eqz v13, :cond_c

    .line 864
    check-cast v12, Landroid/view/View;

    .line 869
    move-object v13, v7

    check-cast v13, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;

    invoke-virtual {v13}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$HeaderFillerView;->getHeaderId()I

    move-result v13

    int-to-long v13, v13

    iget-wide v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->p:J

    cmp-long v2, v13, v2

    if-nez v2, :cond_6

    .line 870
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_6

    iget-boolean v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->l:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    .line 871
    :goto_4
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_b

    if-nez v2, :cond_b

    .line 876
    iget-boolean v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    if-eqz v2, :cond_7

    .line 877
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v2

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_5

    .line 880
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 879
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_5
    const/4 v3, 0x0

    .line 883
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 884
    invoke-virtual {v12, v2, v11}, Landroid/view/View;->measure(II)V

    .line 886
    iget-boolean v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    if-eqz v2, :cond_8

    .line 887
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getRight()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-virtual {v12, v2, v3, v11, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 889
    :cond_8
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v11

    add-int/2addr v2, v11

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getRight()I

    move-result v11

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingRight()I

    move-result v13

    sub-int/2addr v11, v13

    .line 890
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v13

    .line 889
    invoke-virtual {v12, v2, v3, v11, v13}, Landroid/view/View;->layout(IIII)V

    .line 893
    :goto_6
    iget-boolean v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    if-eqz v2, :cond_9

    .line 894
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 895
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_7

    .line 897
    :cond_9
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 898
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v3, v11

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 901
    :goto_7
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 902
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 903
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 904
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 905
    iget-boolean v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    if-eqz v2, :cond_a

    .line 906
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v10, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_8

    .line 908
    :cond_a
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 910
    :goto_8
    invoke-virtual {v12, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 911
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_b
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_c
    return-void

    :cond_d
    if-eqz v1, :cond_e

    .line 914
    iget-boolean v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->t:Z

    if-eqz v2, :cond_e

    .line 915
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    :cond_e
    if-nez v1, :cond_f

    return-void

    .line 923
    :cond_f
    :goto_9
    iget-boolean v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    if-eqz v1, :cond_10

    .line 924
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v1

    goto :goto_a

    .line 926
    :cond_10
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 928
    :goto_a
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eq v2, v1, :cond_13

    .line 930
    iget-boolean v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    if-eqz v1, :cond_11

    .line 931
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v1

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_b

    .line 934
    :cond_11
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 933
    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_b
    const/4 v2, 0x0

    .line 937
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 938
    iget-object v5, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {v5, v1, v3}, Landroid/view/View;->measure(II)V

    .line 939
    iget-boolean v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    if-eqz v1, :cond_12

    .line 940
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getRight()I

    move-result v5

    iget-object v6, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v1, v3, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_c

    .line 942
    :cond_12
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    .line 943
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 942
    invoke-virtual {v1, v3, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_c

    :cond_13
    const/4 v2, 0x0

    .line 947
    :goto_c
    iget-boolean v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    if-eqz v1, :cond_14

    .line 948
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 949
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_d

    .line 951
    :cond_14
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 952
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 954
    :goto_d
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    add-int v2, v4, v9

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 955
    iget-boolean v2, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->m:Z

    if-eqz v2, :cond_15

    .line 956
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingTop()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    .line 958
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 961
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 962
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->j:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 964
    iget-boolean v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    if-eqz v1, :cond_16

    int-to-float v1, v4

    .line 965
    invoke-virtual {v8, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_f

    .line 967
    :cond_16
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v4

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 970
    :goto_f
    iget v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    if-eq v1, v9, :cond_17

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 971
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    mul-int/lit16 v1, v1, 0xff

    div-int v6, v1, v9

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 975
    :cond_17
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 977
    iget v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    if-eq v1, v9, :cond_18

    .line 978
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 980
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getStickiedHeader()Landroid/view/View;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    return-object v0
.end method

.method public getStickyHeaderIsTranscluent()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->y:Landroid/widget/AdapterView$OnItemClickListener;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    .line 242
    invoke-virtual {v1, p3}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c(I)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    move-result-object p3

    iget v3, p3, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 241
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->z:Landroid/widget/AdapterView$OnItemLongClickListener;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    .line 248
    invoke-virtual {v1, p3}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c(I)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    move-result-object p3

    iget v3, p3, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 247
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->A:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    .line 254
    invoke-virtual {v1, p3}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->c(I)Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;

    move-result-object p3

    iget v3, p3, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper$a;->b:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 253
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 985
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->v:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 987
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->o:I

    if-lez v0, :cond_1

    .line 988
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 989
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 988
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 990
    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->o:I

    div-int v1, v0, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    :goto_0
    if-eq v1, v2, :cond_2

    .line 995
    iget v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->o:I

    mul-int/2addr v3, v1

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->s:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    if-le v3, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 1012
    :cond_2
    :goto_1
    iput v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->x:I

    goto :goto_2

    .line 1016
    :cond_3
    iput v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->x:I

    .line 1020
    :goto_2
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    if-eqz v0, :cond_4

    .line 1021
    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->x:I

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a(I)V

    .line 1024
    :cond_4
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b()V

    .line 1026
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->A:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 264
    check-cast p1, Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;

    .line 266
    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 267
    iget-boolean p1, p1, Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;->a:Z

    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->l:Z

    .line 269
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 274
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;

    invoke-direct {v1, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;-><init>(Landroid/os/Parcelable;)V

    .line 277
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->l:Z

    iput-boolean v0, v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView$g;->a:Z

    return-object v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->C:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 288
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x8

    if-lt p1, p3, :cond_1

    .line 289
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b(I)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->C:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 299
    :cond_0
    iput p2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->D:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 305
    iget-boolean v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->k:Z

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 307
    iget v5, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    invoke-virtual {p0, v5}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(I)Landroid/view/View;

    move-result-object v5

    .line 308
    iget v6, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    if-ne v6, v2, :cond_0

    move-object v6, v5

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0, v6}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_0
    if-eq v0, v4, :cond_1

    const/4 v7, 0x3

    if-ne v0, v7, :cond_2

    .line 311
    :cond_1
    iput-boolean v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->k:Z

    :cond_2
    if-eqz v5, :cond_3

    .line 314
    iget v7, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    invoke-direct {p0, p1, v7}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 315
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 316
    new-instance v7, Lcom/coloros/settings/feature/weather/view/HeadersGridView$2;

    invoke-direct {v7, p0, v6}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$2;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Landroid/view/View;)V

    .line 322
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    int-to-long v8, v8

    .line 316
    invoke-virtual {v5, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v7

    .line 324
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v8, v6

    .line 323
    invoke-virtual {p0, v3, v5, v7, v8}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->invalidate(IIII)V

    :cond_3
    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eqz v0, :cond_12

    if-eq v0, v4, :cond_7

    if-eq v0, v5, :cond_4

    goto/16 :goto_6

    .line 362
    :cond_4
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    if-eq v0, v6, :cond_1a

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->u:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->G:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    .line 366
    iput v6, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    .line 368
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 370
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 371
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 373
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 375
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    :cond_6
    iput v6, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    goto/16 :goto_6

    .line 382
    :cond_7
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    if-ne v0, v2, :cond_8

    .line 383
    iput v6, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    return v4

    :cond_8
    if-eq v0, v6, :cond_1a

    .line 386
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    if-eq v0, v6, :cond_1a

    .line 390
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(I)Landroid/view/View;

    move-result-object p1

    if-nez v1, :cond_11

    if-eqz p1, :cond_11

    .line 393
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    if-eqz v0, :cond_9

    .line 394
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 397
    :cond_9
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->B:Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;

    if-nez v0, :cond_a

    .line 398
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;

    invoke-direct {v0, p0, v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->B:Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;

    .line 401
    :cond_a
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->B:Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;

    .line 402
    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    iput v1, v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->a:I

    .line 403
    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->a()V

    .line 405
    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    if-eqz v1, :cond_c

    if-ne v1, v4, :cond_b

    goto :goto_1

    .line 445
    :cond_b
    iget-boolean p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->d:Z

    if-nez p1, :cond_11

    .line 446
    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;->run()V

    goto :goto_3

    .line 406
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 408
    iget v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;

    goto :goto_2

    :cond_d
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView$a;

    :goto_2
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    :cond_e
    iget-boolean v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->d:Z

    if-nez v1, :cond_10

    .line 418
    iput v4, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    .line 419
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 420
    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setPressed(Z)V

    .line 421
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->F:Ljava/lang/Runnable;

    if-eqz v1, :cond_f

    .line 422
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 424
    :cond_f
    new-instance v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$3;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Landroid/view/View;Lcom/coloros/settings/feature/weather/view/HeadersGridView$e;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->F:Ljava/lang/Runnable;

    .line 440
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->F:Ljava/lang/Runnable;

    .line 441
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    int-to-long v0, v0

    .line 440
    invoke-virtual {p0, p1, v0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 443
    :cond_10
    iput v6, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    .line 450
    :cond_11
    :goto_3
    iput v6, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    return v4

    .line 330
    :cond_12
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;

    if-nez v0, :cond_13

    .line 331
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;-><init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;

    .line 333
    :cond_13
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->b:Lcom/coloros/settings/feature/weather/view/HeadersGridView$b;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v7, v1

    invoke-virtual {p0, v0, v7, v8}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    .line 336
    iput v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->u:F

    .line 1596
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->E:Landroid/view/View;

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->q:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_14

    move v7, v2

    goto :goto_5

    .line 1601
    :cond_14
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getFirstVisiblePosition()I

    move-result v1

    move v7, v3

    :goto_4
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getLastVisiblePosition()I

    move-result v8

    if-gt v1, v8, :cond_16

    .line 1602
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_15

    .line 1604
    invoke-virtual {p0, v7}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1606
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 1607
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gtz v9, :cond_15

    int-to-float v8, v8

    cmpl-float v8, v0, v8

    if-ltz v8, :cond_15

    goto :goto_5

    .line 1612
    :cond_15
    iget v8, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->x:I

    add-int/2addr v1, v8

    add-int/2addr v7, v8

    goto :goto_4

    :cond_16
    move v7, v6

    .line 337
    :goto_5
    iput v7, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    .line 338
    iget v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    if-eq v0, v6, :cond_1a

    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->D:I

    if-eq v1, v5, :cond_1a

    .line 344
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 346
    iget v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    .line 347
    invoke-direct {p0, p1, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a(Landroid/view/MotionEvent;I)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 348
    iput-boolean v4, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->k:Z

    .line 349
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 351
    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 352
    iget p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->e:I

    if-eq p1, v2, :cond_18

    .line 353
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 355
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getWidth()I

    move-result v1

    .line 356
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    .line 355
    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->invalidate(IIII)V

    .line 359
    :cond_19
    iput v3, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->f:I

    return v4

    .line 453
    :cond_1a
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 51
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->I:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 491
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->n:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->m:Z

    .line 495
    :cond_1
    check-cast p1, Lcom/coloros/settings/feature/weather/view/a;

    .line 497
    new-instance v0, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/weather/view/HeadersGridView;Lcom/coloros/settings/feature/weather/view/a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    .line 498
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->I:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 499
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c()V

    .line 500
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1

    .line 504
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->l:Z

    if-eq p1, v0, :cond_0

    .line 505
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->l:Z

    .line 506
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 512
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 513
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->m:Z

    const/4 p1, 0x1

    .line 514
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->n:Z

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0

    .line 519
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 520
    iput p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->o:I

    return-void
.end method

.method public setHeadersIgnorePadding(Z)V
    .locals 0

    .line 530
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->r:Z

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    .line 535
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 536
    iput p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->s:I

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 541
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v0, 0x1

    .line 542
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->w:Z

    .line 543
    iput p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->v:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->c:Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/weather/view/HeadersBaseAdapterWrapper;->a(I)V

    :cond_0
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/coloros/settings/feature/weather/view/HeadersGridView$c;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->g:Lcom/coloros/settings/feature/weather/view/HeadersGridView$c;

    return-void
.end method

.method public setOnHeaderLongClickListener(Lcom/coloros/settings/feature/weather/view/HeadersGridView$d;)V
    .locals 1

    .line 554
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 555
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setLongClickable(Z)V

    .line 557
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->h:Lcom/coloros/settings/feature/weather/view/HeadersGridView$d;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->y:Landroid/widget/AdapterView$OnItemClickListener;

    .line 563
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->z:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 570
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->A:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 577
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->C:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setStickyHeaderIsTranscluent(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 586
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->t:Z

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0

    .line 591
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 592
    iput p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->H:I

    return-void
.end method
