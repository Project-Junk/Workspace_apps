.class Lcom/coloros/systemui/qs/ColorBrightnessController$8;
.super Landroid/view/View$AccessibilityDelegate;
.source "ColorBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/ColorBrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;Landroid/widget/CheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$8;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 327
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 328
    const-class p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 329
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$8;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$900(Lcom/coloros/systemui/qs/ColorBrightnessController;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 330
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$8;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$400(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$8;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$900(Lcom/coloros/systemui/qs/ColorBrightnessController;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1107ef

    goto :goto_0

    :cond_0
    const p0, 0x7f1107ee

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 332
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void
.end method
