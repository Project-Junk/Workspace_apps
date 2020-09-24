.class Lcom/oppo/camera/ui/preview/a/j$5;
.super Ljava/lang/Object;
.source "PreviewEffectProcessImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/preview/a/j;->j(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oppo/camera/ui/preview/a/j;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/preview/a/j;I)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/j$5;->b:Lcom/oppo/camera/ui/preview/a/j;

    iput p2, p0, Lcom/oppo/camera/ui/preview/a/j$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 689
    monitor-enter p0

    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/j$5;->b:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/j;->c(Lcom/oppo/camera/ui/preview/a/j;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PreviewEffectProcessImpl"

    const-string v1, "onlyCreateEngines, texture has been released"

    .line 691
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    monitor-exit p0

    return-void

    .line 695
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 700
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/j$5;->b:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v2}, Lcom/oppo/camera/ui/preview/a/j;->b(Lcom/oppo/camera/ui/preview/a/j;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 701
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 702
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/ui/preview/a/n;

    iget v5, p0, Lcom/oppo/camera/ui/preview/a/j$5;->a:I

    invoke-virtual {v4, v5}, Lcom/oppo/camera/ui/preview/a/n;->c(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/j$5;->b:Lcom/oppo/camera/ui/preview/a/j;

    .line 703
    invoke-static {v4}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/p;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 704
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/ui/preview/a/n;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/j$5;->b:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v4}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/p;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/p;)V

    goto :goto_0

    .line 708
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/j$5;->b:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v2}, Lcom/oppo/camera/ui/preview/a/j;->b(Lcom/oppo/camera/ui/preview/a/j;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/j$5;->b:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v2}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/p;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 709
    iget v2, p0, Lcom/oppo/camera/ui/preview/a/j$5;->a:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/j$5;->b:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v2}, Lcom/oppo/camera/ui/preview/a/j;->e(Lcom/oppo/camera/ui/preview/a/j;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 710
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/j$5;->b:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v2}, Lcom/oppo/camera/ui/preview/a/j;->b(Lcom/oppo/camera/ui/preview/a/j;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/preview/a/n;

    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a/j$5;->b:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v3}, Lcom/oppo/camera/ui/preview/a/j;->d(Lcom/oppo/camera/ui/preview/a/j;)Lcom/oppo/camera/ui/preview/a/p;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/preview/a/n;->a(Lcom/oppo/camera/ui/preview/a/p;)V

    goto :goto_1

    .line 712
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/j$5;->b:Lcom/oppo/camera/ui/preview/a/j;

    invoke-static {v2}, Lcom/oppo/camera/ui/preview/a/j;->b(Lcom/oppo/camera/ui/preview/a/j;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/ui/preview/a/n;

    invoke-virtual {v2}, Lcom/oppo/camera/ui/preview/a/n;->f()V

    .line 716
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onlyCreateEngines, cost time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewEffectProcessImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 695
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
