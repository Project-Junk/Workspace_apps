.class public Lcom/oppo/camera/sticker/ui/FooterGridView;
.super Landroid/widget/GridView;
.source "FooterGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/sticker/ui/FooterGridView$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->a:Z

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->a:Z

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->a:Z

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->b:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/sticker/ui/FooterGridView;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->a:Z

    return p0
.end method

.method private getRowHeight()I
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    instance-of v2, v0, Lcom/oppo/camera/sticker/ui/FooterGridView$a;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/oppo/camera/sticker/ui/FooterGridView$a;

    .line 112
    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/FooterGridView$a;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/oppo/camera/sticker/ui/FooterGridView$a;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    if-nez v2, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    .line 124
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :cond_1
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v2, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v3, v1, v2}, Lcom/oppo/camera/sticker/ui/FooterGridView;->getChildMeasureSpec(III)I

    move-result v2

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_2
    return v1
.end method


# virtual methods
.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 11

    .line 55
    invoke-super {p0, p1}, Landroid/widget/GridView;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 56
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->getWidth()I

    move-result v0

    .line 57
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->getHeight()I

    move-result v1

    .line 59
    iget-object v2, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->b:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 60
    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v1

    .line 61
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f0501df

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 62
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0501de

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 63
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->b:Landroid/graphics/Paint;

    .line 64
    iget-object v3, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v0

    int-to-float v8, v1

    .line 67
    iget-object v9, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->b:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    const-string v0, "FooterGridView"

    const-string v1, "onLayout"

    .line 88
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->a:Z

    .line 91
    invoke-super/range {p0 .. p5}, Landroid/widget/GridView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const-string v0, "FooterGridView"

    const-string v1, "onMeasure"

    .line 72
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/oppo/camera/sticker/ui/FooterGridView;->a:Z

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 77
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    instance-of p2, p1, Lcom/oppo/camera/sticker/ui/FooterGridView$a;

    if-eqz p2, :cond_0

    .line 80
    check-cast p1, Lcom/oppo/camera/sticker/ui/FooterGridView$a;

    .line 81
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->getNumColumns()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oppo/camera/sticker/ui/FooterGridView$a;->a(I)V

    .line 82
    invoke-direct {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->getRowHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oppo/camera/sticker/ui/FooterGridView$a;->b(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FooterGridView"

    .line 319
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 326
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Lcom/oppo/camera/sticker/ui/a;)V
    .locals 2

    .line 95
    new-instance v0, Lcom/oppo/camera/sticker/ui/FooterGridView$a;

    invoke-direct {v0, p0, p1}, Lcom/oppo/camera/sticker/ui/FooterGridView$a;-><init>(Lcom/oppo/camera/sticker/ui/FooterGridView;Lcom/oppo/camera/sticker/ui/a;)V

    .line 96
    invoke-virtual {p0}, Lcom/oppo/camera/sticker/ui/FooterGridView;->getNumColumns()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/oppo/camera/sticker/ui/FooterGridView$a;->a(I)V

    .line 102
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
