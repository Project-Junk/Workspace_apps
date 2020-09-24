.class Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$EqualizerSeekBarListener;
.super Ljava/lang/Object;
.source "EqualizerSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EqualizerSeekBarListener"
.end annotation


# instance fields
.field mparamAnimationListener:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$AnimationListener;

.field final synthetic this$0:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$AnimationListener;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$EqualizerSeekBarListener;->this$0:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput-object p3, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$EqualizerSeekBarListener;->mparamAnimationListener:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$AnimationListener;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 313
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 314
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$EqualizerSeekBarListener;->this$0:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;

    invoke-virtual {v0, p1}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar;->setProgress(F)V

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$EqualizerSeekBarListener;->mparamAnimationListener:Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$AnimationListener;

    if-eqz p1, :cond_1

    .line 318
    invoke-interface {p1}, Lcom/coloros/partners/dirac/widget/EqualizerSeekBar$AnimationListener;->onProgressUpdate()V

    :cond_1
    return-void
.end method
