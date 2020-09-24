.class public final synthetic Lcom/google/a/b/-$$Lambda$c$a$RNGQFG2RkWXNSRQi7lH8Z8wUkOc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/google/a/b/c$a;

.field private final synthetic f$1:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/google/a/b/c$a;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/b/-$$Lambda$c$a$RNGQFG2RkWXNSRQi7lH8Z8wUkOc;->f$0:Lcom/google/a/b/c$a;

    iput-object p2, p0, Lcom/google/a/b/-$$Lambda$c$a$RNGQFG2RkWXNSRQi7lH8Z8wUkOc;->f$1:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/a/b/-$$Lambda$c$a$RNGQFG2RkWXNSRQi7lH8Z8wUkOc;->f$0:Lcom/google/a/b/c$a;

    iget-object v1, p0, Lcom/google/a/b/-$$Lambda$c$a$RNGQFG2RkWXNSRQi7lH8Z8wUkOc;->f$1:Ljava/util/function/Function;

    invoke-static {v0, v1, p1}, Lcom/google/a/b/c$a;->lambda$RNGQFG2RkWXNSRQi7lH8Z8wUkOc(Lcom/google/a/b/c$a;Ljava/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method
