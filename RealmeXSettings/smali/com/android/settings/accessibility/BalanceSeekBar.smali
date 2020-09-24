.class public Lcom/android/settings/accessibility/BalanceSeekBar;
.super Landroid/widget/SeekBar;
.source "BalanceSeekBar.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private c:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Rect;

.field private g:F

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "com.android.internal.R.attr.seekBarStyle"

    .line 102
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/accessibility/BalanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/accessibility/BalanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->b:Ljava/lang/Object;

    .line 46
    new-instance p2, Lcom/android/settings/accessibility/BalanceSeekBar$1;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/BalanceSeekBar$1;-><init>(Lcom/android/settings/accessibility/BalanceSeekBar;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 111
    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->a:Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/accessibility/BalanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 113
    new-instance p2, Landroid/graphics/Rect;

    const p3, 0x7f0700ea

    .line 114
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const p4, 0x7f0700e9

    .line 115
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const/4 p4, 0x0

    invoke-direct {p2, p4, p4, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->f:Landroid/graphics/Rect;

    .line 116
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->e:Landroid/graphics/Paint;

    .line 118
    iget-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->e:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->e:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/BalanceSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accessibility/BalanceSeekBar;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->c:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/accessibility/BalanceSeekBar;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->h:I

    return p0
.end method

.method static synthetic d(Lcom/android/settings/accessibility/BalanceSeekBar;)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->g:F

    return p0
.end method

.method static synthetic e(Lcom/android/settings/accessibility/BalanceSeekBar;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method getProxySeekBarListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->d:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/BalanceSeekBar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->f:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 152
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
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

    .line 136
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 138
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->h:I

    int-to-float p1, p1

    const v0, 0x3cf5c28f    # 0.03f

    mul-float/2addr p1, v0

    .line 139
    iput p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->g:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/accessibility/BalanceSeekBar;->c:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
