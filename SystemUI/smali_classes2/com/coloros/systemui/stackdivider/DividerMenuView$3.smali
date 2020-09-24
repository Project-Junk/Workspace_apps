.class Lcom/coloros/systemui/stackdivider/DividerMenuView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/stackdivider/DividerMenuView;->startAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

.field final synthetic val$showed:Z


# direct methods
.method constructor <init>(Lcom/coloros/systemui/stackdivider/DividerMenuView;Z)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    iput-boolean p2, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$3;->val$showed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 202
    iget-boolean p1, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$3;->val$showed:Z

    if-nez p1, :cond_0

    .line 203
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/DividerMenuView$3;->this$0:Lcom/coloros/systemui/stackdivider/DividerMenuView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/stackdivider/DividerMenuView;->setVisibility(I)V

    :cond_0
    return-void
.end method
