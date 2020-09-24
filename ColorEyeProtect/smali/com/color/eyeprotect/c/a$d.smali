.class final Lcom/color/eyeprotect/c/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/eyeprotect/c/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/c/a;


# direct methods
.method constructor <init>(Lcom/color/eyeprotect/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    iget-object v1, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v1}, Lcom/color/eyeprotect/c/a;->c(Lcom/color/eyeprotect/c/a;)I

    move-result v1

    iget-object v2, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v2}, Lcom/color/eyeprotect/c/a;->d(Lcom/color/eyeprotect/c/a;)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v1}, Lcom/color/eyeprotect/c/a;->b(Lcom/color/eyeprotect/c/a;)I

    move-result v1

    iget-object v2, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v2}, Lcom/color/eyeprotect/c/a;->e(Lcom/color/eyeprotect/c/a;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v2}, Lcom/color/eyeprotect/c/a;->c(Lcom/color/eyeprotect/c/a;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v1}, Lcom/color/eyeprotect/c/a;->b(Lcom/color/eyeprotect/c/a;)I

    move-result v1

    iget-object v2, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v2}, Lcom/color/eyeprotect/c/a;->e(Lcom/color/eyeprotect/c/a;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v2}, Lcom/color/eyeprotect/c/a;->c(Lcom/color/eyeprotect/c/a;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/color/eyeprotect/c/a;->a(Lcom/color/eyeprotect/c/a;I)V

    iget-object v0, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v0}, Lcom/color/eyeprotect/c/a;->d(Lcom/color/eyeprotect/c/a;)I

    move-result v0

    iget-object v1, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    iget-object v2, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v2}, Lcom/color/eyeprotect/c/a;->b(Lcom/color/eyeprotect/c/a;)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v2}, Lcom/color/eyeprotect/c/a;->b(Lcom/color/eyeprotect/c/a;)I

    move-result v2

    :goto_1
    invoke-static {v1, v2}, Lcom/color/eyeprotect/c/a;->b(Lcom/color/eyeprotect/c/a;I)V

    iget-object v1, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v1}, Lcom/color/eyeprotect/c/a;->d(Lcom/color/eyeprotect/c/a;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v0}, Lcom/color/eyeprotect/c/a;->d(Lcom/color/eyeprotect/c/a;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/color/eyeprotect/util/b;->a(F)Lcom/color/eyeprotect/util/f;

    move-result-object v0

    iget v1, v0, Lcom/color/eyeprotect/util/f;->a:I

    iget v2, v0, Lcom/color/eyeprotect/util/f;->b:I

    iget v0, v0, Lcom/color/eyeprotect/util/f;->c:I

    iget-object v4, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v4}, Lcom/color/eyeprotect/c/a;->f(Lcom/color/eyeprotect/c/a;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v5}, Lcom/color/eyeprotect/c/a;->g(Lcom/color/eyeprotect/c/a;)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v5}, Lcom/color/eyeprotect/c/a;->h(Lcom/color/eyeprotect/c/a;)I

    move-result v5

    :goto_2
    invoke-static {v1, v2, v0, v4, v5}, Lcom/color/eyeprotect/util/c;->a(IIILandroid/content/Context;I)V

    :cond_3
    iget-object v0, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v0}, Lcom/color/eyeprotect/c/a;->c(Lcom/color/eyeprotect/c/a;)I

    move-result v0

    iget-object v1, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v1}, Lcom/color/eyeprotect/c/a;->d(Lcom/color/eyeprotect/c/a;)I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object p0, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {p0}, Lcom/color/eyeprotect/c/a;->i(Lcom/color/eyeprotect/c/a;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {v0, v3}, Lcom/color/eyeprotect/c/a;->a(Lcom/color/eyeprotect/c/a;Z)V

    iget-object v0, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    iget-object p0, p0, Lcom/color/eyeprotect/c/a$d;->a:Lcom/color/eyeprotect/c/a;

    invoke-static {p0}, Lcom/color/eyeprotect/c/a;->c(Lcom/color/eyeprotect/c/a;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/color/eyeprotect/c/a;->c(Lcom/color/eyeprotect/c/a;I)V

    :goto_3
    return-void
.end method
