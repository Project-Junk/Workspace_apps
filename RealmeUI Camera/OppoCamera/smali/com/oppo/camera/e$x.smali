.class Lcom/oppo/camera/e$x;
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
    name = "x"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 7693
    iput-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V
    .locals 0

    .line 7693
    invoke-direct {p0, p1}, Lcom/oppo/camera/e$x;-><init>(Lcom/oppo/camera/e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "VideoSizeChangeAnimationListenerImpl, onAnimationEnd"

    .line 7729
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7731
    iget-object v0, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7732
    iget-object v0, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/q;->b(Z)V

    .line 7735
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 7736
    iget-object v0, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->f(Z)V

    .line 7737
    iget-object v0, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->i(Z)V

    .line 7738
    iget-object v0, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->k(Z)V

    .line 7739
    iget-object v0, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->c(I)V

    .line 7741
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7742
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    :cond_1
    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 3

    .line 7696
    iget-object v0, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 7697
    iget-object v0, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->Q()Landroid/util/Size;

    move-result-object v0

    .line 7699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSizeChangeAnimationListenerImpl, onAnimationStart, currSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7700
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", toSize: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraManager"

    .line 7699
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7702
    iget-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->ar()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7703
    iget-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "commonVideo"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    .line 7704
    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "slowVideo"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7705
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;Z)Z

    .line 7707
    iget-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    .line 7708
    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->b()I

    move-result p1

    const/16 v0, 0x300

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    .line 7710
    iget-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->i(Z)V

    .line 7713
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->aj()V

    .line 7714
    iget-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aH()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->v(Z)V

    :cond_2
    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 1

    const-string p1, "CameraManager"

    const-string v0, "VideoSizeChangeAnimationListenerImpl, onAnimationMiddle"

    .line 7721
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7723
    iget-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    .line 7724
    iget-object p1, p0, Lcom/oppo/camera/e$x;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oppo/camera/e$x;->b()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/d/i;->a(IZ)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
