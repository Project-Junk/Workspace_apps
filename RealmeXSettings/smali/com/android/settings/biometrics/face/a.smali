.class public final Lcom/android/settings/biometrics/face/a;
.super Ljava/lang/Object;
.source "AnimationParticle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/face/a$a;
    }
.end annotation


# instance fields
.field final a:Landroid/graphics/Rect;

.field final b:I

.field final c:Landroid/animation/ArgbEvaluator;

.field final d:I

.field final e:I

.field final f:Lcom/android/settings/biometrics/face/a$a;

.field final g:Landroid/graphics/Paint;

.field final h:I

.field final i:F

.field j:I

.field k:I

.field l:F

.field m:F

.field n:F

.field o:F

.field p:F

.field q:F

.field r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/face/a$a;Landroid/graphics/Rect;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/biometrics/face/a$a;",
            "Landroid/graphics/Rect;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 64
    iput v0, p0, Lcom/android/settings/biometrics/face/a;->l:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 66
    iput v0, p0, Lcom/android/settings/biometrics/face/a;->n:F

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/android/settings/biometrics/face/a;->o:F

    const/high16 v0, 0x43700000    # 240.0f

    .line 68
    iput v0, p0, Lcom/android/settings/biometrics/face/a;->p:F

    .line 78
    iput-object p3, p0, Lcom/android/settings/biometrics/face/a;->a:Landroid/graphics/Rect;

    const/16 p3, 0x14

    .line 79
    iput p3, p0, Lcom/android/settings/biometrics/face/a;->b:I

    .line 80
    new-instance p3, Landroid/animation/ArgbEvaluator;

    invoke-direct {p3}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p3, p0, Lcom/android/settings/biometrics/face/a;->c:Landroid/animation/ArgbEvaluator;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f0601f2

    invoke-virtual {p3, v0, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/face/a;->d:I

    .line 83
    iput p4, p0, Lcom/android/settings/biometrics/face/a;->e:I

    .line 84
    iput-object p2, p0, Lcom/android/settings/biometrics/face/a;->f:Lcom/android/settings/biometrics/face/a$a;

    int-to-float p1, p4

    const/high16 p2, 0x41400000    # 12.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p3, p1, p2

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p3, v0

    .line 86
    iput p3, p0, Lcom/android/settings/biometrics/face/a;->m:F

    const/high16 p3, 0x3fa00000    # 1.25f

    mul-float/2addr p1, p3

    mul-float/2addr p1, p2

    mul-float/2addr p1, v0

    .line 87
    iput p1, p0, Lcom/android/settings/biometrics/face/a;->i:F

    .line 90
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    .line 91
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr p4, p1

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/face/a;->h:I

    .line 92
    iget-object p1, p0, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/settings/biometrics/face/a;->h:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object p1, p0, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object p1, p0, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/settings/biometrics/face/a;->l:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/biometrics/face/a;->g:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method
