.class public Lcom/oppo/camera/ui/preview/a/e;
.super Lcom/oppo/camera/ui/preview/a/n;
.source "FilterTexturePreview.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/a/p$a;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/gl/s;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Lcom/oppo/camera/ui/preview/a/p;

.field private i:Lco/polarr/renderer/PolarrRender;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/n;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/oppo/camera/ui/preview/a/e;->a:I

    .line 38
    iput v0, p0, Lcom/oppo/camera/ui/preview/a/e;->b:I

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/e;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/e;->g:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/e;->h:Lcom/oppo/camera/ui/preview/a/p;

    .line 44
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    .line 45
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/e;->j:Z

    .line 46
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/e;->k:Z

    const-string v1, "default"

    .line 47
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/e;->l:Ljava/lang/String;

    .line 48
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/e;->m:Z

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->n:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->g:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/e;)Lco/polarr/renderer/PolarrRender;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/e;Lco/polarr/renderer/PolarrRender;)Lco/polarr/renderer/PolarrRender;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/e;Lcom/oppo/camera/ui/preview/a/p;)Lcom/oppo/camera/ui/preview/a/p;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->h:Lcom/oppo/camera/ui/preview/a/p;

    return-object p1
.end method

.method private a(Landroid/content/Context;II)V
    .locals 9

    const-string v0, "FilterTexturePreview"

    const-string v1, "initPolarrRender"

    .line 144
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {v2}, Lco/polarr/renderer/PolarrRender;->release()V

    .line 152
    :cond_0
    new-instance v2, Lco/polarr/renderer/PolarrRender;

    invoke-direct {v2}, Lco/polarr/renderer/PolarrRender;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    .line 153
    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lco/polarr/renderer/PolarrRender;->initRender(Landroid/content/res/Resources;IIZI)V

    .line 155
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const-string p1, "initPolarrRender X"

    .line 157
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/a/e;)Lcom/oppo/camera/ui/preview/a/p;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/e;->h:Lcom/oppo/camera/ui/preview/a/p;

    return-object p0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iput p2, p0, Lcom/oppo/camera/ui/preview/a/e;->a:I

    .line 293
    iput p1, p0, Lcom/oppo/camera/ui/preview/a/e;->b:I

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/h;)V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/gl/s;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v1}, Lcom/oppo/camera/gl/s;->k()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    invoke-virtual {v1, p1}, Lcom/oppo/camera/gl/s;->c(Lcom/oppo/camera/gl/h;)V

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareTextures, texture.getId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oppo/camera/gl/s;->d()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FilterTexturePreview"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/p;)V
    .locals 2

    const-string v0, "FilterTexturePreview"

    const-string v1, "createEngine"

    .line 172
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->h:Lcom/oppo/camera/ui/preview/a/p;

    .line 176
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->h:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p1, p0}, Lcom/oppo/camera/ui/preview/a/p;->a(Lcom/oppo/camera/ui/preview/a/p$a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->n:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 162
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/e;->j:Z

    return-void
.end method

.method public a(I)Z
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->h:Lcom/oppo/camera/ui/preview/a/p;

    const-string v1, "FilterTexturePreview"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->n:Ljava/lang/String;

    const-string v3, "default"

    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/e;->m:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/a/e;->c(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    goto :goto_0

    .line 134
    :cond_2
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/e;->k:Z

    if-nez p1, :cond_3

    const-string p1, "canProcess, texture is not inited"

    .line 135
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    const-string p1, "canProcess, mFilterTextures has not init!"

    .line 129
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    :goto_1
    const-string p1, "canProcess, mRequest not ready or not open effect or filterIndex is 0"

    .line 120
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/n$a;)Z
    .locals 12

    .line 58
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->h:Lcom/oppo/camera/ui/preview/a/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->n:Ljava/lang/String;

    .line 63
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/e;->h:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/a/p;->b()Z

    move-result v2

    const-string v3, "default"

    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 69
    :cond_1
    iget-boolean v3, p0, Lcom/oppo/camera/ui/preview/a/e;->j:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    if-nez v3, :cond_3

    .line 70
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/e;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/e;->h()Lcom/oppo/camera/gl/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->g()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a/e;->h()Lcom/oppo/camera/gl/s;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oppo/camera/gl/s;->h()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/oppo/camera/ui/preview/a/e;->a(Landroid/content/Context;II)V

    :cond_3
    const-string v3, "Filter.process"

    .line 73
    invoke-static {v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 75
    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/e;->c:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/gl/s;

    .line 76
    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    invoke-virtual {v4}, Lcom/oppo/camera/gl/s;->d()I

    move-result v4

    invoke-virtual {v6, v4}, Lco/polarr/renderer/PolarrRender;->setOutputTexture(I)V

    .line 77
    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    iget-object p1, p1, Lcom/oppo/camera/ui/preview/a/n$a;->c:Lcom/oppo/camera/gl/s;

    invoke-virtual {p1}, Lcom/oppo/camera/gl/s;->d()I

    move-result p1

    invoke-virtual {v4, p1}, Lco/polarr/renderer/PolarrRender;->setInputTexture(I)V

    .line 79
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/e;->j:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    const v6, -0x40cccccd    # -0.7f

    const v7, 0x3ee147ae    # 0.44f

    const v8, 0x3f547ae1    # 0.83f

    const/high16 v9, 0x3e800000    # 0.25f

    const v10, -0x40c28f5c    # -0.74f

    const v11, 0x3f7ae148    # 0.98f

    .line 81
    invoke-static/range {v6 .. v11}, Lco/polarr/renderer/PolarrRender;->setupVignetteParams(FFFFFF)V

    .line 86
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    invoke-virtual {p1, v0}, Lco/polarr/renderer/PolarrRender;->fastUpdateFilter(Ljava/lang/String;)V

    .line 87
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->l:Ljava/lang/String;

    .line 90
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    invoke-virtual {p1}, Lco/polarr/renderer/PolarrRender;->updateInputTexture()V

    if-eqz v2, :cond_7

    .line 93
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    invoke-virtual {p1}, Lco/polarr/renderer/PolarrRender;->drawFrameWithVignette()V

    goto :goto_0

    .line 95
    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/e;->i:Lco/polarr/renderer/PolarrRender;

    invoke-virtual {p1}, Lco/polarr/renderer/PolarrRender;->drawFrame()V

    .line 98
    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/e;->j:Z

    .line 100
    invoke-static {v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return v5

    :cond_8
    :goto_1
    return v1
.end method

.method public b(Z)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/e;->m:Z

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public f()V
    .locals 4

    const-string v0, "FilterTexturePreview"

    const-string v1, "destroyEngine"

    .line 183
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/e;->h:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/e;->e:Lcom/oppo/camera/gl/GLRootView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/e;->e:Lcom/oppo/camera/gl/GLRootView;

    new-instance v2, Lcom/oppo/camera/ui/preview/a/e$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/preview/a/e$1;-><init>(Lcom/oppo/camera/ui/preview/a/e;)V

    invoke-static {v1, v2}, Lcom/oppo/camera/p;->a(Lcom/oppo/camera/gl/q;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyEngine, status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v1, "destroyEngine, mRootView not initialized yet."

    .line 186
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Lcom/oppo/camera/gl/s;
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/s;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/oppo/camera/gl/s;
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->c:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/gl/s;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 5

    const-string v0, "FilterTexturePreview"

    const-string v1, "newTextures"

    .line 241
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 244
    new-instance v1, Lcom/oppo/camera/gl/s;

    iget v3, p0, Lcom/oppo/camera/ui/preview/a/e;->a:I

    iget v4, p0, Lcom/oppo/camera/ui/preview/a/e;->b:I

    invoke-direct {v1, v3, v4, v2}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    .line 245
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    iput-boolean v2, p0, Lcom/oppo/camera/ui/preview/a/e;->k:Z

    return-void
.end method

.method public k()V
    .locals 5

    const-string v0, "FilterTexturePreview"

    const-string v1, "recycleTextures"

    .line 269
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/e;->k:Z

    if-nez v1, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/e;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/gl/s;

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recycleTextures, texture id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oppo/camera/gl/s;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v2}, Lcom/oppo/camera/gl/s;->l()V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/e;->k:Z

    return-void
.end method
