.class public final Lcom/google/a/d/a/j;
.super Lcom/google/a/d/a/a$i;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/d/a/a$i<",
        "TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/google/a/d/a/a$i;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/a/d/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/d/a/j<",
            "TV;>;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/google/a/d/a/j;

    invoke-direct {v0}, Lcom/google/a/d/a/j;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Lcom/google/a/d/a/a$i;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/google/a/d/a/a$i;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
