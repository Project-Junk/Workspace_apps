.class Lcom/oppo/camera/e$a;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;

.field private b:Landroid/util/Size;

.field private c:Landroid/util/Size;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 7967
    iput-object p1, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7968
    iput-object p1, p0, Lcom/oppo/camera/e$a;->b:Landroid/util/Size;

    .line 7969
    iput-object p1, p0, Lcom/oppo/camera/e$a;->c:Landroid/util/Size;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V
    .locals 0

    .line 7967
    invoke-direct {p0, p1}, Lcom/oppo/camera/e$a;-><init>(Lcom/oppo/camera/e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "CameraManager"

    const-string v1, "BaseSwitchDualCameraAnimationListenerImpl, onAnimationEnd"

    .line 8001
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8003
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/e$a;->b()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 8005
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8006
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/q;->b(Z)V

    .line 8009
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8010
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    iget-object v1, p0, Lcom/oppo/camera/e$a;->b:Landroid/util/Size;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    .line 8013
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$a;->c:Landroid/util/Size;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$a;->b:Landroid/util/Size;

    if-eqz v0, :cond_2

    .line 8014
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$a;->c:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/oppo/camera/e$a;->c:Landroid/util/Size;

    .line 8015
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 8014
    invoke-static {v1, v3}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    iget-object v3, p0, Lcom/oppo/camera/e$a;->b:Landroid/util/Size;

    .line 8015
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/e$a;->b:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v3

    .line 8014
    invoke-virtual {v0, v1, v3}, Lcom/oppo/camera/ui/e;->d(II)V

    .line 8018
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 8019
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->i(Z)V

    .line 8020
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->k(Z)V

    .line 8021
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->c(I)V

    .line 8022
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->bc()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/e;->e(Lcom/oppo/camera/e;I)V

    .line 8023
    iget-object v0, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->g(Z)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 1

    const-string p1, "CameraManager"

    const-string v0, "BaseSwitchDualCameraAnimationListenerImpl, onAnimationStart"

    .line 7973
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7975
    iget-object p1, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 7977
    iget-object p1, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->aX(Lcom/oppo/camera/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7978
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    .line 7979
    iget-object p1, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {p1, v0}, Lcom/oppo/camera/e;->m(Lcom/oppo/camera/e;Z)Z

    .line 7982
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->M()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->i(I)V

    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 3

    .line 7987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseSwitchDualCameraAnimationListenerImpl, onAnimationMiddle , fromSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 7988
    invoke-virtual {p1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 7989
    invoke-virtual {p2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 7987
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7991
    iput-object p2, p0, Lcom/oppo/camera/e$a;->b:Landroid/util/Size;

    .line 7992
    iput-object p1, p0, Lcom/oppo/camera/e$a;->c:Landroid/util/Size;

    .line 7994
    iget-object p1, p0, Lcom/oppo/camera/e$a;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->aX(Lcom/oppo/camera/e;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7995
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
