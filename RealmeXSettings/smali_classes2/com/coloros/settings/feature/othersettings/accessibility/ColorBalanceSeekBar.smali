.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;
.super Lcom/color/support/widget/seekbar/ColorSeekBar;
.source "ColorBalanceSeekBar.java"


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

.field private final d:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Rect;

.field private g:F

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 102
    invoke-direct {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->b:Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->d:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    .line 103
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->a:Landroid/content/Context;

    .line 104
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/seekbar/ColorSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->b:Ljava/lang/Object;

    .line 46
    new-instance p2, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->d:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    .line 109
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->a:Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/seekbar/ColorSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->b:Ljava/lang/Object;

    .line 46
    new-instance p2, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->d:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    .line 115
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->a:Landroid/content/Context;

    .line 116
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->a()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 120
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/graphics/Rect;

    const v2, 0x7f0700ea

    .line 122
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0700e9

    .line 123
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->f:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->e:Landroid/graphics/Paint;

    .line 126
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/color/support/c/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->e:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->e:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->d:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    invoke-super {p0, v0}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->c:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->h:I

    return p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->g:F

    return p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method getProxySeekBarListener()Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->d:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    .line 156
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 160
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 162
    invoke-super {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-super {p0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setMax(I)V

    .line 148
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->h:I

    int-to-float p1, p1

    const v0, 0x3cf5c28f    # 0.03f

    mul-float/2addr p1, v0

    .line 149
    iput p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->g:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorBalanceSeekBar;->c:Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
