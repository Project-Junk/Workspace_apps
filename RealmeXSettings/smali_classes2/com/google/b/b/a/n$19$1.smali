.class final Lcom/google/b/b/a/n$19$1;
.super Lcom/google/b/u;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/b/b/a/n$19;->a(Lcom/google/b/f;Lcom/google/b/c/a;)Lcom/google/b/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/u<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/u;

.field final synthetic b:Lcom/google/b/b/a/n$19;


# direct methods
.method constructor <init>(Lcom/google/b/b/a/n$19;Lcom/google/b/u;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/google/b/b/a/n$19$1;->b:Lcom/google/b/b/a/n$19;

    iput-object p2, p0, Lcom/google/b/b/a/n$19$1;->a:Lcom/google/b/u;

    invoke-direct {p0}, Lcom/google/b/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/b/d/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1582
    iget-object v0, p0, Lcom/google/b/b/a/n$19$1;->a:Lcom/google/b/u;

    invoke-virtual {v0, p1}, Lcom/google/b/u;->a(Lcom/google/b/d/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 1583
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic a(Lcom/google/b/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    check-cast p2, Ljava/sql/Timestamp;

    .line 1587
    iget-object v0, p0, Lcom/google/b/b/a/n$19$1;->a:Lcom/google/b/u;

    invoke-virtual {v0, p1, p2}, Lcom/google/b/u;->a(Lcom/google/b/d/c;Ljava/lang/Object;)V

    return-void
.end method
