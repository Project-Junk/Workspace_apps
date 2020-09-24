.class public Lcom/oppo/camera/ui/menu/levelcontrol/e;
.super Ljava/lang/Object;
.source "GLModelParam.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Bitmap;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->c:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e:I

    .line 16
    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f:I

    .line 17
    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g:I

    .line 18
    iput v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->h:I

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i:F

    .line 20
    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j:F

    .line 21
    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k:F

    .line 22
    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l:F

    .line 23
    iput v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->m:F

    .line 24
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n:Z

    .line 25
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->o:Z

    .line 28
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e:I

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lco/polarr/renderer/entities/DrawingItem;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n:Z

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/menu/levelcontrol/e;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->b:Ljava/util/List;

    .line 149
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a()Ljava/util/List;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e:I

    .line 150
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f:I

    .line 151
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g:I

    .line 152
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i:F

    .line 153
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j:F

    .line 154
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k:F

    .line 155
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l:F

    .line 156
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n:Z

    .line 157
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->h()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->o:Z

    .line 158
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->c:Ljava/util/List;

    return-object v0
.end method

.method public b(F)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j:F

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f:I

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->c:Ljava/util/List;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->o:Z

    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c(F)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k:F

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e:I

    return v0
.end method

.method public d(F)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l:F

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->h:I

    return-void
.end method

.method public e()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f:I

    return v0
.end method

.method public e(F)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->m:F

    return-void
.end method

.method public f()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->h:I

    return v0
.end method

.method public h()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n:Z

    return v0
.end method

.method public i()F
    .locals 1

    .line 100
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i:F

    return v0
.end method

.method public j()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j:F

    return v0
.end method

.method public k()F
    .locals 1

    .line 116
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k:F

    return v0
.end method

.method public l()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l:F

    return v0
.end method

.method public m()F
    .locals 1

    .line 132
    iget v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->m:F

    return v0
.end method

.method public n()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a:Ljava/lang/String;

    const-string v2, "mModelName"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->c:Ljava/util/List;

    const-string v2, "mBitmaps"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->d:Landroid/graphics/Bitmap;

    const-string v2, "mHighlightBmp"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mElementNum"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mTexW"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mTexH"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mCurrItemIndex"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->i:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mCenterAng"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->j:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mElementH"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->k:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mElementGap"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    iget v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->l:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mHighlightH"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->n:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mbFrontCamera"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/levelcontrol/e;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "mbFromSurfaceTexture"

    invoke-direct {p0, v0, v2, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
