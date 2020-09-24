.class Lcom/android/systemui/stackdivider/DividerView$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    .line 218
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 219
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    const v1, 0x7f0a004d

    const v2, 0x7f0a004c

    const v3, 0x7f0a004e

    const v4, 0x7f0a004f

    const v5, 0x7f0a0050

    if-eqz v0, :cond_3

    .line 221
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 222
    invoke-static {v6}, Lcom/android/systemui/stackdivider/DividerView;->access$100(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f110036

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 221
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 223
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 225
    invoke-static {v5}, Lcom/android/systemui/stackdivider/DividerView;->access$200(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f110035

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->showMiddleSplitTargetForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 230
    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->access$300(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f110034

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 234
    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->access$400(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f110033

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 236
    :cond_2
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 237
    invoke-static {p0}, Lcom/android/systemui/stackdivider/DividerView;->access$500(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f11002d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/16 :goto_0

    .line 239
    :cond_3
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 240
    invoke-static {v6}, Lcom/android/systemui/stackdivider/DividerView;->access$600(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f110031

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 241
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 243
    invoke-static {v5}, Lcom/android/systemui/stackdivider/DividerView;->access$700(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f110030

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 245
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->showMiddleSplitTargetForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 248
    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->access$800(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f11002f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 250
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 251
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 252
    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->access$900(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f11002e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 254
    :cond_6
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 255
    invoke-static {p0}, Lcom/android/systemui/stackdivider/DividerView;->access$1000(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f110032

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .line 261
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v2

    const v0, 0x7f0a0050

    if-ne p2, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->access$1100(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const v0, 0x7f0a004f

    if-ne p2, v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->access$1100(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0a004e

    if-ne p2, v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->access$1100(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0a004d

    if-ne p2, v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->access$1100(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f0a004c

    if-ne p2, v0, :cond_4

    .line 272
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->access$1100(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_5

    .line 275
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 276
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const-wide/16 v4, 0xfa

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    return p3

    .line 279
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
