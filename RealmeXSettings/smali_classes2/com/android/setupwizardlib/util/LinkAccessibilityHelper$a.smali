.class final Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "LinkAccessibilityHelper.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/util/LinkAccessibilityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 151
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->a:Landroid/graphics/Rect;

    .line 152
    iput-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    return-void
.end method

.method private a(I)Landroid/text/style/ClickableSpan;
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 236
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 237
    check-cast v0, Landroid/text/Spanned;

    .line 238
    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 239
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 240
    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 248
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 249
    check-cast v0, Landroid/text/Spanned;

    .line 251
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 252
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    .line 250
    invoke-interface {v0, v1, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getVirtualViewAt(FF)I
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 158
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 159
    check-cast v0, Landroid/text/Spanned;

    .line 160
    iget-object v1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    .line 1300
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1315
    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    const/4 v2, 0x0

    .line 1317
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 1318
    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v4, v4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1319
    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr p2, v4

    .line 1320
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    float-to-int p2, p2

    invoke-virtual {v4, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    .line 2306
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    .line 2308
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 2309
    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2310
    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 1325
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 161
    :goto_0
    const-class p2, Landroid/text/style/ClickableSpan;

    .line 162
    invoke-interface {v0, p1, p1, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 163
    array-length p2, p1

    if-ne p2, v3, :cond_1

    const/4 p2, 0x0

    .line 164
    aget-object p1, p1, p2

    .line 165
    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    const/high16 p1, -0x80000000

    return p1
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 175
    check-cast v0, Landroid/text/Spanned;

    .line 176
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    .line 178
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 179
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    .line 223
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->a(I)Landroid/text/style/ClickableSpan;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 225
    iget-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    .line 228
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LinkSpan is null for offset: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LinkAccessibilityHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 186
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->a(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->a(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 190
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LinkSpan is null for offset: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LinkAccessibilityHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .line 199
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->a(I)Landroid/text/style/ClickableSpan;

    move-result-object v0

    const-string v1, "LinkAccessibilityHelper"

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->a(Landroid/text/style/ClickableSpan;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LinkSpan is null for offset: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v2, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v2, 0x1

    .line 206
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 207
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 208
    iget-object v3, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->a:Landroid/graphics/Rect;

    .line 3260
    iget-object v4, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 3261
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 3262
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_3

    .line 3263
    iget-object v5, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 3265
    check-cast v4, Landroid/text/Spanned;

    .line 3266
    invoke-interface {v4, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 3267
    invoke-interface {v4, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 3268
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 3269
    invoke-virtual {v5, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    .line 3270
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 3271
    invoke-virtual {v5, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 3272
    invoke-virtual {v5, v6, v3}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    if-ne v0, v6, :cond_1

    .line 3276
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 3277
    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 3283
    :cond_1
    invoke-virtual {v5, v6}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    float-to-int v0, v4

    .line 3284
    iput v0, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    float-to-int v0, v4

    .line 3286
    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 3291
    :goto_1
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    iget-object v4, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "LinkSpan bounds is empty for: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->a:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 213
    :cond_4
    iget-object p1, p0, Lcom/android/setupwizardlib/util/LinkAccessibilityHelper$a;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 p1, 0x10

    .line 214
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    return-void
.end method
