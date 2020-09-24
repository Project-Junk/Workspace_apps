.class public final Lcom/google/c/g/b/f;
.super Ljava/lang/Object;
.source "FinderPatternInfo.java"


# instance fields
.field final a:Lcom/google/c/g/b/d;

.field final b:Lcom/google/c/g/b/d;

.field final c:Lcom/google/c/g/b/d;


# direct methods
.method public constructor <init>([Lcom/google/c/g/b/d;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/c/g/b/f;->a:Lcom/google/c/g/b/d;

    const/4 v0, 0x1

    .line 33
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/c/g/b/f;->b:Lcom/google/c/g/b/d;

    const/4 v0, 0x2

    .line 34
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/c/g/b/f;->c:Lcom/google/c/g/b/d;

    return-void
.end method
