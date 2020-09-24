.class public final Lcom/b/a/b/b/a/b;
.super Lcom/b/a/c/c;
.source "StrategyWrapper.java"


# instance fields
.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/b/a/c/c;-><init>(Ljava/util/Map;)V

    const-string p1, "tab"

    .line 14
    iput-object p1, p0, Lcom/b/a/b/b/a/b;->b:Ljava/lang/String;

    return-void
.end method
