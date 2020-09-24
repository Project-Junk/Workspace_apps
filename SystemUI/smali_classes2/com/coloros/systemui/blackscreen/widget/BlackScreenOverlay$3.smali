.class Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BlackScreenOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->restore(F)V
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

    .line 338
    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$3;->this$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$3;->this$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;

    invoke-static {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->access$100(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/blackscreen/controller/IBrightness;->onDark()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay$3;->this$0:Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;

    invoke-static {p0}, Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;->access$100(Lcom/coloros/systemui/blackscreen/widget/BlackScreenOverlay;)Lcom/coloros/systemui/blackscreen/controller/IBrightness;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/blackscreen/controller/IBrightness;->onDark()V

    return-void
.end method
