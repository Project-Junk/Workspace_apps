.class public final Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2$1;
.super Ljava/lang/Object;
.source "Animation5GViewGroup.kt"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2;->invoke()Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2$1",
        "Landroid/animation/Animator$AnimatorListener;",
        "onAnimationCancel",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "onAnimationEnd",
        "onAnimationRepeat",
        "onAnimationStart",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2$1;->this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2$1;->this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2;->this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->access$resetState(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2$1;->this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2;->this$0:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->access$resetState(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
