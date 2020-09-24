.class final Lcom/google/c/e/a/d;
.super Lcom/google/c/e/a/b;
.source "Pair.java"


# instance fields
.field final c:Lcom/google/c/e/a/c;

.field d:I


# direct methods
.method constructor <init>(IILcom/google/c/e/a/c;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/c/e/a/b;-><init>(II)V

    .line 26
    iput-object p3, p0, Lcom/google/c/e/a/d;->c:Lcom/google/c/e/a/c;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 38
    iget v0, p0, Lcom/google/c/e/a/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/e/a/d;->d:I

    return-void
.end method
