.class Lcom/color/support/widget/ColorToolTips$1;
.super Ljava/lang/Object;
.source "ColorToolTips.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorToolTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorToolTips;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorToolTips;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/color/support/widget/ColorToolTips$1;->this$0:Lcom/color/support/widget/ColorToolTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips$1;->this$0:Lcom/color/support/widget/ColorToolTips;

    invoke-static {p1}, Lcom/color/support/widget/ColorToolTips;->access$100(Lcom/color/support/widget/ColorToolTips;)V

    .line 117
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips$1;->this$0:Lcom/color/support/widget/ColorToolTips;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorToolTips;->access$002(Lcom/color/support/widget/ColorToolTips;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/color/support/widget/ColorToolTips$1;->this$0:Lcom/color/support/widget/ColorToolTips;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/color/support/widget/ColorToolTips;->access$002(Lcom/color/support/widget/ColorToolTips;Z)Z

    return-void
.end method
