.class public abstract Lcom/oppo/camera/ui/g;
.super Lcom/oppo/camera/ui/menu/setting/l;
.source "OppoSeekLineBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/g$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:F

.field protected e:Z

.field protected f:Landroid/view/animation/BaseInterpolator;

.field protected g:Landroid/view/animation/BaseInterpolator;

.field protected h:F

.field protected i:F

.field protected j:F

.field protected k:J

.field protected l:Landroid/content/Context;

.field protected m:Lcom/oppo/camera/ui/g$a;

.field protected n:Landroid/os/Handler;

.field private s:Landroid/view/animation/PathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/camera/ui/menu/setting/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput v0, p0, Lcom/oppo/camera/ui/g;->a:I

    .line 42
    iput v0, p0, Lcom/oppo/camera/ui/g;->b:I

    .line 43
    iput v0, p0, Lcom/oppo/camera/ui/g;->c:I

    const p2, 0x3d4ccccd    # 0.05f

    .line 44
    iput p2, p0, Lcom/oppo/camera/ui/g;->d:F

    .line 45
    iput-boolean v0, p0, Lcom/oppo/camera/ui/g;->e:Z

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/oppo/camera/ui/g;->f:Landroid/view/animation/BaseInterpolator;

    .line 48
    iput-object p2, p0, Lcom/oppo/camera/ui/g;->g:Landroid/view/animation/BaseInterpolator;

    const/4 v1, 0x0

    .line 49
    iput v1, p0, Lcom/oppo/camera/ui/g;->h:F

    .line 50
    iput v1, p0, Lcom/oppo/camera/ui/g;->i:F

    .line 51
    iput v1, p0, Lcom/oppo/camera/ui/g;->j:F

    const-wide/16 v2, 0x578

    .line 52
    iput-wide v2, p0, Lcom/oppo/camera/ui/g;->k:J

    .line 54
    iput-object p2, p0, Lcom/oppo/camera/ui/g;->l:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    .line 68
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {p2, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p2, p0, Lcom/oppo/camera/ui/g;->s:Landroid/view/animation/PathInterpolator;

    .line 86
    new-instance p2, Lcom/oppo/camera/ui/g$1;

    invoke-direct {p2, p0}, Lcom/oppo/camera/ui/g$1;-><init>(Lcom/oppo/camera/ui/g;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/g;->n:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/oppo/camera/ui/g;->l:Landroid/content/Context;

    .line 106
    iget-object p1, p0, Lcom/oppo/camera/ui/g;->l:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 107
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result p2

    iput p2, p0, Lcom/oppo/camera/ui/g;->a:I

    .line 109
    invoke-static {}, Lcom/oppo/camera/o/d;->S()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f060363

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/g;->b:I

    goto :goto_0

    :cond_0
    const p2, 0x7f060362

    .line 112
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/g;->b:I

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->getCollapseInterpolator()Landroid/view/animation/BaseInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/g;->f:Landroid/view/animation/BaseInterpolator;

    .line 116
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->getExpandInterpolator()Landroid/view/animation/BaseInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/ui/g;->g:Landroid/view/animation/BaseInterpolator;

    .line 117
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    .line 119
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 120
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/g;->setRate(F)V

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/g;->setRate(F)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected K_()V
    .locals 4

    .line 277
    iget v0, p0, Lcom/oppo/camera/ui/g;->c:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    .line 281
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->getVisibility()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    iput-boolean v3, p0, Lcom/oppo/camera/ui/g;->e:Z

    .line 287
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    .line 288
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    return-void

    .line 282
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected L_()V
    .locals 2

    .line 292
    iget v0, p0, Lcom/oppo/camera/ui/g;->c:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    if-eqz v0, :cond_1

    .line 297
    invoke-interface {v0}, Lcom/oppo/camera/ui/g$a;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Lcom/oppo/camera/ui/g;->e:Z

    .line 301
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    .line 302
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    return-void
.end method

.method protected a()V
    .locals 1

    const/4 v0, 0x0

    .line 247
    iput v0, p0, Lcom/oppo/camera/ui/g;->h:F

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 249
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setAlpha(F)V

    return-void
.end method

.method protected a(F)V
    .locals 1

    .line 239
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->setRate(F)V

    .line 241
    iget-object p1, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    if-eqz p1, :cond_0

    .line 242
    iget v0, p0, Lcom/oppo/camera/ui/g;->i:F

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/g$a;->b(F)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    .line 253
    iget p1, p0, Lcom/oppo/camera/ui/g;->c:I

    if-eqz p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/oppo/camera/ui/g;->n:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 255
    iput-boolean v0, p0, Lcom/oppo/camera/ui/g;->e:Z

    const/4 p1, 0x3

    .line 256
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    .line 257
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x50

    const/4 v0, 0x0

    .line 259
    iget-object v1, p0, Lcom/oppo/camera/ui/g;->s:Landroid/view/animation/PathInterpolator;

    invoke-static {p0, p1, v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 8

    .line 264
    iget v0, p0, Lcom/oppo/camera/ui/g;->c:I

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/oppo/camera/ui/g;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 266
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setAlpha(F)V

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setVisibility(I)V

    .line 268
    iput-boolean v0, p0, Lcom/oppo/camera/ui/g;->e:Z

    const/4 v0, 0x3

    .line 269
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    .line 270
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xa0

    const/4 v6, 0x0

    .line 272
    iget-object v7, p0, Lcom/oppo/camera/ui/g;->s:Landroid/view/animation/PathInterpolator;

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 3

    .line 177
    iget v0, p0, Lcom/oppo/camera/ui/g;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 178
    iget-object p1, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/g;->g:Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/g$a;->c(F)V

    .line 179
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    .line 180
    iget p1, p0, Lcom/oppo/camera/ui/g;->h:F

    iget v0, p0, Lcom/oppo/camera/ui/g;->d:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/oppo/camera/ui/g;->h:F

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/g$a;->c(F)V

    .line 183
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->f(Landroid/graphics/Canvas;)V

    .line 184
    iput v1, p0, Lcom/oppo/camera/ui/g;->h:F

    const/4 p1, 0x2

    .line 185
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    :goto_0
    return-void
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    iget-object v1, p0, Lcom/oppo/camera/ui/g;->f:Landroid/view/animation/BaseInterpolator;

    iget v2, p0, Lcom/oppo/camera/ui/g;->h:F

    invoke-virtual {v1, v2}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/g$a;->d(F)V

    .line 192
    iget v0, p0, Lcom/oppo/camera/ui/g;->h:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 193
    iget-boolean p1, p0, Lcom/oppo/camera/ui/g;->e:Z

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/oppo/camera/ui/g;->f:Landroid/view/animation/BaseInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/BaseInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->setAlpha(F)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/g;->invalidate()V

    .line 198
    iget p1, p0, Lcom/oppo/camera/ui/g;->h:F

    const v0, 0x3d8f5c29    # 0.07f

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/oppo/camera/ui/g;->h:F

    goto :goto_1

    .line 200
    :cond_1
    iput v1, p0, Lcom/oppo/camera/ui/g;->h:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 201
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setAlpha(F)V

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/g;->setStatus(I)V

    .line 204
    iget-boolean v1, p0, Lcom/oppo/camera/ui/g;->e:Z

    if-eqz v1, :cond_2

    const/16 p1, 0x8

    .line 205
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->setVisibility(I)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->a(Landroid/graphics/Canvas;)V

    .line 210
    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/ui/g;->e:Z

    .line 212
    iget-object p1, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    if-eqz p1, :cond_3

    .line 213
    invoke-interface {p1}, Lcom/oppo/camera/ui/g$a;->b()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected d(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected e(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected f(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getCollapseDelay()J
    .locals 2

    .line 231
    iget-wide v0, p0, Lcom/oppo/camera/ui/g;->k:J

    return-wide v0
.end method

.method protected getCollapseInterpolator()Landroid/view/animation/BaseInterpolator;
    .locals 5

    .line 315
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    const v3, 0x3f147ae1    # 0.58f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method protected getExpandInterpolator()Landroid/view/animation/BaseInterpolator;
    .locals 5

    .line 320
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f970a3d    # 1.18f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/oppo/camera/ui/g;->c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 142
    iget v0, p0, Lcom/oppo/camera/ui/g;->c:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->e(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->f(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 144
    :cond_5
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/g;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 326
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/l;->onMeasure(II)V

    .line 327
    iget p1, p0, Lcom/oppo/camera/ui/g;->a:I

    iget p2, p0, Lcom/oppo/camera/ui/g;->b:I

    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/ui/g;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCollapseDelay(J)V
    .locals 0

    .line 235
    iput-wide p1, p0, Lcom/oppo/camera/ui/g;->k:J

    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/oppo/camera/ui/g$a;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/oppo/camera/ui/g;->m:Lcom/oppo/camera/ui/g$a;

    return-void
.end method

.method public setRate(F)V
    .locals 2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRate, rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoSeekLineBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 308
    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->a(FFF)F

    move-result p1

    .line 310
    iget v0, p0, Lcom/oppo/camera/ui/g;->i:F

    iput v0, p0, Lcom/oppo/camera/ui/g;->j:F

    .line 311
    iput p1, p0, Lcom/oppo/camera/ui/g;->i:F

    return-void
.end method

.method public setStatus(I)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoSeekLineBar"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iput p1, p0, Lcom/oppo/camera/ui/g;->c:I

    return-void
.end method
