.class final Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$4;
.super Ljava/lang/Object;
.source "PowerWakeUpGuideActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$4;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$4;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;Z)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$4;->a:Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;Z)Z

    return-void
.end method
