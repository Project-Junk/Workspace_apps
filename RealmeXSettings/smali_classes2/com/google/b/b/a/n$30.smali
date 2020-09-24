.class final Lcom/google/b/b/a/n$30;
.super Lcom/google/b/u;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/b/b/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/u<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/google/b/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/b/d/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1158
    invoke-virtual {p1}, Lcom/google/b/d/a;->f()Lcom/google/b/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/b/d/b;->i:Lcom/google/b/d/b;

    if-ne v0, v1, :cond_0

    .line 1159
    invoke-virtual {p1}, Lcom/google/b/d/a;->k()V

    const/4 p1, 0x0

    return-object p1

    .line 1162
    :cond_0
    invoke-virtual {p1}, Lcom/google/b/d/a;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/b/d/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    .line 1166
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/b/d/c;->b(Ljava/lang/String;)Lcom/google/b/d/c;

    return-void
.end method
