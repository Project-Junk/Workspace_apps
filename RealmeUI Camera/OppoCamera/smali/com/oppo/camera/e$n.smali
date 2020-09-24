.class Lcom/oppo/camera/e$n;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 12205
    iput-object p1, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V
    .locals 0

    .line 12205
    invoke-direct {p0, p1}, Lcom/oppo/camera/e$n;-><init>(Lcom/oppo/camera/e;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    monitor-enter p0

    .line 12240
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12241
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12242
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    goto :goto_0

    .line 12244
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12247
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    monitor-enter p0

    .line 12329
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12330
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12331
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 12333
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 12207
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12208
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12209
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->V()V

    goto :goto_0

    .line 12211
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12213
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    monitor-enter p0

    .line 12365
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12366
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12367
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    goto :goto_0

    .line 12369
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12371
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 12300
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12301
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12302
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->a(Ljava/util/HashMap;)V

    goto :goto_0

    .line 12304
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12305
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12308
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 12282
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12283
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12284
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->k(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 12286
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->k(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    monitor-enter p0

    .line 12273
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12274
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12275
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->e(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 12277
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 12216
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12217
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->j()Lcom/oppo/camera/e$m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12219
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12220
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 12224
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 12401
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12402
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12403
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 12405
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    monitor-enter p0

    .line 12311
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12312
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12313
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 12315
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 12228
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12229
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12231
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->U()V

    goto :goto_0

    .line 12233
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12235
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    .line 12253
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12254
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12255
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->au()I

    move-result v0

    goto :goto_0

    .line 12257
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->H()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12260
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    monitor-enter p0

    .line 12320
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12321
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12322
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/a;->d(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 12324
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->d(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()I
    .locals 1

    monitor-enter p0

    .line 12264
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12265
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12266
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->b()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 12268
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->b()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .locals 1

    monitor-enter p0

    .line 12291
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12292
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12293
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cm()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 12295
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aF()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()I
    .locals 1

    monitor-enter p0

    .line 12338
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12339
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12340
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ab()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 12342
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->M()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()I
    .locals 1

    monitor-enter p0

    .line 12347
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12348
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12349
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->ac()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 12351
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->N()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 1

    monitor-enter p0

    .line 12356
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12357
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12358
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->cn()V

    goto :goto_0

    .line 12360
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aG()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12362
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Z
    .locals 1

    monitor-enter p0

    .line 12374
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12375
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12376
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->A()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 12378
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aI()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    .line 12383
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12384
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12385
    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/a;->z()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 12387
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aJ()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()Z
    .locals 1

    monitor-enter p0

    .line 12392
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12393
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    .line 12394
    invoke-static {v0}, Lcom/oppo/camera/e$m;->b(Lcom/oppo/camera/e$m;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 12396
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()Z
    .locals 1

    monitor-enter p0

    .line 12410
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    .line 12411
    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$n;->a:Lcom/oppo/camera/e;

    .line 12412
    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->i()Lcom/oppo/camera/e$m;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/e$m;->a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
