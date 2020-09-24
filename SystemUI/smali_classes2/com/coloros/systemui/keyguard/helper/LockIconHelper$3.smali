.class Lcom/coloros/systemui/keyguard/helper/LockIconHelper$3;
.super Ljava/lang/Object;
.source "LockIconHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 386
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$3;->this$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/LockIconHelper$3;->this$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->access$200(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;)Lcom/coloros/systemui/keyguard/view/ColorTipsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorTipsView;->reset()V

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
