.class public Lcom/color/eyeprotect/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/c/c$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static b:F

.field private static c:F


# instance fields
.field private d:Landroid/content/Context;

.field private e:Landroid/content/ContentResolver;

.field private f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/color/eyeprotect/c/c$a;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OppoEyeprotect_level"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/color/eyeprotect/c/c;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/c;->k:Z

    iput-object p1, p0, Lcom/color/eyeprotect/c/c;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/c/c;->e:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/color/eyeprotect/c/c;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    iget-object p1, p0, Lcom/color/eyeprotect/c/c;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/color/eyeprotect/c/c;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setAbsorbValues([F)V

    iget-object p1, p0, Lcom/color/eyeprotect/c/c;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const p2, 0x3d54fdf4    # 0.052f

    invoke-virtual {p1, p2}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setAbsorbRatio(F)V

    new-instance p1, Lcom/color/eyeprotect/c/c$a;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/color/eyeprotect/c/c$a;-><init>(Lcom/color/eyeprotect/c/c;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/color/eyeprotect/c/c;->j:Lcom/color/eyeprotect/c/c$a;

    invoke-direct {p0}, Lcom/color/eyeprotect/c/c;->e()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(I)F
    .locals 1

    sget p0, Lcom/color/eyeprotect/c/c;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    int-to-float p0, p1

    mul-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr v0, p0

    sget p0, Lcom/color/eyeprotect/c/c;->b:F

    add-float/2addr v0, p0

    return v0
.end method

.method private a(F)I
    .locals 2

    sget p0, Lcom/color/eyeprotect/c/c;->b:F

    sub-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p1, p0

    sget p0, Lcom/color/eyeprotect/c/c;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method static synthetic a(Lcom/color/eyeprotect/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/c/c;->f()V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/c/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/c/c;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/color/eyeprotect/c/c;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/c/c;->e:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private b(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/c/c;->c(I)V

    return-void
.end method

.method private c(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/c/c;->a(I)F

    move-result p1

    iget-object v0, p0, Lcom/color/eyeprotect/c/c;->e:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/color/eyeprotect/util/e;->e(Landroid/content/ContentResolver;F)Z

    iget-object p0, p0, Lcom/color/eyeprotect/c/c;->e:Landroid/content/ContentResolver;

    invoke-static {p0, p1}, Lcom/color/eyeprotect/util/e;->c(Landroid/content/ContentResolver;F)V

    return-void
.end method

.method static synthetic d()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/color/eyeprotect/c/c;->a:Landroid/net/Uri;

    return-object v0
.end method

.method private e()V
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/c/c;->e:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->f(Landroid/content/ContentResolver;)F

    move-result p0

    sput p0, Lcom/color/eyeprotect/c/c;->b:F

    sget p0, Lcom/color/eyeprotect/c/c;->b:F

    sput p0, Lcom/color/eyeprotect/c/c;->c:F

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/c/c;->e:Landroid/content/ContentResolver;

    sget v1, Lcom/color/eyeprotect/c/c;->c:F

    invoke-static {v0, v1}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;F)F

    move-result v0

    sget v1, Lcom/color/eyeprotect/c/c;->b:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/color/eyeprotect/c/c;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-direct {p0, v0}, Lcom/color/eyeprotect/c/c;->a(F)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/c/c;->e:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/c/c;->e:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/color/eyeprotect/c/c;->c()F

    move-result p0

    invoke-static {v0, p0}, Lcom/color/eyeprotect/util/e;->e(Landroid/content/ContentResolver;F)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/c;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/c/c;->j:Lcom/color/eyeprotect/c/c$a;

    invoke-virtual {v0}, Lcom/color/eyeprotect/c/c$a;->a()V

    invoke-direct {p0}, Lcom/color/eyeprotect/c/c;->f()V

    iget-object v0, p0, Lcom/color/eyeprotect/c/c;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/c;->h:Z

    return-void
.end method

.method public a(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/c;->g:Z

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/c;->k:Z

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/c;->g:Z

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/color/eyeprotect/c/c;->a(ZI)V

    return-void
.end method

.method public a(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;IZ)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/eyeprotect/c/c;->k:Z

    iget-boolean p1, p0, Lcom/color/eyeprotect/c/c;->g:Z

    invoke-virtual {p0, p1, p2}, Lcom/color/eyeprotect/c/c;->a(ZI)V

    return-void
.end method

.method public a(ZI)V
    .locals 1

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/c;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/color/eyeprotect/c/c;->k:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/color/eyeprotect/c/c;->b(I)V

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/color/eyeprotect/c/c;->g()V

    iget-object p1, p0, Lcom/color/eyeprotect/c/c;->e:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Lcom/color/eyeprotect/c/c;->a(I)F

    move-result p0

    invoke-static {p1, p0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;F)Z

    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/c;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/c/c;->j:Lcom/color/eyeprotect/c/c$a;

    invoke-virtual {v0}, Lcom/color/eyeprotect/c/c$a;->b()V

    iget-object v0, p0, Lcom/color/eyeprotect/c/c;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar$b;)V

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/c;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/color/eyeprotect/c/c;->f:Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/c/c;->b(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/c;->h:Z

    return-void
.end method

.method public b(Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/c;->g:Z

    iput-boolean v0, p0, Lcom/color/eyeprotect/c/c;->k:Z

    iget-boolean v0, p0, Lcom/color/eyeprotect/c/c;->g:Z

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorAbsorbSeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/color/eyeprotect/c/c;->a(ZI)V

    return-void
.end method

.method public c()F
    .locals 3

    iget-object p0, p0, Lcom/color/eyeprotect/c/c;->e:Landroid/content/ContentResolver;

    const-string v0, "color_display_level"

    const v1, 0x3e2e147b    # 0.17f

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method
