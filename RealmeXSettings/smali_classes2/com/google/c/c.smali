.class public final Lcom/google/c/c;
.super Ljava/lang/Object;
.source "BinaryBitmap.java"


# instance fields
.field public final a:Lcom/google/c/b;

.field private b:Lcom/google/c/b/b;


# direct methods
.method public constructor <init>(Lcom/google/c/b;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/c/c;->a:Lcom/google/c/b;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/c/l;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/c/c;->b:Lcom/google/c/b/b;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/c/c;->a:Lcom/google/c/b;

    invoke-virtual {v0}, Lcom/google/c/b;->a()Lcom/google/c/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c;->b:Lcom/google/c/b/b;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/c/c;->b:Lcom/google/c/b/b;

    return-object v0
.end method
