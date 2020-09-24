.class Lcom/coloros/systemui/keyguard/helper/LockIconHelper$1;
.super Ljava/lang/Object;
.source "LockIconHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->startAnimatorTranslationY(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

.field final synthetic val$endY:F


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;F)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$1;->this$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    iput p2, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$1;->val$endY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$1;->this$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    iget p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$1;->val$endY:F

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->access$000(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)F

    move-result v0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->access$100(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
