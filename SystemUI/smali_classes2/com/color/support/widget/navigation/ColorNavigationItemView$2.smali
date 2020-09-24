.class Lcom/color/support/widget/navigation/ColorNavigationItemView$2;
.super Ljava/lang/Object;
.source "ColorNavigationItemView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/navigation/ColorNavigationItemView;->createTipsHideAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/navigation/ColorNavigationItemView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/navigation/ColorNavigationItemView;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView$2;->this$0:Lcom/color/support/widget/navigation/ColorNavigationItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/color/support/widget/navigation/ColorNavigationItemView$2;->this$0:Lcom/color/support/widget/navigation/ColorNavigationItemView;

    invoke-static {p0}, Lcom/color/support/widget/navigation/ColorNavigationItemView;->access$100(Lcom/color/support/widget/navigation/ColorNavigationItemView;)Lcom/color/support/widget/ColorHintRedDot;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorHintRedDot;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
