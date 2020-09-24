.class Lcom/coloros/systemui/stackdivider/DividerOperationButton$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerOperationButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setTouching(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$4;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$4;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->access$300(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$4;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->access$400(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$4;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-static {p1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->access$300(Lcom/coloros/systemui/stackdivider/DividerOperationButton;)Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$4;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-interface {p1, p0}, Lcom/coloros/systemui/stackdivider/DividerOperationButton$onDividerOperationClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
