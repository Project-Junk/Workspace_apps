.class Lcom/oppo/camera/e$35$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/e$35;->b()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e$35;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e$35;)V
    .locals 0

    .line 8884
    iput-object p1, p0, Lcom/oppo/camera/e$35$1;->a:Lcom/oppo/camera/e$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8887
    iget-object v0, p0, Lcom/oppo/camera/e$35$1;->a:Lcom/oppo/camera/e$35;

    iget-object v0, v0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$35$1;->a:Lcom/oppo/camera/e$35;

    iget-object v0, v0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8888
    iget-object v0, p0, Lcom/oppo/camera/e$35$1;->a:Lcom/oppo/camera/e$35;

    iget-object v0, v0, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$35$1;->a:Lcom/oppo/camera/e$35;

    iget-object v1, v1, Lcom/oppo/camera/e$35;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->Y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->C(Z)V

    :cond_0
    return-void
.end method