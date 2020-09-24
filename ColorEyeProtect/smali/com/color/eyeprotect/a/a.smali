.class public Lcom/color/eyeprotect/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/eyeprotect/a/a/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/a/a$a;,
        Lcom/color/eyeprotect/a/a$c;,
        Lcom/color/eyeprotect/a/a$d;,
        Lcom/color/eyeprotect/a/a$b;,
        Lcom/color/eyeprotect/a/a$e;
    }
.end annotation


# instance fields
.field private A:Lcom/color/eyeprotect/a/a/b;

.field private final a:Lcom/color/eyeprotect/a/a$b;

.field private final b:Lcom/color/eyeprotect/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/color/eyeprotect/a/b/a<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Handler;

.field private f:Lcom/color/eyeprotect/a/c;

.field private g:Lcom/color/eyeprotect/a/a$c;

.field private h:Lcom/color/eyeprotect/a/a$a;

.field private i:Lcom/color/eyeprotect/a/e;

.field private j:Lcom/color/eyeprotect/a/e;

.field private k:F

.field private l:F

.field private m:I

.field private n:Z

.field private o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:Lcom/color/eyeprotect/a/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/color/eyeprotect/a/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/color/eyeprotect/a/a$b;-><init>(Lcom/color/eyeprotect/a/a$1;)V

    iput-object v0, p0, Lcom/color/eyeprotect/a/a;->a:Lcom/color/eyeprotect/a/a$b;

    new-instance v0, Lcom/color/eyeprotect/a/b/a;

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/color/eyeprotect/a/b/a;-><init>(I)V

    iput-object v0, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/eyeprotect/a/a;->m:I

    iput-object p1, p0, Lcom/color/eyeprotect/a/a;->c:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(FLcom/color/eyeprotect/a/b/a;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/color/eyeprotect/a/b/a<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    const-string v0, "AICurveModel"

    const-string v1, "findSecondNearestLux, lux"

    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->e(F)V

    invoke-virtual {p2}, Lcom/color/eyeprotect/a/b/a;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 p2, 0x4f000000

    move v0, p2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v2, p1, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v3, p1, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    move v0, p2

    move p2, v1

    goto :goto_0

    :cond_1
    sub-float v3, p1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    const-string p0, "AICurveModel"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findSecondNearestLux, nearestMaxLux:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "AICurveModel"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "findSecondNearestLux, secondNearestLux:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a;)F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/a;->k:F

    return p0
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->h(F)F

    move-result p0

    return p0
.end method

.method static synthetic a(Ljava/util/ArrayList;F)Lcom/color/eyeprotect/a/e;
    .locals 0

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/a;->c(Ljava/util/ArrayList;F)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0
.end method

.method private a(FF)V
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->h:Lcom/color/eyeprotect/a/a$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/color/eyeprotect/a/a$a;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->g:Lcom/color/eyeprotect/a/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/color/eyeprotect/a/a$a;-><init>(Lcom/color/eyeprotect/a/a;Lcom/color/eyeprotect/a/a$c;Lcom/color/eyeprotect/a/a$1;)V

    iput-object v0, p0, Lcom/color/eyeprotect/a/a;->h:Lcom/color/eyeprotect/a/a$a;

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_1

    const-string p0, "AICurveModel"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleBrightnessByUser warnning, y is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->h:Lcom/color/eyeprotect/a/a$a;

    invoke-static {v0, p1, p2}, Lcom/color/eyeprotect/a/a$a;->a(Lcom/color/eyeprotect/a/a$a;FF)Lcom/color/eyeprotect/a/e;

    move-result-object p1

    const-string p2, "AICurveModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBrightnessByUser before set. mCurrentInLinePoint.y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->i:Lcom/color/eyeprotect/a/e;

    iget v1, v1, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mTargetEffectPoint.y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget v1, v1, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/color/eyeprotect/a/a;->o:Z

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/e;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance p2, Lcom/color/eyeprotect/a/c;

    invoke-direct {p2}, Lcom/color/eyeprotect/a/c;-><init>()V

    iput-object p2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    const-string p2, "AICurveModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init mModelConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    invoke-virtual {p2}, Lcom/color/eyeprotect/a/c;->j()F

    move-result p2

    iput p2, p0, Lcom/color/eyeprotect/a/a;->r:F

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    invoke-virtual {p2}, Lcom/color/eyeprotect/a/c;->k()F

    move-result p2

    iput p2, p0, Lcom/color/eyeprotect/a/a;->s:F

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget p2, p2, Lcom/color/eyeprotect/a/c;->e:F

    iput p2, p0, Lcom/color/eyeprotect/a/a;->t:F

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget p2, p2, Lcom/color/eyeprotect/a/c;->f:F

    iput p2, p0, Lcom/color/eyeprotect/a/a;->u:F

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget p2, p2, Lcom/color/eyeprotect/a/c;->g:F

    iput p2, p0, Lcom/color/eyeprotect/a/a;->v:F

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget p2, p2, Lcom/color/eyeprotect/a/c;->h:F

    iput p2, p0, Lcom/color/eyeprotect/a/a;->w:F

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget p2, p2, Lcom/color/eyeprotect/a/c;->i:F

    iput p2, p0, Lcom/color/eyeprotect/a/a;->x:F

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget p2, p2, Lcom/color/eyeprotect/a/c;->j:F

    iput p2, p0, Lcom/color/eyeprotect/a/a;->y:F

    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "AICurveModel"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/color/eyeprotect/a/a$e;

    invoke-direct {v1, p0, p2, v0}, Lcom/color/eyeprotect/a/a$e;-><init>(Lcom/color/eyeprotect/a/a;Landroid/os/Looper;Lcom/color/eyeprotect/a/a$1;)V

    iput-object v1, p0, Lcom/color/eyeprotect/a/a;->d:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const-string p2, "AICurveModel"

    const-string v1, "AICurveModel init error, looper == null!!"

    invoke-static {p2, v1}, Lcom/color/eyeprotect/a/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p2, Lcom/color/eyeprotect/a/e;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget v2, v2, Lcom/color/eyeprotect/a/c;->b:F

    invoke-direct {p2, v1, v2}, Lcom/color/eyeprotect/a/e;-><init>(FF)V

    iput-object p2, p0, Lcom/color/eyeprotect/a/a;->i:Lcom/color/eyeprotect/a/e;

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->i:Lcom/color/eyeprotect/a/e;

    invoke-static {p2}, Lcom/color/eyeprotect/a/e;->a(Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;

    move-result-object p2

    iput-object p2, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    new-instance p2, Lcom/color/eyeprotect/a/a$c;

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p2, p0, v1, v0}, Lcom/color/eyeprotect/a/a$c;-><init>(Lcom/color/eyeprotect/a/a;Ljava/util/ArrayList;Lcom/color/eyeprotect/a/a$1;)V

    iput-object p2, p0, Lcom/color/eyeprotect/a/a;->g:Lcom/color/eyeprotect/a/a$c;

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    invoke-virtual {p2}, Lcom/color/eyeprotect/a/c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->g:Lcom/color/eyeprotect/a/a$c;

    invoke-direct {p0, p2}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a$c;)V

    new-instance p2, Lcom/color/eyeprotect/a/a/b;

    invoke-direct {p2, p1}, Lcom/color/eyeprotect/a/a/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/color/eyeprotect/a/a;->A:Lcom/color/eyeprotect/a/a/b;

    iget-object p2, p0, Lcom/color/eyeprotect/a/a;->A:Lcom/color/eyeprotect/a/a/b;

    invoke-virtual {p2, p0}, Lcom/color/eyeprotect/a/a/b;->a(Lcom/color/eyeprotect/a/a/b$b;)V

    invoke-static {p1}, Lcom/color/eyeprotect/a/b/b;->a(Landroid/content/Context;)Lcom/color/eyeprotect/a/b/b;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/a/a;->z:Lcom/color/eyeprotect/a/b/b;

    iget-object p1, p0, Lcom/color/eyeprotect/a/a;->z:Lcom/color/eyeprotect/a/b/b;

    invoke-virtual {p1}, Lcom/color/eyeprotect/a/b/b;->a()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/eyeprotect/a/a;->n:Z

    return-void
.end method

.method private a(Lcom/color/eyeprotect/a/a$c;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/color/eyeprotect/a/a$1;

    invoke-direct {v1, p0, p1}, Lcom/color/eyeprotect/a/a$1;-><init>(Lcom/color/eyeprotect/a/a;Lcom/color/eyeprotect/a/a$c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/a/a;->a(FF)V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Lcom/color/eyeprotect/a/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/color/eyeprotect/a/b/a<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/color/eyeprotect/a/a;->k:F

    invoke-direct {p0, v0, p1}, Lcom/color/eyeprotect/a/a;->a(FLcom/color/eyeprotect/a/b/a;)F

    move-result p1

    iput p1, p0, Lcom/color/eyeprotect/a/a;->k:F

    return-void
.end method

.method private a(Lcom/color/eyeprotect/a/e;)V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->i:Lcom/color/eyeprotect/a/e;

    iget v1, p1, Lcom/color/eyeprotect/a/e;->a:F

    iput v1, v0, Lcom/color/eyeprotect/a/e;->a:F

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->i:Lcom/color/eyeprotect/a/e;

    iget v1, p1, Lcom/color/eyeprotect/a/e;->b:F

    iput v1, v0, Lcom/color/eyeprotect/a/e;->b:F

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget v1, p1, Lcom/color/eyeprotect/a/e;->a:F

    iput v1, v0, Lcom/color/eyeprotect/a/e;->a:F

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget p1, p1, Lcom/color/eyeprotect/a/e;->b:F

    iput p1, p0, Lcom/color/eyeprotect/a/e;->b:F

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/eyeprotect/a/e;

    const-string v1, "AICurveModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/color/eyeprotect/a/e;->a:F

    invoke-direct {p0, v3}, Lcom/color/eyeprotect/a/a;->h(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(FZ)Z
    .locals 4

    iget-boolean v0, p0, Lcom/color/eyeprotect/a/a;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "AICurveModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateBrightness mSensorValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", isReset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->g(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->i(F)Lcom/color/eyeprotect/a/e;

    move-result-object p1

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a;->e()Lcom/color/eyeprotect/a/a$d;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "AICurveModel"

    const-string p1, "handleUpdateBrightness stablePoints == null"

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-static {p2, p1}, Lcom/color/eyeprotect/a/a$d;->a(Lcom/color/eyeprotect/a/a$d;Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;

    move-result-object v0

    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    invoke-static {p2, v2, p1, v0}, Lcom/color/eyeprotect/a/a$d;->a(Lcom/color/eyeprotect/a/a$d;Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/e;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "AICurveModel"

    const-string v0, "handleUpdateBrightness verify error, try again"

    invoke-static {p2, v0}, Lcom/color/eyeprotect/a/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a;->e()Lcom/color/eyeprotect/a/a$d;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p0, "AICurveModel"

    const-string p1, "handleUpdateBrightness stablePoints == null"

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-static {p2, p1}, Lcom/color/eyeprotect/a/a$d;->a(Lcom/color/eyeprotect/a/a$d;Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;

    move-result-object v0

    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    invoke-static {p2, v2, p1, v0}, Lcom/color/eyeprotect/a/a$d;->a(Lcom/color/eyeprotect/a/a$d;Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/e;)Z

    move-result p1

    const-string p2, "AICurveModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateBrightness try again verifyResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/color/eyeprotect/a/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget p1, p1, Lcom/color/eyeprotect/a/e;->b:F

    iget p2, v0, Lcom/color/eyeprotect/a/e;->b:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, p1, v2

    if-gez p1, :cond_4

    const-string p0, "AICurveModel"

    const-string p1, "handleUpdateBrightness mTargetEffectPoint.y == nextPoint.y"

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    const-string p1, "AICurveModel"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateBrightness brightness change from "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget v2, v2, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", to "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/color/eyeprotect/a/a;->a:Lcom/color/eyeprotect/a/a$b;

    iget p2, v0, Lcom/color/eyeprotect/a/e;->b:F

    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget v2, v2, Lcom/color/eyeprotect/a/e;->b:F

    cmpl-float p2, p2, v2

    const/4 v2, 0x1

    if-lez p2, :cond_5

    move v1, v2

    :cond_5
    invoke-static {p1, v1}, Lcom/color/eyeprotect/a/a$b;->a(Lcom/color/eyeprotect/a/a$b;I)V

    iget-object p1, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget p2, v0, Lcom/color/eyeprotect/a/e;->a:F

    iput p2, p1, Lcom/color/eyeprotect/a/e;->a:F

    iget-object p1, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget p2, v0, Lcom/color/eyeprotect/a/e;->b:F

    iput p2, p1, Lcom/color/eyeprotect/a/e;->b:F

    const-string p1, "AICurveModel"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleUpdateBrightness TargetBrightnessPoint update, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget v0, v0, Lcom/color/eyeprotect/a/e;->a:F

    invoke-direct {p0, v0}, Lcom/color/eyeprotect/a/a;->h(F)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget p0, p0, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    const-string p0, "AICurveModel"

    const-string p1, "not find nextPoint, do nothing."

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a;FZ)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/a/a;->a(FZ)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/a/a;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/color/eyeprotect/a/a;F)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->g(F)F

    move-result p0

    return p0
.end method

.method private static b(Ljava/util/ArrayList;F)Lcom/color/eyeprotect/a/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;F)",
            "Lcom/color/eyeprotect/a/e;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/eyeprotect/a/e;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/eyeprotect/a/e;

    iget v3, v1, Lcom/color/eyeprotect/a/e;->b:F

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    invoke-static {v1}, Lcom/color/eyeprotect/a/e;->a(Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0

    :cond_0
    iget v1, v2, Lcom/color/eyeprotect/a/e;->b:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    invoke-static {v2}, Lcom/color/eyeprotect/a/e;->a(Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/eyeprotect/a/e;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/eyeprotect/a/e;

    iget v2, v2, Lcom/color/eyeprotect/a/e;->b:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    iget v2, v3, Lcom/color/eyeprotect/a/e;->b:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    :goto_1
    const-string p0, "AICurveModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findPointByY y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", rightPoint:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/color/eyeprotect/a/e;->a(Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    invoke-virtual {v0}, Lcom/color/eyeprotect/a/b/a;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/color/eyeprotect/a/a;->m:I

    return-void
.end method

.method static synthetic b(Lcom/color/eyeprotect/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a;->d()V

    return-void
.end method

.method static synthetic b(Lcom/color/eyeprotect/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/color/eyeprotect/a/a;->q:Z

    return p1
.end method

.method private static c(Ljava/util/ArrayList;F)Lcom/color/eyeprotect/a/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;F)",
            "Lcom/color/eyeprotect/a/e;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/eyeprotect/a/e;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/eyeprotect/a/e;

    iget v3, v1, Lcom/color/eyeprotect/a/e;->a:F

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    invoke-static {v1}, Lcom/color/eyeprotect/a/e;->a(Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0

    :cond_0
    iget v1, v2, Lcom/color/eyeprotect/a/e;->a:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    invoke-static {v2}, Lcom/color/eyeprotect/a/e;->a(Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/eyeprotect/a/e;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/eyeprotect/a/e;

    iget v2, v2, Lcom/color/eyeprotect/a/e;->a:F

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    iget v2, v3, Lcom/color/eyeprotect/a/e;->a:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    :goto_1
    const-string p0, "AICurveModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findPointByX x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", rightPoint:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/color/eyeprotect/a/e;->a(Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    invoke-virtual {v1}, Lcom/color/eyeprotect/a/b/a;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/color/eyeprotect/a/a;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/eyeprotect/a/a;->h:Lcom/color/eyeprotect/a/a$a;

    const-string p0, "AICurveModel"

    const-string v0, "reset targetBrightnessPoint."

    invoke-static {p0, v0}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private c(F)V
    .locals 1

    iput p1, p0, Lcom/color/eyeprotect/a/a;->l:F

    iget-boolean v0, p0, Lcom/color/eyeprotect/a/a;->p:Z

    if-eqz v0, :cond_0

    const-string p0, "AICurveModel"

    const-string p1, "setCctInner, is dragging, do not receive sensor data."

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->d(F)V

    return-void
.end method

.method static synthetic c(Lcom/color/eyeprotect/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a;->c()V

    return-void
.end method

.method static synthetic c(Lcom/color/eyeprotect/a/a;F)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->f(F)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/color/eyeprotect/a/a;)F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/a;->l:F

    return p0
.end method

.method static synthetic d(Lcom/color/eyeprotect/a/a;F)Lcom/color/eyeprotect/a/e;
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->j(F)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget v2, v2, Lcom/color/eyeprotect/a/e;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "AICurveModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTargetBrightnessChange brightness change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    iget p0, p0, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d(F)V
    .locals 9

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/color/eyeprotect/a/a;->k:F

    iget-boolean v2, p0, Lcom/color/eyeprotect/a/a;->q:Z

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/color/eyeprotect/a/a;->q:Z

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a;->b()V

    iput p1, p0, Lcom/color/eyeprotect/a/a;->k:F

    const-string p1, "AICurveModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stableLuxInOneSide, force LUX_CHANGED, lux:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/color/eyeprotect/a/a;->k:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->d:Landroid/os/Handler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    invoke-virtual {v2}, Lcom/color/eyeprotect/a/b/a;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/eyeprotect/a/b/a;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->e(F)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    invoke-virtual {v2, v4}, Lcom/color/eyeprotect/a/b/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v5, p1, v1

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    sub-float/2addr v2, v1

    div-float/2addr v2, v5

    cmpl-float v2, v2, v6

    if-lez v2, :cond_3

    move v4, v8

    :cond_3
    cmpl-float v2, p1, v1

    if-lez v2, :cond_4

    const/4 v2, 0x4

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    :goto_0
    if-nez v4, :cond_6

    iget v2, p0, Lcom/color/eyeprotect/a/a;->m:I

    add-int/2addr v2, v8

    iput v2, p0, Lcom/color/eyeprotect/a/a;->m:I

    iget v2, p0, Lcom/color/eyeprotect/a/a;->m:I

    if-ge v2, v8, :cond_5

    const-string v2, "AICurveModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stableLuxInOneSide, noise is ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/color/eyeprotect/a/a;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), lux:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", lastStableLux: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v2, "AICurveModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stableLuxInOneSide, noise is overflow("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/color/eyeprotect/a/a;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") and reset list, this one noise lux is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", lastStableLux: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a;->b()V

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/color/eyeprotect/a/b/a;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/color/eyeprotect/a/b/a;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    invoke-virtual {v1}, Lcom/color/eyeprotect/a/b/a;->size()I

    move-result v1

    if-lt v1, v2, :cond_8

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    invoke-direct {p0, v1}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/b/a;)V

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->d:Landroid/os/Handler;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    const-string v1, "AICurveModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stableLuxInOneSide, do update, mSensorValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/color/eyeprotect/a/a;->k:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a;->b()V

    goto :goto_1

    :cond_8
    const-string v1, "AICurveModel"

    const-string v2, "stableLuxInOneSide, not enough, continue check"

    invoke-static {v1, v2}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->e(F)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "AICurveModel"

    const-string p1, "stableLuxInOneSide end"

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic e(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/a$a;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->h:Lcom/color/eyeprotect/a/a$a;

    return-object p0
.end method

.method private e()Lcom/color/eyeprotect/a/a$d;
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/color/eyeprotect/a/a$d;

    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->j:Lcom/color/eyeprotect/a/e;

    invoke-direct {v0, p0, v2, v1}, Lcom/color/eyeprotect/a/a$d;-><init>(Lcom/color/eyeprotect/a/a;Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/a$1;)V

    return-object v0

    :cond_0
    return-object v1
.end method

.method static synthetic e(Lcom/color/eyeprotect/a/a;F)Lcom/color/eyeprotect/a/e;
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->i(F)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0
.end method

.method private e(F)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCCTByEnv, lux:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    invoke-virtual {p1}, Lcom/color/eyeprotect/a/b/a;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->b:Lcom/color/eyeprotect/a/b/a;

    invoke-virtual {v2, v1}, Lcom/color/eyeprotect/a/b/a;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_0

    const-string v2, "]"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v2, ","

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "AICurveModel"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/color/eyeprotect/a/a;)F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/a;->s:F

    return p0
.end method

.method private f()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget-object v1, v1, Lcom/color/eyeprotect/a/c;->c:[F

    array-length v1, v1

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget-object v2, v2, Lcom/color/eyeprotect/a/c;->c:[F

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget-object v5, v5, Lcom/color/eyeprotect/a/c;->c:[F

    aget v5, v5, v4

    invoke-direct {p0, v5}, Lcom/color/eyeprotect/a/a;->g(F)F

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    new-instance v4, Lcom/color/eyeprotect/a/e;

    aget v5, v1, v3

    iget-object v6, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget-object v6, v6, Lcom/color/eyeprotect/a/c;->d:[F

    aget v6, v6, v3

    invoke-direct {v4, v5, v6}, Lcom/color/eyeprotect/a/e;-><init>(FF)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "AICurveModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSrcPoints ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    iget-object v6, v6, Lcom/color/eyeprotect/a/c;->d:[F

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private f(F)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/color/eyeprotect/a/a;->a(FZ)Z

    move-result p0

    return p0
.end method

.method private g(F)F
    .locals 4

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    invoke-virtual {v0}, Lcom/color/eyeprotect/a/c;->a()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    goto :goto_0

    :cond_0
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object p1, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    invoke-virtual {p1}, Lcom/color/eyeprotect/a/c;->b()F

    move-result p1

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-float p1, v0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    invoke-virtual {p0}, Lcom/color/eyeprotect/a/c;->c()F

    move-result p0

    div-float p0, p1, p0

    :goto_0
    return p0
.end method

.method static synthetic g(Lcom/color/eyeprotect/a/a;)F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/a;->t:F

    return p0
.end method

.method private h(F)F
    .locals 4

    float-to-double v0, p1

    iget-object v2, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    invoke-virtual {v2}, Lcom/color/eyeprotect/a/c;->a()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    mul-float/2addr p1, p1

    neg-float p1, p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    invoke-virtual {v0}, Lcom/color/eyeprotect/a/c;->c()F

    move-result v0

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    invoke-virtual {p0}, Lcom/color/eyeprotect/a/c;->b()F

    move-result p0

    sub-float/2addr p1, p0

    :goto_0
    mul-float/2addr p1, p1

    :goto_1
    return p1
.end method

.method static synthetic h(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/c;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->f:Lcom/color/eyeprotect/a/c;

    return-object p0
.end method

.method static synthetic i(Lcom/color/eyeprotect/a/a;)F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/a;->w:F

    return p0
.end method

.method private i(F)Lcom/color/eyeprotect/a/e;
    .locals 1

    iget-boolean v0, p0, Lcom/color/eyeprotect/a/a;->o:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->g:Lcom/color/eyeprotect/a/a$c;

    invoke-static {p0}, Lcom/color/eyeprotect/a/a$c;->a(Lcom/color/eyeprotect/a/a$c;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/a;->c(Ljava/util/ArrayList;F)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->h:Lcom/color/eyeprotect/a/a$a;

    invoke-static {p0}, Lcom/color/eyeprotect/a/a$a;->a(Lcom/color/eyeprotect/a/a$a;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic j(Lcom/color/eyeprotect/a/a;)F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/a;->u:F

    return p0
.end method

.method private j(F)Lcom/color/eyeprotect/a/e;
    .locals 1

    iget-boolean v0, p0, Lcom/color/eyeprotect/a/a;->o:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->g:Lcom/color/eyeprotect/a/a$c;

    invoke-static {p0}, Lcom/color/eyeprotect/a/a$c;->a(Lcom/color/eyeprotect/a/a$c;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/a;->b(Ljava/util/ArrayList;F)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->h:Lcom/color/eyeprotect/a/a$a;

    invoke-static {p0}, Lcom/color/eyeprotect/a/a$a;->a(Lcom/color/eyeprotect/a/a$a;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic k(Lcom/color/eyeprotect/a/a;)F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/a;->v:F

    return p0
.end method

.method static synthetic l(Lcom/color/eyeprotect/a/a;)F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/a;->x:F

    return p0
.end method

.method static synthetic m(Lcom/color/eyeprotect/a/a;)F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/a;->y:F

    return p0
.end method

.method static synthetic n(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/a$b;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->a:Lcom/color/eyeprotect/a/a$b;

    return-object p0
.end method

.method static synthetic o(Lcom/color/eyeprotect/a/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/eyeprotect/a/a;->o:Z

    return p0
.end method

.method static synthetic p(Lcom/color/eyeprotect/a/a;)F
    .locals 0

    iget p0, p0, Lcom/color/eyeprotect/a/a;->r:F

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/eyeprotect/a/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->d:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/color/eyeprotect/a/a;->d:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    iput-object v0, p0, Lcom/color/eyeprotect/a/a;->d:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->A:Lcom/color/eyeprotect/a/a/b;

    invoke-virtual {v0}, Lcom/color/eyeprotect/a/a/b;->a()V

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->z:Lcom/color/eyeprotect/a/b/b;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->z:Lcom/color/eyeprotect/a/b/b;

    invoke-virtual {p0}, Lcom/color/eyeprotect/a/b/b;->b()V

    :cond_1
    return-void
.end method

.method public a(F)V
    .locals 3

    const-string v0, "AICurveModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCCTByEnv, cct:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->A:Lcom/color/eyeprotect/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->A:Lcom/color/eyeprotect/a/a/b;

    invoke-virtual {v0}, Lcom/color/eyeprotect/a/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->c(F)V

    iget-object v0, p0, Lcom/color/eyeprotect/a/a;->A:Lcom/color/eyeprotect/a/a/b;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->A:Lcom/color/eyeprotect/a/a/b;

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/a/a/b;->a(F)V

    :cond_1
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/a/a;->e:Landroid/os/Handler;

    iget-object p0, p0, Lcom/color/eyeprotect/a/a;->d:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 3

    const-string v0, "AICurveModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorPlayback, lux:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/a/a;->c(F)V

    return-void
.end method
