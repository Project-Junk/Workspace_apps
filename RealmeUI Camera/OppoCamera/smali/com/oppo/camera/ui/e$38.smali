.class Lcom/oppo/camera/ui/e$38;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/e;
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

    .line 377
    iput-object p1, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "CameraUIManager"

    const-string v0, "mFaceBeautyEnterButtonListener, onClick"

    .line 380
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aO()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mFaceBeautyEnterButtonListener, onClick, isHeadlineScrolling: true"

    .line 383
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aT()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mFaceBeautyEnterButtonListener, onClick, isMoreModePanelAnimRunning: true"

    .line 389
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mFaceBeautyEnterButtonListener, onClick, isMoreModeShown: true"

    .line 395
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "mFaceBeautyEnterButtonListener, onClick, isTimerSnapShotRunning: true"

    .line 401
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/ui/d;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "mFaceBeautyEnterButtonListener, onClick, isZoomMenuExpand: true"

    .line 407
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 412
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->j(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/menu/a/g;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->j(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/menu/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/a/g;->e()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/ui/e;->a(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/menu/levelcontrol/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/levelcontrol/d;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 418
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->j(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/menu/a/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/a/g;->f()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 419
    iget-object p1, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    .line 420
    iget-object p1, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1, v1}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/e;Z)V

    goto :goto_0

    .line 422
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/e;->c(Lcom/oppo/camera/ui/e;)Lcom/oppo/camera/ui/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->D()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 423
    iget-object p1, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->n(Z)V

    .line 426
    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/ui/e$38;->a:Lcom/oppo/camera/ui/e;

    invoke-static {p1, v0}, Lcom/oppo/camera/ui/e;->b(Lcom/oppo/camera/ui/e;Z)V

    :goto_0
    return-void

    :cond_8
    :goto_1
    const-string v0, "mFaceBeautyEnterButtonListener, onClick, return"

    .line 413
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
