.class Lcom/color/eyeprotect/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/a/a$c;

.field final synthetic b:Lcom/color/eyeprotect/a/a;


# direct methods
.method constructor <init>(Lcom/color/eyeprotect/a/a;Lcom/color/eyeprotect/a/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/a/a$1;->b:Lcom/color/eyeprotect/a/a;

    iput-object p2, p0, Lcom/color/eyeprotect/a/a$1;->a:Lcom/color/eyeprotect/a/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$1;->a:Lcom/color/eyeprotect/a/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$1;->a:Lcom/color/eyeprotect/a/a$c;

    invoke-static {v0}, Lcom/color/eyeprotect/a/a$c;->a(Lcom/color/eyeprotect/a/a$c;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/color/eyeprotect/a/a$1;->a:Lcom/color/eyeprotect/a/a$c;

    invoke-static {v0}, Lcom/color/eyeprotect/a/a$c;->a(Lcom/color/eyeprotect/a/a$c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/eyeprotect/a/e;

    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    new-instance v2, Lcom/color/eyeprotect/a/a$d;

    iget-object v3, p0, Lcom/color/eyeprotect/a/a$1;->b:Lcom/color/eyeprotect/a/a;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/color/eyeprotect/a/a$d;-><init>(Lcom/color/eyeprotect/a/a;Lcom/color/eyeprotect/a/e;Lcom/color/eyeprotect/a/a$1;)V

    const-string v3, "AICurveModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SplineLine "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/color/eyeprotect/a/a$1;->b:Lcom/color/eyeprotect/a/a;

    iget v6, v1, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v5, v6}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/color/eyeprotect/a/e;->b:F

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$1;->b:Lcom/color/eyeprotect/a/a;

    invoke-static {v2}, Lcom/color/eyeprotect/a/a$d;->a(Lcom/color/eyeprotect/a/a$d;)[Lcom/color/eyeprotect/a/e;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v1, v5}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$1;->b:Lcom/color/eyeprotect/a/a;

    invoke-static {v2}, Lcom/color/eyeprotect/a/a$d;->a(Lcom/color/eyeprotect/a/a$d;)[Lcom/color/eyeprotect/a/e;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v1, v5}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/color/eyeprotect/a/a$d;->a(Lcom/color/eyeprotect/a/a$d;)[Lcom/color/eyeprotect/a/e;

    move-result-object v1

    aget-object v1, v1, v6

    iget v1, v1, Lcom/color/eyeprotect/a/e;->b:F

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/color/eyeprotect/a/a$d;->a(Lcom/color/eyeprotect/a/a$d;)[Lcom/color/eyeprotect/a/e;

    move-result-object v1

    aget-object v1, v1, v7

    iget v1, v1, Lcom/color/eyeprotect/a/e;->b:F

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$1;->b:Lcom/color/eyeprotect/a/a;

    invoke-static {v2}, Lcom/color/eyeprotect/a/a$d;->b(Lcom/color/eyeprotect/a/a$d;)[Lcom/color/eyeprotect/a/e;

    move-result-object v5

    aget-object v5, v5, v6

    iget v5, v5, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v1, v5}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/color/eyeprotect/a/a$1;->b:Lcom/color/eyeprotect/a/a;

    invoke-static {v2}, Lcom/color/eyeprotect/a/a$d;->b(Lcom/color/eyeprotect/a/a$d;)[Lcom/color/eyeprotect/a/e;

    move-result-object v2

    aget-object v2, v2, v7

    iget v2, v2, Lcom/color/eyeprotect/a/e;->a:F

    invoke-static {v1, v2}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p0, "AICurveModel"

    const-string v0, "mDefaultSplineLine is not inited."

    invoke-static {p0, v0}, Lcom/color/eyeprotect/a/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
