.class Lcolor/support/design/widget/ColorTabLayout$1;
.super Ljava/lang/Object;
.source "ColorTabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/design/widget/ColorTabLayout;->ensureScrollAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/design/widget/ColorTabLayout;


# direct methods
.method constructor <init>(Lcolor/support/design/widget/ColorTabLayout;)V
    .locals 0

    .line 1167
    iput-object p1, p0, Lcolor/support/design/widget/ColorTabLayout$1;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1170
    iget-object v0, p0, Lcolor/support/design/widget/ColorTabLayout$1;->this$0:Lcolor/support/design/widget/ColorTabLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcolor/support/design/widget/ColorTabLayout;->scrollTo(II)V

    return-void
.end method
