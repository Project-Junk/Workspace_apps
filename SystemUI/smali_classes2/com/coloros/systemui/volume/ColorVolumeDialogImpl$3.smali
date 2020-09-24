.class Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "ColorVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

.field final synthetic val$hintLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Ljava/lang/String;)V
    .locals 0

    .line 1265
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$3;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    iput-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$3;->val$hintLabel:Ljava/lang/String;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1267
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1268
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$3;->val$hintLabel:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method
