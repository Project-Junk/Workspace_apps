.class Lcom/coloros/systemui/qs/ColorQSDetailClipper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorQSDetailClipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/ColorQSDetailClipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/ColorQSDetailClipper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/ColorQSDetailClipper;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSDetailClipper$1;->this$0:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSDetailClipper$1;->this$0:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/ColorQSDetailClipper;->access$102(Lcom/coloros/systemui/qs/ColorQSDetailClipper;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSDetailClipper$1;->this$0:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorQSDetailClipper;->access$000(Lcom/coloros/systemui/qs/ColorQSDetailClipper;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
