.class Lcom/oppo/camera/ui/OppoNumSeekBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoNumSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/OppoNumSeekBar;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/OppoNumSeekBar;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/OppoNumSeekBar;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$2;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 401
    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$2;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    .line 402
    iput-boolean v0, p1, Lcom/oppo/camera/ui/OppoNumSeekBar;->o:Z

    .line 403
    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 390
    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$2;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/oppo/camera/ui/OppoNumSeekBar;->n:Z

    .line 391
    iput-boolean v0, p1, Lcom/oppo/camera/ui/OppoNumSeekBar;->o:Z

    .line 392
    invoke-virtual {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->invalidate()V

    .line 394
    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$2;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-static {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Lcom/oppo/camera/ui/OppoNumSeekBar;)Lcom/oppo/camera/ui/OppoNumSeekBar$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 395
    iget-object p1, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$2;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-static {p1}, Lcom/oppo/camera/ui/OppoNumSeekBar;->a(Lcom/oppo/camera/ui/OppoNumSeekBar;)Lcom/oppo/camera/ui/OppoNumSeekBar$b;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/ui/OppoNumSeekBar$2;->a:Lcom/oppo/camera/ui/OppoNumSeekBar;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/OppoNumSeekBar;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/oppo/camera/ui/OppoNumSeekBar$b;->a(Lcom/oppo/camera/ui/OppoNumSeekBar;IZ)V

    :cond_0
    return-void
.end method
