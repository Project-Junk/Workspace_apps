.class Lcom/coloros/systemui/stackdivider/DividerOperationButton$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "DividerOperationButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/stackdivider/DividerOperationButton;->setAccessibilityDelegate()V
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

    .line 86
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$2;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/16 v0, 0x10

    if-ne v0, p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/DividerOperationButton$2;->this$0:Lcom/coloros/systemui/stackdivider/DividerOperationButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/stackdivider/DividerOperationButton;->access$000(Lcom/coloros/systemui/stackdivider/DividerOperationButton;Z)V

    .line 92
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
