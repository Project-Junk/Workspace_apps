.class public Lcom/oppo/camera/ui/preview/j;
.super Landroid/view/View;
.source "GuideLineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/j$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Z

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;

.field private e:Landroid/graphics/Point;

.field private f:Landroid/graphics/Point;

.field private g:Landroid/graphics/Point;

.field private h:Landroid/graphics/Point;

.field private i:Landroid/graphics/Point;

.field private j:Landroid/graphics/Point;

.field private k:Lcom/oppo/camera/ui/preview/j$a;

.field private l:Lcom/oppo/camera/ui/preview/j$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/j;->b:Z

    .line 41
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j;->c:Landroid/graphics/Point;

    .line 42
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j;->d:Landroid/graphics/Point;

    .line 43
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j;->e:Landroid/graphics/Point;

    .line 44
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j;->f:Landroid/graphics/Point;

    .line 45
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j;->g:Landroid/graphics/Point;

    .line 46
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j;->h:Landroid/graphics/Point;

    .line 47
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j;->i:Landroid/graphics/Point;

    .line 48
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j;->j:Landroid/graphics/Point;

    .line 49
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j;->k:Lcom/oppo/camera/ui/preview/j$a;

    .line 50
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/j;->l:Lcom/oppo/camera/ui/preview/j$a;

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/j;->b()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/j;)Landroid/graphics/Paint;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/j;->a:Landroid/graphics/Paint;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/j;->a:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->a:Landroid/graphics/Paint;

    const-string v1, "#80ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/oppo/camera/o/d;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    new-instance v0, Lcom/oppo/camera/ui/preview/j$a;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/j$a;-><init>(Lcom/oppo/camera/ui/preview/j;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/j;->k:Lcom/oppo/camera/ui/preview/j$a;

    .line 68
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->k:Lcom/oppo/camera/ui/preview/j$a;

    new-instance v1, Lcom/oppo/camera/ui/preview/j$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/j$1;-><init>(Lcom/oppo/camera/ui/preview/j;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/j$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    new-instance v0, Lcom/oppo/camera/ui/preview/j$a;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/j$a;-><init>(Lcom/oppo/camera/ui/preview/j;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/j;->l:Lcom/oppo/camera/ui/preview/j$a;

    .line 86
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->l:Lcom/oppo/camera/ui/preview/j$a;

    new-instance v1, Lcom/oppo/camera/ui/preview/j$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/j$2;-><init>(Lcom/oppo/camera/ui/preview/j;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/j$a;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->c:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/j;->c:Landroid/graphics/Point;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->d:Landroid/graphics/Point;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/j;->d:Landroid/graphics/Point;

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->e:Landroid/graphics/Point;

    if-nez v0, :cond_2

    .line 156
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/j;->e:Landroid/graphics/Point;

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->f:Landroid/graphics/Point;

    if-nez v0, :cond_3

    .line 160
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/j;->f:Landroid/graphics/Point;

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->g:Landroid/graphics/Point;

    if-nez v0, :cond_4

    .line 164
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/j;->g:Landroid/graphics/Point;

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->h:Landroid/graphics/Point;

    if-nez v0, :cond_5

    .line 168
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/j;->h:Landroid/graphics/Point;

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->i:Landroid/graphics/Point;

    if-nez v0, :cond_6

    .line 172
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/j;->i:Landroid/graphics/Point;

    .line 175
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->j:Landroid/graphics/Point;

    if-nez v0, :cond_7

    .line 176
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/j;->j:Landroid/graphics/Point;

    :cond_7
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 181
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/j;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/j;->b:Z

    .line 183
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/j;->clearAnimation()V

    .line 184
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/j;->l:Lcom/oppo/camera/ui/preview/j$a;

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/preview/j;->setAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/j;->l:Lcom/oppo/camera/ui/preview/j$a;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/ui/preview/j$a;->a(II)V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 0

    .line 134
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/j;->b:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/j;->b:Z

    const/4 p1, 0x0

    .line 136
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/j;->setVisibility(I)V

    .line 138
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/j;->k:Lcom/oppo/camera/ui/preview/j$a;

    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/j;->clearAnimation()V

    .line 140
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/j;->k:Lcom/oppo/camera/ui/preview/j$a;

    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/preview/j;->setAnimation(Landroid/view/animation/Animation;)V

    .line 141
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/j;->k:Lcom/oppo/camera/ui/preview/j$a;

    const/16 p3, 0x80

    invoke-virtual {p2, p1, p3}, Lcom/oppo/camera/ui/preview/j$a;->a(II)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 108
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/j;->getWidth()I

    move-result v0

    .line 109
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/j;->getHeight()I

    move-result v1

    .line 110
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/j;->c()V

    .line 112
    iget-boolean v2, p0, Lcom/oppo/camera/ui/preview/j;->b:Z

    if-eqz v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/j;->c:Landroid/graphics/Point;

    div-int/lit8 v3, v1, 0x3

    add-int/lit8 v4, v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Point;->set(II)V

    .line 114
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/j;->d:Landroid/graphics/Point;

    add-int/lit8 v6, v0, 0x0

    invoke-virtual {v2, v6, v4}, Landroid/graphics/Point;->set(II)V

    .line 115
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/j;->e:Landroid/graphics/Point;

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Point;->set(II)V

    .line 116
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/j;->f:Landroid/graphics/Point;

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Point;->set(II)V

    .line 117
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/j;->g:Landroid/graphics/Point;

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v3, v0, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Point;->set(II)V

    .line 118
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/j;->h:Landroid/graphics/Point;

    add-int/2addr v1, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Point;->set(II)V

    .line 119
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/j;->i:Landroid/graphics/Point;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Point;->set(II)V

    .line 120
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/j;->j:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 122
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/j;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/j;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 126
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->g:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->g:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->h:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/j;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 128
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->i:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->i:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->j:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/j;->j:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oppo/camera/ui/preview/j;->a:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
