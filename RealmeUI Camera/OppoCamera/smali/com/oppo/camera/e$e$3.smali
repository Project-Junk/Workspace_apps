.class Lcom/oppo/camera/e$e$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e$e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$e;)V
    .locals 0

    .line 6060
    iput-object p1, p0, Lcom/oppo/camera/e$e$3;->a:Lcom/oppo/camera/e$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6063
    iget-object v0, p0, Lcom/oppo/camera/e$e$3;->a:Lcom/oppo/camera/e$e;

    iget-object v0, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CameraManager"

    const-string v1, "closeFrontMainFlash"

    .line 6067
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6069
    iget-object v0, p0, Lcom/oppo/camera/e$e$3;->a:Lcom/oppo/camera/e$e;

    iget-object v0, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->ay()V

    .line 6071
    iget-object v0, p0, Lcom/oppo/camera/e$e$3;->a:Lcom/oppo/camera/e$e;

    iget-object v0, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$e$3;->a:Lcom/oppo/camera/e$e;

    iget-object v0, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    .line 6072
    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$e$3;->a:Lcom/oppo/camera/e$e;

    iget-object v0, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    .line 6073
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6074
    iget-object v0, p0, Lcom/oppo/camera/e$e$3;->a:Lcom/oppo/camera/e$e;

    iget-object v0, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->s(Z)V

    .line 6077
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$e$3;->a:Lcom/oppo/camera/e$e;

    iget-object v0, v0, Lcom/oppo/camera/e$e;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aE()V

    return-void
.end method