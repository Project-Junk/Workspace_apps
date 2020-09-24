.class public abstract Lcom/b/a/a/a/a;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Lcom/b/a/a/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/b/a/a/a/a$a;)V
.end method

.method public final a(Ljava/util/Map;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 39
    new-instance p1, Lcom/b/a/a/a/a$a;

    invoke-direct {p1}, Lcom/b/a/a/a/a$a;-><init>()V

    .line 40
    invoke-static {p2}, Lcom/b/a/p;->a(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p2

    .line 41
    invoke-static {p2}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/c/a;->a()I

    move-result v0

    iput v0, p1, Lcom/b/a/a/a/a$a;->a:I

    .line 42
    invoke-static {p2}, Lcom/b/a/c/a;->a(Ljava/util/Map;)Lcom/b/a/c/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/b/a/c/a;->b()[B

    move-result-object p2

    iput-object p2, p1, Lcom/b/a/a/a/a$a;->b:[B

    .line 43
    invoke-virtual {p0, p1}, Lcom/b/a/a/a/a;->a(Lcom/b/a/a/a/a$a;)V

    return-void
.end method
