.class public Lcom/a/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/e$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/a/a/f;

.field private c:Z

.field private final d:Ljava/lang/String;

.field private final e:Lcom/a/a/e$a;

.field private final f:Lcom/a/a/e$a;

.field private final g:Lcom/a/a/e$a;

.field private h:D

.field private i:D

.field private j:Z

.field private k:D

.field private l:D

.field private m:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private n:D

.field private final o:Lcom/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/a/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/e$a;-><init>(Lcom/a/a/e$1;)V

    iput-object v0, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    new-instance v0, Lcom/a/a/e$a;

    invoke-direct {v0, v1}, Lcom/a/a/e$a;-><init>(Lcom/a/a/e$1;)V

    iput-object v0, p0, Lcom/a/a/e;->f:Lcom/a/a/e$a;

    new-instance v0, Lcom/a/a/e$a;

    invoke-direct {v0, v1}, Lcom/a/a/e$a;-><init>(Lcom/a/a/e$1;)V

    iput-object v0, p0, Lcom/a/a/e;->g:Lcom/a/a/e$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/e;->j:Z

    const-wide v0, 0x3f747ae147ae147bL    # 0.005

    iput-wide v0, p0, Lcom/a/a/e;->k:D

    iput-wide v0, p0, Lcom/a/a/e;->l:D

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/a/a/e;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/a/a/e;->n:D

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/a/a/e;->o:Lcom/a/a/b;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "spring:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/a/a/e;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/a/a/e;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/e;->d:Ljava/lang/String;

    sget-object p1, Lcom/a/a/f;->c:Lcom/a/a/f;

    invoke-virtual {p0, p1}, Lcom/a/a/e;->a(Lcom/a/a/f;)Lcom/a/a/e;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring cannot be created outside of a BaseSpringSystem"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/a/a/e$a;)D
    .locals 2

    iget-wide v0, p0, Lcom/a/a/e;->i:D

    iget-wide p0, p1, Lcom/a/a/e$a;->a:D

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private e(D)V
    .locals 7

    iget-object v0, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-object v1, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-wide v1, v1, Lcom/a/a/e$a;->a:D

    mul-double/2addr v1, p1

    iget-object v3, p0, Lcom/a/a/e;->f:Lcom/a/a/e$a;

    iget-wide v3, v3, Lcom/a/a/e$a;->a:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, v0, Lcom/a/a/e$a;->a:D

    iget-object v0, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-object v1, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-wide v1, v1, Lcom/a/a/e$a;->b:D

    mul-double/2addr v1, p1

    iget-object p0, p0, Lcom/a/a/e;->f:Lcom/a/a/e$a;

    iget-wide p0, p0, Lcom/a/a/e$a;->b:D

    mul-double/2addr p0, v5

    add-double/2addr v1, p0

    iput-wide v1, v0, Lcom/a/a/e$a;->b:D

    return-void
.end method


# virtual methods
.method public a(D)Lcom/a/a/e;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/a/a/e;->a(DZ)Lcom/a/a/e;

    move-result-object p0

    return-object p0
.end method

.method public a(DZ)Lcom/a/a/e;
    .locals 1

    iput-wide p1, p0, Lcom/a/a/e;->h:D

    iget-object v0, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iput-wide p1, v0, Lcom/a/a/e$a;->a:D

    iget-object p1, p0, Lcom/a/a/e;->o:Lcom/a/a/b;

    invoke-virtual {p0}, Lcom/a/a/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/a/a/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/a/a/e;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/a/a/g;

    invoke-interface {p2, p0}, Lcom/a/a/g;->a(Lcom/a/a/e;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/a/a/e;->h()Lcom/a/a/e;

    :cond_1
    return-object p0
.end method

.method public a(Lcom/a/a/f;)Lcom/a/a/e;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/a/a/e;->b:Lcom/a/a/f;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Lcom/a/a/g;)Lcom/a/a/e;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/a/e;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newListener is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/a/a/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b()D
    .locals 2

    iget-object p0, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-wide v0, p0, Lcom/a/a/e$a;->a:D

    return-wide v0
.end method

.method public b(D)Lcom/a/a/e;
    .locals 2

    iget-wide v0, p0, Lcom/a/a/e;->i:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/a/a/e;->b()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/e;->h:D

    iput-wide p1, p0, Lcom/a/a/e;->i:D

    iget-object p1, p0, Lcom/a/a/e;->o:Lcom/a/a/b;

    invoke-virtual {p0}, Lcom/a/a/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/a/a/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/a/a/e;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/a/a/g;

    invoke-interface {p2, p0}, Lcom/a/a/g;->d(Lcom/a/a/e;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lcom/a/a/e;->i:D

    return-wide v0
.end method

.method public c(D)Lcom/a/a/e;
    .locals 2

    iget-object v0, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-wide v0, v0, Lcom/a/a/e$a;->b:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iput-wide p1, v0, Lcom/a/a/e$a;->b:D

    iget-object p1, p0, Lcom/a/a/e;->o:Lcom/a/a/b;

    invoke-virtual {p0}, Lcom/a/a/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/a/a/b;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method d(D)V
    .locals 30

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/e;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lcom/a/a/e;->j:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const-wide v2, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v6, p1, v2

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v2, p1

    :goto_0
    iget-wide v4, v0, Lcom/a/a/e;->n:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lcom/a/a/e;->n:D

    iget-object v2, v0, Lcom/a/a/e;->b:Lcom/a/a/f;

    iget-wide v2, v2, Lcom/a/a/f;->b:D

    iget-object v4, v0, Lcom/a/a/e;->b:Lcom/a/a/f;

    iget-wide v4, v4, Lcom/a/a/f;->a:D

    iget-object v6, v0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-wide v6, v6, Lcom/a/a/e$a;->a:D

    iget-object v8, v0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-wide v8, v8, Lcom/a/a/e$a;->b:D

    iget-object v10, v0, Lcom/a/a/e;->g:Lcom/a/a/e$a;

    iget-wide v10, v10, Lcom/a/a/e$a;->a:D

    iget-object v12, v0, Lcom/a/a/e;->g:Lcom/a/a/e$a;

    iget-wide v12, v12, Lcom/a/a/e$a;->b:D

    :goto_1
    iget-wide v14, v0, Lcom/a/a/e;->n:D

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_3

    iget-wide v12, v0, Lcom/a/a/e;->n:D

    sub-double v12, v12, v16

    iput-wide v12, v0, Lcom/a/a/e;->n:D

    iget-wide v12, v0, Lcom/a/a/e;->n:D

    cmpg-double v12, v12, v16

    if-gez v12, :cond_2

    iget-object v12, v0, Lcom/a/a/e;->f:Lcom/a/a/e$a;

    iput-wide v6, v12, Lcom/a/a/e$a;->a:D

    iget-object v12, v0, Lcom/a/a/e;->f:Lcom/a/a/e$a;

    iput-wide v8, v12, Lcom/a/a/e$a;->b:D

    :cond_2
    iget-wide v12, v0, Lcom/a/a/e;->i:D

    sub-double/2addr v12, v10

    mul-double/2addr v12, v2

    mul-double v10, v4, v8

    sub-double/2addr v12, v10

    mul-double v10, v8, v16

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v14

    add-double/2addr v10, v6

    mul-double v18, v12, v16

    mul-double v18, v18, v14

    add-double v18, v8, v18

    iget-wide v14, v0, Lcom/a/a/e;->i:D

    sub-double/2addr v14, v10

    mul-double/2addr v14, v2

    mul-double v10, v4, v18

    sub-double/2addr v14, v10

    mul-double v10, v18, v16

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v10, v10, v20

    add-double/2addr v10, v6

    mul-double v22, v14, v16

    mul-double v22, v22, v20

    add-double v22, v8, v22

    move-wide/from16 v24, v12

    iget-wide v12, v0, Lcom/a/a/e;->i:D

    sub-double/2addr v12, v10

    mul-double/2addr v12, v2

    mul-double v10, v4, v22

    sub-double/2addr v12, v10

    mul-double v10, v22, v16

    add-double/2addr v10, v6

    mul-double v20, v12, v16

    add-double v20, v8, v20

    move-wide/from16 v26, v6

    iget-wide v6, v0, Lcom/a/a/e;->i:D

    sub-double/2addr v6, v10

    mul-double/2addr v6, v2

    mul-double v28, v4, v20

    sub-double v6, v6, v28

    add-double v18, v18, v22

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v22

    add-double v18, v8, v18

    add-double v18, v18, v20

    const-wide v28, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v18, v18, v28

    add-double/2addr v14, v12

    mul-double v14, v14, v22

    add-double v12, v24, v14

    add-double/2addr v12, v6

    mul-double v12, v12, v28

    mul-double v18, v18, v16

    add-double v6, v26, v18

    mul-double v12, v12, v16

    add-double/2addr v8, v12

    move-wide/from16 v12, v20

    goto/16 :goto_1

    :cond_3
    move-wide/from16 v26, v6

    iget-object v4, v0, Lcom/a/a/e;->g:Lcom/a/a/e$a;

    iput-wide v10, v4, Lcom/a/a/e$a;->a:D

    iget-object v4, v0, Lcom/a/a/e;->g:Lcom/a/a/e$a;

    iput-wide v12, v4, Lcom/a/a/e$a;->b:D

    iget-object v4, v0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iput-wide v6, v4, Lcom/a/a/e$a;->a:D

    iget-object v4, v0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iput-wide v8, v4, Lcom/a/a/e$a;->b:D

    iget-wide v4, v0, Lcom/a/a/e;->n:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    iget-wide v4, v0, Lcom/a/a/e;->n:D

    div-double v4, v4, v16

    invoke-direct {v0, v4, v5}, Lcom/a/a/e;->e(D)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/a/a/e;->g()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    iget-boolean v4, v0, Lcom/a/a/e;->c:Z

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/a/a/e;->d()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    cmpl-double v1, v2, v6

    if-lez v1, :cond_6

    iget-wide v1, v0, Lcom/a/a/e;->i:D

    iput-wide v1, v0, Lcom/a/a/e;->h:D

    iget-object v1, v0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-wide v2, v0, Lcom/a/a/e;->i:D

    iput-wide v2, v1, Lcom/a/a/e$a;->a:D

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-wide v1, v1, Lcom/a/a/e$a;->a:D

    iput-wide v1, v0, Lcom/a/a/e;->i:D

    iget-wide v1, v0, Lcom/a/a/e;->i:D

    iput-wide v1, v0, Lcom/a/a/e;->h:D

    :goto_2
    invoke-virtual {v0, v6, v7}, Lcom/a/a/e;->c(D)Lcom/a/a/e;

    move v1, v5

    :cond_7
    iget-boolean v2, v0, Lcom/a/a/e;->j:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    iput-boolean v3, v0, Lcom/a/a/e;->j:Z

    move v2, v5

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    if-eqz v1, :cond_9

    iput-boolean v5, v0, Lcom/a/a/e;->j:Z

    move v3, v5

    :cond_9
    iget-object v1, v0, Lcom/a/a/e;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/a/a/g;

    if-eqz v2, :cond_b

    invoke-interface {v4, v0}, Lcom/a/a/g;->c(Lcom/a/a/e;)V

    :cond_b
    invoke-interface {v4, v0}, Lcom/a/a/g;->a(Lcom/a/a/e;)V

    if-eqz v3, :cond_a

    invoke-interface {v4, v0}, Lcom/a/a/g;->b(Lcom/a/a/e;)V

    goto :goto_4

    :cond_c
    return-void
.end method

.method public d()Z
    .locals 4

    iget-object v0, p0, Lcom/a/a/e;->b:Lcom/a/a/f;

    iget-wide v0, v0, Lcom/a/a/f;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/a/a/e;->h:D

    iget-wide v2, p0, Lcom/a/a/e;->i:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/e;->b()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/a/e;->i:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/a/a/e;->h:D

    iget-wide v2, p0, Lcom/a/a/e;->i:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/a/a/e;->b()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/a/e;->i:D

    cmpg-double p0, v0, v2

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/e;->f()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/a/a/e;->j:Z

    return p0
.end method

.method public g()Z
    .locals 4

    iget-object v0, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-wide v0, v0, Lcom/a/a/e$a;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/a/e;->k:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    invoke-direct {p0, v0}, Lcom/a/a/e;->a(Lcom/a/a/e$a;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/a/e;->l:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/a/a/e;->b:Lcom/a/a/f;

    iget-wide v0, p0, Lcom/a/a/f;->b:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()Lcom/a/a/e;
    .locals 3

    iget-object v0, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-wide v0, v0, Lcom/a/a/e$a;->a:D

    iput-wide v0, p0, Lcom/a/a/e;->i:D

    iget-object v0, p0, Lcom/a/a/e;->g:Lcom/a/a/e$a;

    iget-object v1, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    iget-wide v1, v1, Lcom/a/a/e$a;->a:D

    iput-wide v1, v0, Lcom/a/a/e$a;->a:D

    iget-object v0, p0, Lcom/a/a/e;->e:Lcom/a/a/e$a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/a/a/e$a;->b:D

    return-object p0
.end method

.method public i()Lcom/a/a/e;
    .locals 1

    iget-object v0, p0, Lcom/a/a/e;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-object p0
.end method
