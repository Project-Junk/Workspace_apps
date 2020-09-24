.class Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BlackScreenOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->exit(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$2;->this$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 325
    invoke-static {}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->getInstance()Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$2;->this$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;

    invoke-static {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->access$000(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->stopBlackScreenMode(Landroid/content/Context;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 320
    invoke-static {}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->getInstance()Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$2;->this$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;

    invoke-static {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->access$000(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->stopBlackScreenMode(Landroid/content/Context;)V

    return-void
.end method
