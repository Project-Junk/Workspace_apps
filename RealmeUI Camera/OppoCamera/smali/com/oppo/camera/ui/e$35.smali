.class Lcom/oppo/camera/ui/e$35;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/modepanel/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/e;->bh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/e;)V
    .locals 0

    .line 4643
    iput-object p1, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 4676
    iget-object v0, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->J()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 4646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModeItemClick, itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4648
    iget-object v0, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "onModeItemClick, headline is scrolling, can\'t response"

    .line 4649
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4654
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->x(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/modepanel/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4655
    iget-object v0, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->o(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/control/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/control/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4659
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->t()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4663
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->x(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/modepanel/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/modepanel/f;->b(Z)Z

    .line 4666
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4667
    iget-object v0, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/d;->d(I)V

    .line 4670
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1, v1}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;Z)V

    .line 4671
    iget-object p1, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->y(Lcom/oppo/camera/ui/e;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 4681
    iget-object v0, p0, Lcom/oppo/camera/ui/e$35;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->z(Lcom/oppo/camera/ui/e;)V

    return-void
.end method
