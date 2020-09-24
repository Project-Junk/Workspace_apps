.class Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$EqualizerSeekBarListener;
.super Ljava/lang/Object;
.source "DolbyEqualizerSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EqualizerSeekBarListener"
.end annotation


# instance fields
.field mparamAnimationListener:Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$AnimationListener;

.field final synthetic this$0:Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;


# direct methods
.method constructor <init>(Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$AnimationListener;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$EqualizerSeekBarListener;->this$0:Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p3, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$EqualizerSeekBarListener;->mparamAnimationListener:Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$AnimationListener;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 282
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 283
    iget-object v0, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$EqualizerSeekBarListener;->this$0:Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;

    invoke-virtual {v0, p1}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar;->setProgress(F)V

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$EqualizerSeekBarListener;->mparamAnimationListener:Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$AnimationListener;

    if-eqz p1, :cond_1

    .line 287
    invoke-interface {p1}, Lcom/coloros/partners/dolby/widget/DolbyEqualizerSeekBar$AnimationListener;->onProgressUpdate()V

    :cond_1
    return-void
.end method
