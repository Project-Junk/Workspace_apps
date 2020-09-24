.class Lcom/color/eyeprotect/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/a/a;

.field private b:Lcom/color/eyeprotect/a/e;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/color/eyeprotect/a/a$c;


# direct methods
.method private constructor <init>(Lcom/color/eyeprotect/a/a;Lcom/color/eyeprotect/a/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/a/a$a;->a:Lcom/color/eyeprotect/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/color/eyeprotect/a/e;

    invoke-direct {p1}, Lcom/color/eyeprotect/a/e;-><init>()V

    iput-object p1, p0, Lcom/color/eyeprotect/a/a$a;->b:Lcom/color/eyeprotect/a/e;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/color/eyeprotect/a/a$a;->c:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/color/eyeprotect/a/a$a;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/color/eyeprotect/a/a$a;->e:Lcom/color/eyeprotect/a/a$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/eyeprotect/a/a;Lcom/color/eyeprotect/a/a$c;Lcom/color/eyeprotect/a/a$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/a/a$a;-><init>(Lcom/color/eyeprotect/a/a;Lcom/color/eyeprotect/a/a$c;)V

    return-void
.end method

.method private a(FF)Lcom/color/eyeprotect/a/e;
    .locals 4

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$a;->b:Lcom/color/eyeprotect/a/e;

    iput p1, v0, Lcom/color/eyeprotect/a/e;->a:F

    iget-object p1, p0, Lcom/color/eyeprotect/a/a$a;->a:Lcom/color/eyeprotect/a/a;

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->f(Lcom/color/eyeprotect/a/a;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$a;->b:Lcom/color/eyeprotect/a/e;

    cmpl-float v1, p2, p1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, v0, Lcom/color/eyeprotect/a/e;->b:F

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/color/eyeprotect/a/a$a;->b:Lcom/color/eyeprotect/a/e;

    iput v0, p1, Lcom/color/eyeprotect/a/e;->b:F

    :goto_1
    iget-object p1, p0, Lcom/color/eyeprotect/a/a$a;->b:Lcom/color/eyeprotect/a/e;

    iget p1, p1, Lcom/color/eyeprotect/a/e;->b:F

    iget-object p2, p0, Lcom/color/eyeprotect/a/a$a;->e:Lcom/color/eyeprotect/a/a$c;

    invoke-static {p2}, Lcom/color/eyeprotect/a/a$c;->a(Lcom/color/eyeprotect/a/a$c;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$a;->b:Lcom/color/eyeprotect/a/e;

    iget v0, v0, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {p2, v0}, Lcom/color/eyeprotect/a/a;->a(Ljava/util/ArrayList;F)Lcom/color/eyeprotect/a/e;

    move-result-object p2

    iget p2, p2, Lcom/color/eyeprotect/a/e;->b:F

    sub-float/2addr p1, p2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$a;->e:Lcom/color/eyeprotect/a/a$c;

    invoke-static {v0}, Lcom/color/eyeprotect/a/a$c;->b(Lcom/color/eyeprotect/a/a$c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/eyeprotect/a/e;

    invoke-static {v1}, Lcom/color/eyeprotect/a/e;->a(Lcom/color/eyeprotect/a/e;)Lcom/color/eyeprotect/a/e;

    move-result-object v1

    iget v2, v1, Lcom/color/eyeprotect/a/e;->b:F

    add-float/2addr v2, p1

    iput v2, v1, Lcom/color/eyeprotect/a/e;->b:F

    iget v2, v1, Lcom/color/eyeprotect/a/e;->b:F

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$a;->a:Lcom/color/eyeprotect/a/a;

    invoke-static {v3}, Lcom/color/eyeprotect/a/a;->p(Lcom/color/eyeprotect/a/a;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/color/eyeprotect/a/a$a;->a:Lcom/color/eyeprotect/a/a;

    invoke-static {v2}, Lcom/color/eyeprotect/a/a;->p(Lcom/color/eyeprotect/a/a;)F

    move-result v2

    :goto_3
    iput v2, v1, Lcom/color/eyeprotect/a/e;->b:F

    goto :goto_4

    :cond_2
    iget v2, v1, Lcom/color/eyeprotect/a/e;->b:F

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$a;->a:Lcom/color/eyeprotect/a/a;

    invoke-static {v3}, Lcom/color/eyeprotect/a/a;->f(Lcom/color/eyeprotect/a/a;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/color/eyeprotect/a/a$a;->a:Lcom/color/eyeprotect/a/a;

    invoke-static {v2}, Lcom/color/eyeprotect/a/a;->f(Lcom/color/eyeprotect/a/a;)F

    move-result v2

    goto :goto_3

    :cond_3
    :goto_4
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iput-object p2, p0, Lcom/color/eyeprotect/a/a$a;->c:Ljava/util/ArrayList;

    const-string p1, "AICurveModel"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dragging, getDragPointDumpString:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/color/eyeprotect/a/a$a;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/color/eyeprotect/a/d;->a(Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a$a;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AICurveModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dragging, verifyMonotone error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/color/eyeprotect/a/b/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string p1, "AICurveModel"

    const-string p2, "dragging, verifyMonotone ok"

    invoke-static {p1, p2}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object p1, p0, Lcom/color/eyeprotect/a/a$a;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/color/eyeprotect/a/a$a;->a:Lcom/color/eyeprotect/a/a;

    invoke-static {p2}, Lcom/color/eyeprotect/a/a;->h(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/c;

    move-result-object p2

    iget p2, p2, Lcom/color/eyeprotect/a/c;->a:I

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$a;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/eyeprotect/a/e;

    invoke-virtual {v0}, Lcom/color/eyeprotect/a/e;->a()F

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/color/eyeprotect/a/d;->a(Ljava/util/ArrayList;IF)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/a/a$a;->d:Ljava/util/ArrayList;

    const-string p1, "AICurveModel"

    const-string p2, "mDragFinalPoints : "

    invoke-static {p1, p2}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/color/eyeprotect/a/a$a;->a:Lcom/color/eyeprotect/a/a;

    iget-object p2, p0, Lcom/color/eyeprotect/a/a$a;->d:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$a;->b:Lcom/color/eyeprotect/a/e;

    return-object p0
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a$a;FF)Lcom/color/eyeprotect/a/e;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/a/a$a;->a(FF)Lcom/color/eyeprotect/a/e;

    move-result-object p0

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$a;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mDragSrcPoints:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/color/eyeprotect/a/e;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$a;->a:Lcom/color/eyeprotect/a/a;

    iget v4, v2, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v3, v4}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "),"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "mDragPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$a;->a:Lcom/color/eyeprotect/a/a;

    iget-object v2, p0, Lcom/color/eyeprotect/a/a$a;->b:Lcom/color/eyeprotect/a/e;

    iget v2, v2, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v1, v2}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$a;->b:Lcom/color/eyeprotect/a/e;

    iget p0, p0, Lcom/color/eyeprotect/a/e;->b:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "mDragSrcPoints is null"

    return-object p0
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a$a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$a;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/color/eyeprotect/a/a$a;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/a/a$a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
