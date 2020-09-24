.class public final Lcom/coloros/settings/feature/display/screencolortemp/a;
.super Ljava/lang/Object;
.source "ScreenColorTemperatureController.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/screencolortemp/a$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;


# instance fields
.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Landroid/content/ContentResolver;

.field private e:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/coloros/settings/feature/display/screencolortemp/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "color_display_level"

    .line 41
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/display/screencolortemp/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->b:Z

    .line 72
    iput-object p1, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->c:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->d:Landroid/content/ContentResolver;

    .line 74
    iput-object p2, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->e:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    .line 75
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->e:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setMax(I)V

    .line 79
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->e:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setAbsorbValues([F)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070262

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x7f07028d

    .line 86
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr v1, p2

    .line 90
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->e:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070261

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 90
    invoke-virtual {p2, p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setAbsorbRatio(F)V

    .line 95
    new-instance p1, Lcom/coloros/settings/feature/display/screencolortemp/a$a;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/feature/display/screencolortemp/a$a;-><init>(Lcom/coloros/settings/feature/display/screencolortemp/a;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->i:Lcom/coloros/settings/feature/display/screencolortemp/a$a;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static a(F)I
    .locals 4

    const/4 v0, 0x0

    sub-float/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    const v0, 0x3eae147b    # 0.34f

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method private a(I)V
    .locals 3

    int-to-float p1, p1

    const v0, 0x3eae147b    # 0.34f

    mul-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    add-float/2addr p1, v0

    .line 147
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->d:Landroid/content/ContentResolver;

    const/4 v1, -0x2

    const-string v2, "color_display_level"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->d:Landroid/content/ContentResolver;

    const-string v2, "color_eyeprotect_level"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/screencolortemp/a;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screencolortemp/a;->d()V

    return-void
.end method

.method private a(ZI)V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->b:Z

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/display/screencolortemp/a;->a(I)V

    :cond_1
    if-nez p1, :cond_2

    .line 1154
    iget-object p1, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->d:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    .line 172
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/display/screencolortemp/a;->a(I)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/screencolortemp/a;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/screencolortemp/a;)Landroid/content/ContentResolver;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->d:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic c()Landroid/net/Uri;
    .locals 1

    .line 34
    sget-object v0, Lcom/coloros/settings/feature/display/screencolortemp/a;->a:Landroid/net/Uri;

    return-object v0
.end method

.method private d()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->d:Landroid/content/ContentResolver;

    const-string v1, "color_display_level"

    const v2, 0x3e2e147b    # 0.17f

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const v1, 0x3eae147b    # 0.34f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->e:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/screencolortemp/a;->a(F)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->i:Lcom/coloros/settings/feature/display/screencolortemp/a$a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/screencolortemp/a$a;->a()V

    .line 104
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screencolortemp/a;->d()V

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->e:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;)V

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->g:Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->i:Lcom/coloros/settings/feature/display/screencolortemp/a$a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/display/screencolortemp/a$a;->b()V

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->e:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$OnSeekBarChangeListener;)V

    .line 116
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->f:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->e:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/screencolortemp/a;->onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    :cond_1
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->g:Z

    return-void
.end method

.method public final onProgressChanged(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;IZ)V
    .locals 0

    const/4 p1, 0x1

    .line 182
    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->b:Z

    .line 183
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->f:Z

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/screencolortemp/a;->a(ZI)V

    return-void
.end method

.method public final onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 1

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->f:Z

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->b:Z

    .line 190
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->f:Z

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/display/screencolortemp/a;->a(ZI)V

    return-void
.end method

.method public final onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->f:Z

    .line 196
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->b:Z

    .line 197
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/screencolortemp/a;->f:Z

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/display/screencolortemp/a;->a(ZI)V

    return-void
.end method
