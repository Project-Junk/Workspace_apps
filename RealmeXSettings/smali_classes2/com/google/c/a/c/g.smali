.class abstract Lcom/google/c/a/c/g;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field static final a:Lcom/google/c/a/c/g;


# instance fields
.field final b:Lcom/google/c/a/c/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Lcom/google/c/a/c/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Lcom/google/c/a/c/e;-><init>(Lcom/google/c/a/c/g;II)V

    sput-object v0, Lcom/google/c/a/c/g;->a:Lcom/google/c/a/c/g;

    return-void
.end method

.method constructor <init>(Lcom/google/c/a/c/g;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/c/a/c/g;->b:Lcom/google/c/a/c/g;

    return-void
.end method


# virtual methods
.method final a(II)Lcom/google/c/a/c/g;
    .locals 1

    .line 36
    new-instance v0, Lcom/google/c/a/c/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/c/a/c/e;-><init>(Lcom/google/c/a/c/g;II)V

    return-object v0
.end method

.method abstract a(Lcom/google/c/b/a;[B)V
.end method

.method final b(II)Lcom/google/c/a/c/g;
    .locals 1

    .line 41
    new-instance v0, Lcom/google/c/a/c/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/c/a/c/b;-><init>(Lcom/google/c/a/c/g;II)V

    return-object v0
.end method
