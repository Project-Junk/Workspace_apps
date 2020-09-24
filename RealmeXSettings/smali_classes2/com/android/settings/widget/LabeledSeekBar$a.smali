.class final Lcom/android/settings/widget/LabeledSeekBar$a;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "LabeledSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/LabeledSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/widget/LabeledSeekBar;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/LabeledSeekBar;Lcom/android/settings/widget/LabeledSeekBar;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    .line 131
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 132
    invoke-virtual {p2}, Lcom/android/settings/widget/LabeledSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->b:Z

    return-void
.end method

.method private a()I
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getWidth()I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    .line 198
    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 199
    iget-object v1, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final getVirtualViewAt(FF)I
    .locals 0

    float-to-int p1, p1

    .line 1203
    iget-object p2, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    .line 1204
    invoke-virtual {p2}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-direct {p0}, Lcom/android/settings/widget/LabeledSeekBar$a;->a()I

    move-result p2

    div-int/2addr p1, p2

    const/4 p2, 0x0

    .line 1203
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 1205
    div-int/lit8 p1, p1, 0x2

    .line 1206
    iget-object p2, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p2}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1207
    iget-boolean p2, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->b:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p2}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result p2

    sub-int/2addr p2, p1

    return p2

    :cond_0
    return p1
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 p3, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p3

    :cond_0
    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    return p3

    .line 158
    :cond_1
    iget-object p2, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    const/4 p2, 0x1

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/LabeledSeekBar$a;->sendEventForVirtualView(II)Z

    return p2
.end method

.method public final onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 192
    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 180
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->b(Lcom/android/settings/widget/LabeledSeekBar;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public final onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 187
    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 169
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1211
    iget-boolean v0, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    .line 1212
    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v0

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, -0x1

    .line 1213
    invoke-direct {p0}, Lcom/android/settings/widget/LabeledSeekBar$a;->a()I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    .line 1214
    invoke-virtual {v3}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 1215
    invoke-direct {p0}, Lcom/android/settings/widget/LabeledSeekBar$a;->a()I

    move-result v4

    mul-int/2addr v1, v4

    iget-object v4, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    .line 1216
    invoke-virtual {v4}, Lcom/android/settings/widget/LabeledSeekBar;->getPaddingStart()I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x0

    if-nez v0, :cond_1

    move v2, v4

    .line 1220
    :cond_1
    iget-object v5, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/LabeledSeekBar;->getMax()I

    move-result v5

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    .line 1221
    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getWidth()I

    move-result v1

    .line 1223
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1224
    iget-object v5, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/LabeledSeekBar;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 170
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    .line 171
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->b(Lcom/android/settings/widget/LabeledSeekBar;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 174
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$a;->a:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/LabeledSeekBar;->getProgress()I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    return-void
.end method
