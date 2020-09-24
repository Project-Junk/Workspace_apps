.class Lcom/oppo/camera/e$d;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/e/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 7084
    iput-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V
    .locals 0

    .line 7084
    invoke-direct {p0, p1}, Lcom/oppo/camera/e$d;-><init>(Lcom/oppo/camera/e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 7087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraOpenCallback onCameraOpened, mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOpenCameraType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    .line 7088
    invoke-static {v1}, Lcom/oppo/camera/e;->aR(Lcom/oppo/camera/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 7087
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7090
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 7094
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7095
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->aT(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f$f;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$f;)V

    .line 7096
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7098
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Lcom/oppo/camera/e/h;)Lcom/oppo/camera/e/h;

    .line 7100
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aR(Lcom/oppo/camera/e;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 7116
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v1

    iget-object v3, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oppo/camera/e$n;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Landroid/util/Size;)Landroid/util/Size;

    .line 7117
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v1

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/h;->b(Z)V

    .line 7118
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v1

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->x(Z)V

    .line 7119
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/e/f;)V

    .line 7120
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->c(I)V

    .line 7122
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7123
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->f()V

    .line 7126
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->r(Z)V

    .line 7127
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v2, v2}, Lcom/oppo/camera/e;->b(ZZ)V

    .line 7128
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/e$d$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e$d$1;-><init>(Lcom/oppo/camera/e$d;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    .line 7142
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/e$n;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(Landroid/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    .line 7143
    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 7147
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->aj()V

    .line 7148
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/e$n;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->v(Z)V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    .line 7104
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v2}, Lcom/oppo/camera/e;->d(Lcom/oppo/camera/e;I)I

    .line 7105
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    const/16 v3, 0x60

    invoke-static {v0, v3, v2}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;IZ)V

    .line 7106
    invoke-static {}, Lcom/oppo/camera/o/d;->k()V

    .line 7107
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ai()V

    .line 7108
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->n(Z)V

    .line 7109
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->m(Z)V

    .line 7156
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 7157
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->d()V

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    .line 7096
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_7
    :goto_2
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 7227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraOpenCallback onError, mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mOpenCameraType: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    .line 7228
    invoke-static {p1}, Lcom/oppo/camera/e;->aR(Lcom/oppo/camera/e;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    .line 7227
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7230
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7231
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e$l;->k()V

    .line 7234
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->aS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 7235
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7236
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$f;)V

    .line 7238
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7240
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7241
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->Q()V

    .line 7244
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7245
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 7247
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object p1

    new-instance v0, Lcom/oppo/camera/e$d$4;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$d$4;-><init>(Lcom/oppo/camera/e$d;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 7238
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 2

    .line 7163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraOpenCallback onFailure, mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOpenCameraTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    .line 7164
    invoke-static {v1}, Lcom/oppo/camera/e;->aU(Lcom/oppo/camera/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOpenCameraType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->aR(Lcom/oppo/camera/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 7163
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7166
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7167
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->k()V

    :cond_0
    if-eqz p1, :cond_7

    .line 7171
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->aS(Lcom/oppo/camera/e;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 7172
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7173
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$f;)V

    .line 7175
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7177
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7178
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->Q()V

    .line 7181
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 7185
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->aR(Lcom/oppo/camera/e;)I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->aR(Lcom/oppo/camera/e;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 7209
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 7211
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object p1

    new-instance v0, Lcom/oppo/camera/e$d$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$d$3;-><init>(Lcom/oppo/camera/e$d;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 7186
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object p1

    new-instance v0, Lcom/oppo/camera/e$d$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e$d$2;-><init>(Lcom/oppo/camera/e$d;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 7175
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    :goto_2
    return-void
.end method

.method public b()V
    .locals 4

    .line 7262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraOpenCallback onCameraClosed, mOneCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOpenCameraType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    .line 7263
    invoke-static {v1}, Lcom/oppo/camera/e;->aR(Lcom/oppo/camera/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 7262
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7273
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->p(Lcom/oppo/camera/e;)I

    move-result v0

    if-lez v0, :cond_0

    .line 7274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraOpenCallback onCameraClosed, mReceiveBurstPictureCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    .line 7275
    invoke-static {v2}, Lcom/oppo/camera/e;->p(Lcom/oppo/camera/e;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBurstShotFlagId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->t(Lcom/oppo/camera/e;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7274
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7277
    iget-object v0, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->p(Lcom/oppo/camera/e;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7280
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v1

    new-instance v2, Lcom/oppo/camera/e$d$5;

    invoke-direct {v2, p0}, Lcom/oppo/camera/e$d$5;-><init>(Lcom/oppo/camera/e$d;)V

    invoke-virtual {v1, v2}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    .line 7288
    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7289
    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->aV(Lcom/oppo/camera/e;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(ZLjava/util/List;)V

    if-lez v0, :cond_1

    .line 7291
    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7292
    iget-object v1, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->o(Lcom/oppo/camera/e;)Lcom/oppo/camera/Ipa/ImageProcessService;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$d;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->t(Lcom/oppo/camera/e;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/oppo/camera/Ipa/ImageProcessService;->b(IJ)V

    :cond_1
    return-void
.end method
