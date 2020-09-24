.class Lcom/android/systemui/statusbar/notification/stack/ViewState$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/ViewState;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/ViewState;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$newEndValue:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;F)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->this$0:Lcom/android/systemui/statusbar/notification/stack/ViewState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->val$child:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->val$newEndValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 384
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->mWasCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 372
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->val$child:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 373
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->val$newEndValue:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->mWasCancelled:Z

    if-nez p1, :cond_0

    .line 374
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->val$child:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->val$child:Landroid/view/View;

    const v1, 0x7f0a0075

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 378
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->val$child:Landroid/view/View;

    const v1, 0x7f0a0074

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 379
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->val$child:Landroid/view/View;

    const p1, 0x7f0a0073

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 389
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;->mWasCancelled:Z

    return-void
.end method
