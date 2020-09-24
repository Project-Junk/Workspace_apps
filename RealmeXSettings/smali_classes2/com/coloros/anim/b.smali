.class public Lcom/coloros/anim/b;
.super Landroid/graphics/drawable/Drawable;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/anim/b$a;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "b"


# instance fields
.field final a:Lcom/coloros/anim/f/c;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/anim/b$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/coloros/anim/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Lcom/coloros/anim/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Lcom/coloros/anim/a;

.field f:F

.field g:Lcom/coloros/anim/b/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field i:Lcom/coloros/anim/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Lcom/coloros/anim/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public k:Z

.field l:Z

.field m:Z

.field private final o:Landroid/graphics/Matrix;

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/coloros/anim/c/c/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/b;->o:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Lcom/coloros/anim/f/c;

    invoke-direct {v0}, Lcom/coloros/anim/f/c;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/b;->p:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 80
    iput v0, p0, Lcom/coloros/anim/b;->f:F

    const/16 v0, 0xff

    .line 92
    iput v0, p0, Lcom/coloros/anim/b;->r:I

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/coloros/anim/b;->m:Z

    .line 101
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    new-instance v1, Lcom/coloros/anim/b$1;

    invoke-direct {v1, p0}, Lcom/coloros/anim/b$1;-><init>(Lcom/coloros/anim/b;)V

    invoke-virtual {v0, v1}, Lcom/coloros/anim/f/c;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/anim/b;)Lcom/coloros/anim/c/c/b;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/anim/b;->q:Lcom/coloros/anim/c/c/b;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/anim/b;)Lcom/coloros/anim/f/c;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 232
    new-instance v0, Lcom/coloros/anim/c/c/b;

    iget-object v1, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 233
    invoke-static {v1}, Lcom/coloros/anim/e/r;->a(Lcom/coloros/anim/a;)Lcom/coloros/anim/c/c/d;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 1145
    iget-object v2, v2, Lcom/coloros/anim/a;->h:Ljava/util/List;

    .line 233
    iget-object v3, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/coloros/anim/c/c/b;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/c/d;Ljava/util/List;Lcom/coloros/anim/a;)V

    iput-object v0, p0, Lcom/coloros/anim/b;->q:Lcom/coloros/anim/c/c/b;

    return-void
.end method

.method public final a(F)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$11;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$11;-><init>(Lcom/coloros/anim/b;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 11133
    :cond_0
    iget v0, v0, Lcom/coloros/anim/a;->j:F

    .line 449
    iget-object v1, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 11137
    iget v1, v1, Lcom/coloros/anim/a;->k:F

    .line 449
    invoke-static {v0, v1, p1}, Lcom/coloros/anim/f/f;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(I)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$9;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$9;-><init>(Lcom/coloros/anim/b;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    int-to-float p1, p1

    .line 10255
    iget v1, v0, Lcom/coloros/anim/f/c;->f:F

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/coloros/anim/f/c;->a(FF)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/anim/b$3;-><init>(Lcom/coloros/anim/b;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    int-to-float p1, p1

    int-to-float p2, p2

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/coloros/anim/f/c;->a(FF)V

    return-void
.end method

.method public final a(Lcom/coloros/anim/c/f;Ljava/lang/Object;Lcom/coloros/anim/g/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/coloros/anim/c/f;",
            "TT;",
            "Lcom/coloros/anim/g/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/coloros/anim/b;->q:Lcom/coloros/anim/c/c/b;

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/coloros/anim/b$6;-><init>(Lcom/coloros/anim/b;Lcom/coloros/anim/c/f;Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 17089
    :cond_0
    iget-object v0, p1, Lcom/coloros/anim/c/f;->a:Lcom/coloros/anim/c/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 18089
    iget-object p1, p1, Lcom/coloros/anim/c/f;->a:Lcom/coloros/anim/c/g;

    .line 862
    invoke-interface {p1, p2, p3}, Lcom/coloros/anim/c/g;->a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    goto :goto_2

    .line 18833
    :cond_1
    iget-object v0, p0, Lcom/coloros/anim/b;->q:Lcom/coloros/anim/c/c/b;

    if-nez v0, :cond_2

    const-string p1, "EffectiveAnimation"

    const-string v0, "Cannot resolve KeyPath. Composition is not set yet."

    .line 18834
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18835
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 18837
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18838
    iget-object v3, p0, Lcom/coloros/anim/b;->q:Lcom/coloros/anim/c/c/b;

    new-instance v4, Lcom/coloros/anim/c/f;

    new-array v5, v2, [Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/coloros/anim/c/f;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2, v0, v4}, Lcom/coloros/anim/c/c/b;->a(Lcom/coloros/anim/c/f;ILjava/util/List;Lcom/coloros/anim/c/f;)V

    move-object p1, v0

    :goto_0
    move v0, v2

    .line 867
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 868
    sget-boolean v3, Lcom/coloros/anim/f/b;->c:Z

    if-eqz v3, :cond_3

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EffectiveAnimationDrawable::KeyPath = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/coloros/anim/f/b;->a(Ljava/lang/String;)V

    .line 872
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/anim/c/f;

    .line 19089
    iget-object v3, v3, Lcom/coloros/anim/c/f;->a:Lcom/coloros/anim/c/g;

    .line 872
    invoke-interface {v3, p2, p3}, Lcom/coloros/anim/c/g;->a(Ljava/lang/Object;Lcom/coloros/anim/g/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 874
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-eqz v1, :cond_6

    .line 877
    invoke-virtual {p0}, Lcom/coloros/anim/b;->invalidateSelf()V

    .line 878
    sget-object p1, Lcom/coloros/anim/d;->y:Ljava/lang/Float;

    if-ne p2, p1, :cond_6

    .line 19798
    iget-object p1, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {p1}, Lcom/coloros/anim/f/c;->b()F

    move-result p1

    .line 882
    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->d(F)V

    :cond_6
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$10;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$10;-><init>(Lcom/coloros/anim/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 429
    :cond_0
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a;->b(Ljava/lang/String;)Lcom/coloros/anim/c/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 433
    iget p1, v0, Lcom/coloros/anim/c/h;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->a(I)V

    return-void

    .line 431
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Z)V
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/coloros/anim/b;->k:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 141
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 142
    sget-object p1, Lcom/coloros/anim/b;->n:Ljava/lang/String;

    const-string v0, "Merge paths are not supported pre-Kit Kat."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 145
    :cond_1
    iput-boolean p1, p0, Lcom/coloros/anim/b;->k:Z

    .line 146
    iget-object p1, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/coloros/anim/b;->a()V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 241
    iput-object v0, p0, Lcom/coloros/anim/b;->q:Lcom/coloros/anim/c/c/b;

    .line 242
    iput-object v0, p0, Lcom/coloros/anim/b;->g:Lcom/coloros/anim/b/b;

    .line 243
    iget-object v1, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    .line 2145
    iput-object v0, v1, Lcom/coloros/anim/f/c;->g:Lcom/coloros/anim/a;

    const/high16 v0, -0x31000000

    .line 2146
    iput v0, v1, Lcom/coloros/anim/f/c;->e:F

    const/high16 v0, 0x4f000000

    .line 2147
    iput v0, v1, Lcom/coloros/anim/f/c;->f:F

    .line 244
    invoke-virtual {p0}, Lcom/coloros/anim/b;->invalidateSelf()V

    return-void
.end method

.method public final b(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 501
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$14;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$14;-><init>(Lcom/coloros/anim/b;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 12133
    :cond_0
    iget v0, v0, Lcom/coloros/anim/a;->j:F

    .line 510
    iget-object v1, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 12137
    iget v1, v1, Lcom/coloros/anim/a;->k:F

    .line 510
    invoke-static {v0, v1, p1}, Lcom/coloros/anim/f/f;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->b(I)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$12;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$12;-><init>(Lcom/coloros/anim/b;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    int-to-float p1, p1

    const v1, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v1

    .line 11266
    iget v1, v0, Lcom/coloros/anim/f/c;->e:F

    invoke-virtual {v0, v1, p1}, Lcom/coloros/anim/f/c;->a(FF)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$13;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$13;-><init>(Lcom/coloros/anim/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 490
    :cond_0
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a;->b(Ljava/lang/String;)Lcom/coloros/anim/c/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 494
    iget p1, v0, Lcom/coloros/anim/c/h;->b:F

    iget v0, v0, Lcom/coloros/anim/c/h;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->b(I)V

    return-void

    .line 492
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/coloros/anim/b;->q:Lcom/coloros/anim/c/c/b;

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$7;

    invoke-direct {v1, p0}, Lcom/coloros/anim/b$7;-><init>(Lcom/coloros/anim/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->c()V

    return-void
.end method

.method public final c(F)V
    .locals 0

    .line 769
    iput p1, p0, Lcom/coloros/anim/b;->f:F

    .line 770
    invoke-virtual {p0}, Lcom/coloros/anim/b;->f()V

    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$4;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$4;-><init>(Lcom/coloros/anim/b;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/f/c;->a(I)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$2;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$2;-><init>(Lcom/coloros/anim/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 529
    :cond_0
    invoke-virtual {v0, p1}, Lcom/coloros/anim/a;->b(Ljava/lang/String;)Lcom/coloros/anim/c/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    iget p1, v0, Lcom/coloros/anim/c/h;->b:F

    float-to-int p1, p1

    .line 534
    iget v0, v0, Lcom/coloros/anim/c/h;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/coloros/anim/b;->a(II)V

    return-void

    .line 531
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find marker with name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 19931
    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_2

    .line 19936
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->g:Lcom/coloros/anim/b/b;

    if-eqz v0, :cond_5

    .line 19972
    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 19977
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 19978
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 20125
    iget-object v3, v0, Lcom/coloros/anim/b/b;->a:Landroid/content/Context;

    if-eqz v3, :cond_3

    :cond_2
    iget-object v0, v0, Lcom/coloros/anim/b/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_5

    .line 19937
    iput-object v1, p0, Lcom/coloros/anim/b;->g:Lcom/coloros/anim/b/b;

    .line 19940
    :cond_5
    iget-object v0, p0, Lcom/coloros/anim/b;->g:Lcom/coloros/anim/b/b;

    if-nez v0, :cond_6

    .line 19941
    new-instance v0, Lcom/coloros/anim/b/b;

    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/anim/b;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/coloros/anim/b;->i:Lcom/coloros/anim/j;

    iget-object v5, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 20183
    iget-object v5, v5, Lcom/coloros/anim/a;->c:Ljava/util/Map;

    .line 19942
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/coloros/anim/b/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/coloros/anim/j;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/coloros/anim/b;->g:Lcom/coloros/anim/b/b;

    .line 19945
    :cond_6
    iget-object v0, p0, Lcom/coloros/anim/b;->g:Lcom/coloros/anim/b/b;

    :goto_2
    if-eqz v0, :cond_7

    .line 925
    invoke-virtual {v0, p1}, Lcom/coloros/anim/b/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v1
.end method

.method public final d()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/coloros/anim/b;->q:Lcom/coloros/anim/c/c/b;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$8;

    invoke-direct {v1, p0}, Lcom/coloros/anim/b$8;-><init>(Lcom/coloros/anim/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->d()V

    return-void
.end method

.method public final d(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 802
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/coloros/anim/b$5;

    invoke-direct {v1, p0, p1}, Lcom/coloros/anim/b$5;-><init>(Lcom/coloros/anim/b;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 14133
    :cond_0
    iget v0, v0, Lcom/coloros/anim/a;->j:F

    .line 811
    iget-object v1, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 14137
    iget v1, v1, Lcom/coloros/anim/a;->k:F

    .line 811
    invoke-static {v0, v1, p1}, Lcom/coloros/anim/f/f;->a(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/coloros/anim/b;->c(I)V

    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0, p1}, Lcom/coloros/anim/f/c;->setRepeatCount(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/coloros/anim/b;->m:Z

    const-string v0, "Drawable#draw#start"

    .line 282
    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    const-string v0, "Drawable#draw"

    .line 283
    invoke-static {v0}, Lcom/coloros/anim/k;->c(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/coloros/anim/b;->q:Lcom/coloros/anim/c/c/b;

    if-nez v1, :cond_0

    return-void

    .line 288
    :cond_0
    iget v1, p0, Lcom/coloros/anim/b;->f:F

    .line 3019
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 3124
    iget-object v3, v3, Lcom/coloros/anim/a;->i:Landroid/graphics/Rect;

    .line 3019
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 3020
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 4124
    iget-object v4, v4, Lcom/coloros/anim/a;->i:Landroid/graphics/Rect;

    .line 3020
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 3021
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_1

    .line 293
    iget v1, p0, Lcom/coloros/anim/b;->f:F

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    move v2, v1

    move v1, v4

    :goto_0
    const/4 v3, -0x1

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 308
    iget-object v4, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 5124
    iget-object v4, v4, Lcom/coloros/anim/a;->i:Landroid/graphics/Rect;

    .line 308
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 309
    iget-object v6, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 6124
    iget-object v6, v6, Lcom/coloros/anim/a;->i:Landroid/graphics/Rect;

    .line 309
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    mul-float v5, v4, v2

    mul-float v7, v6, v2

    .line 6753
    iget v8, p0, Lcom/coloros/anim/b;->f:F

    mul-float/2addr v4, v8

    sub-float/2addr v4, v5

    mul-float/2addr v8, v6

    sub-float/2addr v8, v7

    .line 313
    invoke-virtual {p1, v4, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    invoke-virtual {p1, v1, v1, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/coloros/anim/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 320
    iget-object v1, p0, Lcom/coloros/anim/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 321
    iget-object v1, p0, Lcom/coloros/anim/b;->q:Lcom/coloros/anim/c/c/b;

    iget-object v2, p0, Lcom/coloros/anim/b;->o:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/coloros/anim/b;->r:I

    invoke-virtual {v1, p1, v2, v4}, Lcom/coloros/anim/c/c/b;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 322
    invoke-static {v0}, Lcom/coloros/anim/k;->d(Ljava/lang/String;)F

    move-result v0

    .line 323
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drawable#draw#end time = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/anim/k;->a(Ljava/lang/String;)V

    if-lez v3, :cond_3

    .line 326
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public final e()Z
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/coloros/anim/b;->d:Lcom/coloros/anim/p;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 12154
    iget-object v0, v0, Lcom/coloros/anim/a;->f:Landroidx/collection/SparseArrayCompat;

    .line 749
    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final f()V
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    return-void

    .line 12753
    :cond_0
    iget v1, p0, Lcom/coloros/anim/b;->f:F

    .line 13124
    iget-object v0, v0, Lcom/coloros/anim/a;->i:Landroid/graphics/Rect;

    .line 782
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v2, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    .line 14124
    iget-object v2, v2, Lcom/coloros/anim/a;->i:Landroid/graphics/Rect;

    .line 783
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 782
    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/coloros/anim/b;->setBounds(IIII)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/coloros/anim/b;->r:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 16124
    :cond_0
    iget-object v0, v0, Lcom/coloros/anim/a;->i:Landroid/graphics/Rect;

    .line 821
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 16753
    iget v1, p0, Lcom/coloros/anim/b;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/coloros/anim/b;->e:Lcom/coloros/anim/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 15124
    :cond_0
    iget-object v0, v0, Lcom/coloros/anim/a;->i:Landroid/graphics/Rect;

    .line 816
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 15753
    iget v1, p0, Lcom/coloros/anim/b;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 989
    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 993
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/coloros/anim/b;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/coloros/anim/b;->m:Z

    .line 253
    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 9707
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->isRunning()Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 998
    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1002
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 266
    iput p1, p0, Lcom/coloros/anim/b;->r:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    const-string p1, "EffectiveAnimation"

    const-string v0, "Use addColorFilter instead."

    .line 271
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/coloros/anim/b;->c()V

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 8369
    iget-object v0, p0, Lcom/coloros/anim/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8370
    iget-object v0, p0, Lcom/coloros/anim/b;->a:Lcom/coloros/anim/f/c;

    const/4 v1, 0x1

    .line 9278
    invoke-virtual {v0, v1}, Lcom/coloros/anim/f/c;->b(Z)V

    .line 9216
    invoke-virtual {v0}, Lcom/coloros/anim/f/c;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/anim/f/c;->a(Z)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1007
    invoke-virtual {p0}, Lcom/coloros/anim/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1011
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
