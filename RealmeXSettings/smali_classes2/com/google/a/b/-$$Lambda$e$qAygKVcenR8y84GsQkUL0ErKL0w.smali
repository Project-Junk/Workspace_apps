.class public final synthetic Lcom/google/a/b/-$$Lambda$e$qAygKVcenR8y84GsQkUL0ErKL0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/a/b/-$$Lambda$e$qAygKVcenR8y84GsQkUL0ErKL0w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/a/b/-$$Lambda$e$qAygKVcenR8y84GsQkUL0ErKL0w;

    invoke-direct {v0}, Lcom/google/a/b/-$$Lambda$e$qAygKVcenR8y84GsQkUL0ErKL0w;-><init>()V

    sput-object v0, Lcom/google/a/b/-$$Lambda$e$qAygKVcenR8y84GsQkUL0ErKL0w;->INSTANCE:Lcom/google/a/b/-$$Lambda$e$qAygKVcenR8y84GsQkUL0ErKL0w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/a/b/d$a;

    invoke-static {p1}, Lcom/google/a/b/e;->lambda$qAygKVcenR8y84GsQkUL0ErKL0w(Lcom/google/a/b/d$a;)Ljava/util/Spliterator;

    move-result-object p1

    return-object p1
.end method
