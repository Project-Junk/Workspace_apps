.class Lcom/color/support/widget/ColorLoadProgress$2;
.super Ljava/lang/Object;
.source "ColorLoadProgress.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorLoadProgress;->refreshProgressWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorLoadProgress;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorLoadProgress;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/color/support/widget/ColorLoadProgress$2;->this$0:Lcom/color/support/widget/ColorLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/color/support/widget/ColorLoadProgress$2;->this$0:Lcom/color/support/widget/ColorLoadProgress;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mIsUpdateWithAnimation:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 575
    iget-object p0, p0, Lcom/color/support/widget/ColorLoadProgress$2;->this$0:Lcom/color/support/widget/ColorLoadProgress;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mIsUpdateWithAnimation:Z

    .line 576
    iget p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mProgress:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorLoadProgress;->onProgressRefresh(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/color/support/widget/ColorLoadProgress$2;->this$0:Lcom/color/support/widget/ColorLoadProgress;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/color/support/widget/ColorLoadProgress;->mIsUpdateWithAnimation:Z

    return-void
.end method
