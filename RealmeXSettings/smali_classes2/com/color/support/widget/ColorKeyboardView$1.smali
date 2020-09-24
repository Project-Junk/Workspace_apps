.class Lcom/color/support/widget/ColorKeyboardView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "ColorKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/ColorKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/support/widget/ColorKeyboardView;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorKeyboardView;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/color/support/widget/ColorKeyboardView$1;->this$0:Lcom/color/support/widget/ColorKeyboardView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 121
    iget-object p1, p0, Lcom/color/support/widget/ColorKeyboardView$1;->this$0:Lcom/color/support/widget/ColorKeyboardView;

    invoke-static {p1}, Lcom/color/support/widget/ColorKeyboardView;->access$000(Lcom/color/support/widget/ColorKeyboardView;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/color/support/widget/ColorKeyboardView$1;->this$0:Lcom/color/support/widget/ColorKeyboardView;

    invoke-static {p1}, Lcom/color/support/widget/ColorKeyboardView;->access$000(Lcom/color/support/widget/ColorKeyboardView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    const-class p1, Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method
