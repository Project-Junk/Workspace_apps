.class public final Lcom/google/c/b/e;
.super Ljava/lang/Object;
.source "DecoderResult.java"


# instance fields
.field public final a:[B

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/c/b/e;->a:[B

    .line 43
    iput-object p2, p0, Lcom/google/c/b/e;->b:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/google/c/b/e;->c:Ljava/util/List;

    .line 45
    iput-object p4, p0, Lcom/google/c/b/e;->d:Ljava/lang/String;

    return-void
.end method
