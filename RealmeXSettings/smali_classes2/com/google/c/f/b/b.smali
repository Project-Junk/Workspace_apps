.class public final Lcom/google/c/f/b/b;
.super Ljava/lang/Object;
.source "PDF417DetectorResult.java"


# instance fields
.field public final a:Lcom/google/c/b/b;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lcom/google/c/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/c/b/b;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/b;",
            "Ljava/util/List<",
            "[",
            "Lcom/google/c/q;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/c/f/b/b;->a:Lcom/google/c/b/b;

    .line 34
    iput-object p2, p0, Lcom/google/c/f/b/b;->b:Ljava/util/List;

    return-void
.end method
