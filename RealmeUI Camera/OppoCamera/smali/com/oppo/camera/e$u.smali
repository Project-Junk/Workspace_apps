.class Lcom/oppo/camera/e$u;
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
    name = "u"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;

.field private b:Landroid/util/Size;

.field private c:Landroid/util/Size;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 7910
    iput-object p1, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 7911
    iput-object p1, p0, Lcom/oppo/camera/e$u;->b:Landroid/util/Size;

    .line 7912
    iput-object p1, p0, Lcom/oppo/camera/e$u;->c:Landroid/util/Size;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V
    .locals 0

    .line 7910
    invoke-direct {p0, p1}, Lcom/oppo/camera/e$u;-><init>(Lcom/oppo/camera/e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "CameraManager"

    const-string v1, "ThreeDStickerAnimationListenerImpl, onAnimationEnd"

    .line 7938
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7940
    iget-object v0, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/e$u;->b()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 7942
    iget-object v0, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7943
    iget-object v0, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/q;->b(Z)V

    .line 7946
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aL()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7947
    iget-object v0, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    iget-object v1, p0, Lcom/oppo/camera/e$u;->b:Landroid/util/Size;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    .line 7950
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$u;->c:Landroid/util/Size;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e$u;->b:Landroid/util/Size;

    if-eqz v0, :cond_2

    .line 7951
    iget-object v0, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$u;->c:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/oppo/camera/e$u;->c:Landroid/util/Size;

    .line 7952
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 7951
    invoke-static {v1, v3}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v1

    iget-object v3, p0, Lcom/oppo/camera/e$u;->b:Landroid/util/Size;

    .line 7952
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/oppo/camera/e$u;->b:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v3

    .line 7951
    invoke-virtual {v0, v1, v3}, Lcom/oppo/camera/ui/e;->d(II)V

    .line 7955
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 7956
    iget-object v0, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->i(Z)V

    .line 7957
    iget-object v0, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->k(Z)V

    .line 7958
    iget-object v0, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->c(I)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 1

    const-string p1, "CameraManager"

    const-string v0, "ThreeDStickerAnimationListenerImpl, onAnimationStart"

    .line 7916
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7918
    iget-object p1, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 7919
    iget-object p1, p0, Lcom/oppo/camera/e$u;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->M()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->i(I)V

    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 3

    .line 7924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreeDStickerAnimationListenerImpl, onAnimationMiddle , fromSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 7925
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

    .line 7926
    invoke-virtual {p2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 7924
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7928
    iput-object p2, p0, Lcom/oppo/camera/e$u;->b:Landroid/util/Size;

    .line 7929
    iput-object p1, p0, Lcom/oppo/camera/e$u;->c:Landroid/util/Size;

    .line 7931
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7932
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->c()V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method
