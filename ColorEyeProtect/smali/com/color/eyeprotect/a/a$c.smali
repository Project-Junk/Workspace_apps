.class Lcom/color/eyeprotect/a/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/a/a;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/color/eyeprotect/a/a;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/color/eyeprotect/a/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/color/eyeprotect/a/a$c;->a:Lcom/color/eyeprotect/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/color/eyeprotect/a/a$c;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/color/eyeprotect/a/a$c;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/color/eyeprotect/a/a$c;->b:Ljava/util/ArrayList;

    const-string v0, "AICurveModel"

    const-string v1, "SplineLine create"

    invoke-static {v0, v1}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/color/eyeprotect/a/a;->h(Lcom/color/eyeprotect/a/a;)Lcom/color/eyeprotect/a/c;

    move-result-object v0

    iget v0, v0, Lcom/color/eyeprotect/a/c;->a:I

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/eyeprotect/a/e;

    invoke-virtual {v1}, Lcom/color/eyeprotect/a/e;->a()F

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/color/eyeprotect/a/d;->a(Ljava/util/ArrayList;IF)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/color/eyeprotect/a/a$c;->c:Ljava/util/ArrayList;

    const-string p2, "AICurveModel"

    const-string v0, "init FinalPoints : "

    invoke-static {p2, v0}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$c;->c:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;Ljava/util/ArrayList;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/eyeprotect/a/a;Ljava/util/ArrayList;Lcom/color/eyeprotect/a/a$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/a/a$c;-><init>(Lcom/color/eyeprotect/a/a;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/a/a$c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$c;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/color/eyeprotect/a/a$c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/color/eyeprotect/a/a$c;->b:Ljava/util/ArrayList;

    return-object p0
.end method
