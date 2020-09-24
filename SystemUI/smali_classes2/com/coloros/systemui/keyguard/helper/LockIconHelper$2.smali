.class Lcom/coloros/systemui/keyguard/helper/LockIconHelper$2;
.super Ljava/lang/Object;
.source "LockIconHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->lambda$hideTips$2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$2;->this$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 381
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    neg-int p1, p1

    .line 382
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$2;->this$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->access$200(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->setClipWidth(I)V

    .line 383
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$2;->this$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->access$200(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->invalidate()V

    return-void
.end method
