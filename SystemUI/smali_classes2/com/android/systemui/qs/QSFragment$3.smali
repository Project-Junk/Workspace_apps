.class Lcom/android/systemui/qs/QSFragment$3;
.super Ljava/lang/Object;
.source "QSFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 749
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 750
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 751
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    .line 752
    invoke-static {v1}, Lcom/android/systemui/qs/QSFragment;->access$300(Lcom/android/systemui/qs/QSFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c0

    .line 753
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 754
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    .line 755
    invoke-static {v1}, Lcom/android/systemui/qs/QSFragment;->access$200(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 763
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result v0

    if-nez v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    iget-object v1, v1, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$3;->this$0:Lcom/android/systemui/qs/QSFragment;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSFragmentHelper:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    invoke-interface {p0}, Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;->getQSBottom()Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSBottomImpl;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    int-to-float p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
