.class public final synthetic Lcom/google/a/b/-$$Lambda$c$a$XuqY2HnX4mCNd8_EzAJI1SbRfLI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Function;

.field private final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/-$$Lambda$c$a$XuqY2HnX4mCNd8_EzAJI1SbRfLI;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/a/b/-$$Lambda$c$a$XuqY2HnX4mCNd8_EzAJI1SbRfLI;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/-$$Lambda$c$a$XuqY2HnX4mCNd8_EzAJI1SbRfLI;->f$0:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/a/b/-$$Lambda$c$a$XuqY2HnX4mCNd8_EzAJI1SbRfLI;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lcom/google/a/b/c$a;->lambda$XuqY2HnX4mCNd8_EzAJI1SbRfLI(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
