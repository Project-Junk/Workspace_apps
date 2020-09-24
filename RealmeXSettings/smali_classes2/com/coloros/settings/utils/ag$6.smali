.class final Lcom/coloros/settings/utils/ag$6;
.super Ljava/lang/Object;
.source "OppoLockScreenUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/ag;->a(FZZZI[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(ILandroid/view/View;)V
    .locals 0

    .line 656
    iput p1, p0, Lcom/coloros/settings/utils/ag$6;->a:I

    iput-object p2, p0, Lcom/coloros/settings/utils/ag$6;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 670
    iget p1, p0, Lcom/coloros/settings/utils/ag$6;->a:I

    if-ltz p1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/coloros/settings/utils/ag$6;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 673
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/utils/ag$6;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
