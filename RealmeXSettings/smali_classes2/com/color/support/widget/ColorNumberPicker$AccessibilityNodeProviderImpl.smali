.class Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "ColorNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID:I


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/color/support/widget/ColorNumberPicker;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorNumberPicker;)V
    .locals 0

    .line 1820
    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 1825
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    .line 1827
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    .line 1829
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 1944
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 1945
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1946
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 1947
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 1948
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v1}, Lcom/color/support/widget/ColorNumberPicker;->access$1000(Lcom/color/support/widget/ColorNumberPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {p2}, Lcom/color/support/widget/ColorNumberPicker;->access$1000(Lcom/color/support/widget/ColorNumberPicker;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1952
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 1953
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1954
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 1955
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorNumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 1956
    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 1957
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1959
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1961
    iget-object p3, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 1962
    iget-object p4, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p4, p3}, Lcom/color/support/widget/ColorNumberPicker;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    .line 1963
    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1964
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1966
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_1

    const/16 p2, 0x40

    .line 1967
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1969
    :cond_1
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2

    const/16 p1, 0x80

    .line 1970
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1972
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    .line 1973
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_3
    return-object v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 1

    .line 1931
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$900(Lcom/color/support/widget/ColorNumberPicker;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1932
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 1933
    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1934
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1935
    iget-object p3, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p3}, Lcom/color/support/widget/ColorNumberPicker;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 1936
    iget-object p3, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 1937
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1, p1, p2}, Lcom/color/support/widget/ColorNumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    .line 1834
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    .line 1835
    invoke-static {p1}, Lcom/color/support/widget/ColorNumberPicker;->access$800(Lcom/color/support/widget/ColorNumberPicker;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {v0}, Lcom/color/support/widget/ColorNumberPicker;->access$700(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    .line 1836
    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getScrollX()I

    move-result p1

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorNumberPicker;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v5, p1, v0

    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    .line 1837
    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorNumberPicker;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorNumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    add-int v6, p1, v0

    const/4 v1, 0x0

    move-object v0, p0

    .line 1834
    invoke-direct/range {v0 .. v6}, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1843
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1844
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1847
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 6

    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_7

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x10

    if-eq p2, p3, :cond_5

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_1

    return v5

    .line 1908
    :cond_1
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_2

    .line 1909
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/high16 p2, 0x10000

    .line 1910
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1912
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result p2

    iget-object p3, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {p3}, Lcom/color/support/widget/ColorNumberPicker;->access$400(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    return v4

    :cond_2
    return v5

    .line 1898
    :cond_3
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_4

    .line 1899
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const p2, 0x8000

    .line 1900
    invoke-virtual {p0, p1, p2}, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1902
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->getRight()I

    move-result p2

    iget-object p3, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {p3}, Lcom/color/support/widget/ColorNumberPicker;->access$400(Lcom/color/support/widget/ColorNumberPicker;)I

    move-result p3

    invoke-virtual {p1, v5, v5, p2, p3}, Lcom/color/support/widget/ColorNumberPicker;->invalidate(IIII)V

    return v4

    :cond_4
    return v5

    .line 1892
    :cond_5
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    return v4

    :cond_6
    return v5

    :cond_7
    if-eq p2, v3, :cond_e

    if-eq p2, v2, :cond_c

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_a

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_8

    .line 1921
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 1879
    :cond_8
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1880
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {p1, v5}, Lcom/color/support/widget/ColorNumberPicker;->access$500(Lcom/color/support/widget/ColorNumberPicker;Z)V

    return v4

    :cond_9
    return v5

    .line 1872
    :cond_a
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1873
    iget-object p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/color/support/widget/ColorNumberPicker;

    invoke-static {p1, v4}, Lcom/color/support/widget/ColorNumberPicker;->access$500(Lcom/color/support/widget/ColorNumberPicker;Z)V

    return v4

    :cond_b
    return v5

    .line 1864
    :cond_c
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_d

    .line 1865
    iput v1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_d
    return v5

    .line 1856
    :cond_e
    iget p2, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_f

    .line 1857
    iput p1, p0, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return v4

    :cond_f
    return v5
.end method

.method sendAccessibilityEventForVirtualView(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1925
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorNumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    return-void
.end method
