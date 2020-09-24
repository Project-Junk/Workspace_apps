.class Lcom/google/a/a/a$c;
.super Lcom/google/a/a/a;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/google/a/a/a;


# direct methods
.method constructor <init>(Lcom/google/a/a/a;)V
    .locals 0

    .line 1493
    invoke-direct {p0}, Lcom/google/a/a/a;-><init>()V

    .line 1494
    invoke-static {p1}, Lcom/google/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/a/a/a;

    iput-object p1, p0, Lcom/google/a/a/a$c;->a:Lcom/google/a/a/a;

    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/google/a/a/a$c;->a:Lcom/google/a/a/a;

    invoke-virtual {v0, p1}, Lcom/google/a/a/a;->a(C)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1489
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/a/a/a;->a(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/google/a/a/a;
    .locals 1

    .line 1528
    iget-object v0, p0, Lcom/google/a/a/a$c;->a:Lcom/google/a/a/a;

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 2528
    iget-object v0, p0, Lcom/google/a/a/a$c;->a:Lcom/google/a/a/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/a/a/a$c;->a:Lcom/google/a/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".negate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
