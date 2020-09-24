.class abstract Lcom/google/a/a/a$a;
.super Lcom/google/a/a/a;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 939
    invoke-direct {p0}, Lcom/google/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 939
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/a/a/a;->a(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public final b()Lcom/google/a/a/a;
    .locals 1

    .line 948
    new-instance v0, Lcom/google/a/a/a$d;

    invoke-direct {v0, p0}, Lcom/google/a/a/a$d;-><init>(Lcom/google/a/a/a;)V

    return-object v0
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 939
    invoke-virtual {p0}, Lcom/google/a/a/a$a;->b()Lcom/google/a/a/a;

    move-result-object v0

    return-object v0
.end method
