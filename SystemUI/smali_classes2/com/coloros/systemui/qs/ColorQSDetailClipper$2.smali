.class Lcom/coloros/systemui/qs/ColorQSDetailClipper$2;
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

    .line 88
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSDetailClipper$2;->this$0:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSDetailClipper$2;->this$0:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorQSDetailClipper;->access$000(Lcom/coloros/systemui/qs/ColorQSDetailClipper;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSDetailClipper$2;->this$0:Lcom/coloros/systemui/qs/ColorQSDetailClipper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/ColorQSDetailClipper;->access$102(Lcom/coloros/systemui/qs/ColorQSDetailClipper;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
