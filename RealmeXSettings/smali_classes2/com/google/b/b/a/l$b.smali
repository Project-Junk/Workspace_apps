.class public final Lcom/google/b/b/a/l$b;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/google/b/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/b/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/b/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/a<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/r<",
            "*>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/j<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/b/c/a;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/b/c/a<",
            "*>;Z)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/google/b/b/a/l$b;->d:Lcom/google/b/r;

    .line 131
    check-cast p1, Lcom/google/b/j;

    iput-object p1, p0, Lcom/google/b/b/a/l$b;->e:Lcom/google/b/j;

    .line 134
    iget-object p1, p0, Lcom/google/b/b/a/l$b;->d:Lcom/google/b/r;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/b/b/a/l$b;->e:Lcom/google/b/j;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Lcom/google/b/b/a;->a(Z)V

    .line 135
    iput-object p2, p0, Lcom/google/b/b/a/l$b;->a:Lcom/google/b/c/a;

    .line 136
    iput-boolean p3, p0, Lcom/google/b/b/a/l$b;->b:Z

    .line 137
    iput-object v0, p0, Lcom/google/b/b/a/l$b;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/b/f;Lcom/google/b/c/a;)Lcom/google/b/u;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/b/f;",
            "Lcom/google/b/c/a<",
            "TT;>;)",
            "Lcom/google/b/u<",
            "TT;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/b/b/a/l$b;->a:Lcom/google/b/c/a;

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0, p2}, Lcom/google/b/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/b/b/a/l$b;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/b/b/a/l$b;->a:Lcom/google/b/c/a;

    .line 1101
    iget-object v0, v0, Lcom/google/b/c/a;->b:Ljava/lang/reflect/Type;

    .line 2094
    iget-object v1, p2, Lcom/google/b/c/a;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/google/b/b/a/l$b;->c:Ljava/lang/Class;

    .line 3094
    iget-object v1, p2, Lcom/google/b/c/a;->a:Ljava/lang/Class;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 146
    new-instance v0, Lcom/google/b/b/a/l;

    iget-object v2, p0, Lcom/google/b/b/a/l$b;->d:Lcom/google/b/r;

    iget-object v3, p0, Lcom/google/b/b/a/l$b;->e:Lcom/google/b/j;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/b/b/a/l;-><init>(Lcom/google/b/r;Lcom/google/b/j;Lcom/google/b/f;Lcom/google/b/c/a;Lcom/google/b/v;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
