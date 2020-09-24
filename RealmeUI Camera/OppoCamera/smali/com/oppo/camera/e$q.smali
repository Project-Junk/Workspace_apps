.class public Lcom/oppo/camera/e$q;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "q"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;

.field private b:Landroid/util/Size;

.field private c:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 8038
    iput-object p1, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 8039
    iput-object p1, p0, Lcom/oppo/camera/e$q;->b:Landroid/util/Size;

    .line 8040
    iput-object p1, p0, Lcom/oppo/camera/e$q;->c:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "CameraManager"

    const-string v1, "PictureSizeAnimationListenerImpl, onAnimationEnd"

    .line 8075
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8077
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 8078
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/q;->b(Z)V

    .line 8081
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8082
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    iget-object v2, p0, Lcom/oppo/camera/e$q;->b:Landroid/util/Size;

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    .line 8085
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$q;->c:Landroid/util/Size;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$q;->b:Landroid/util/Size;

    if-eqz v0, :cond_2

    .line 8086
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v2, p0, Lcom/oppo/camera/e$q;->c:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/e$q;->c:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/e$q;->b:Landroid/util/Size;

    .line 8087
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/e$q;->b:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v3

    .line 8086
    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/ui/e;->d(II)V

    .line 8090
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->x(Z)V

    .line 8091
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 8092
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->f(Z)V

    .line 8093
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->aY(Lcom/oppo/camera/e;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/e;->G(Z)V

    .line 8094
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->i(Z)V

    .line 8095
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    .line 8096
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->k(Z)V

    .line 8097
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->c(I)V

    .line 8099
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "PictureSizeAnimationListenerImpl, onAnimationStart"

    .line 8044
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8046
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 8047
    iget-object v0, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->G(Z)V

    .line 8049
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oppo/camera/o/d;->b(II)I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 8050
    iget-object p1, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 8053
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->aj()V

    .line 8054
    iget-object p1, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->v(Z)V

    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 3

    .line 8059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictureSizeAnimationListenerImpl, onAnimationMiddle , fromSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 8060
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

    .line 8061
    invoke-virtual {p2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 8059
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8063
    iput-object p2, p0, Lcom/oppo/camera/e$q;->b:Landroid/util/Size;

    .line 8064
    iput-object p1, p0, Lcom/oppo/camera/e$q;->c:Landroid/util/Size;

    .line 8066
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8067
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    .line 8070
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/e$q;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oppo/camera/e$q;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/d/i;->a(IZ)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
