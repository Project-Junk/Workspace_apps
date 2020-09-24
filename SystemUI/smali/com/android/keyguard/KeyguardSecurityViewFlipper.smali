.class public Lcom/android/keyguard/KeyguardSecurityViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "KeyguardSecurityViewFlipper.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardSecurityViewFlipper"


# instance fields
.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private makeChildMeasureSpec(II)I
    .locals 1

    const/4 p0, -0x2

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p2, p0, :cond_0

    const/4 p0, -0x1

    if-eq p2, p0, :cond_1

    .line 292
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    .line 295
    :cond_1
    :goto_0
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 213
    instance-of p0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    return p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 218
    instance-of p0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .locals 1

    .line 223
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 130
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 75
    instance-of v0, p0, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v0, :cond_0

    .line 76
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityView;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 179
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public needsInput()Z
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 124
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onFling(FF)V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 190
    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityView;->onFling(FF)V

    :cond_0
    return-void
.end method

.method public onFullyHidden()V
    .locals 0

    .line 204
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 206
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->onFullyHidden()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 228
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 229
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const-string v2, " should be AT_MOST"

    const-string v3, "KeyguardSecurityViewFlipper"

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_0

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMeasure: widthSpec "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq v1, v4, :cond_1

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure: heightSpec "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 240
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 243
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v5, p1

    move v6, p2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 245
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 246
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 248
    iget v8, v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    if-lez v8, :cond_2

    iget v8, v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    if-ge v8, v5, :cond_2

    .line 249
    iget v5, v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    .line 251
    :cond_2
    iget v8, v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    if-lez v8, :cond_3

    iget v8, v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    if-ge v8, v6, :cond_3

    .line 252
    iget v6, v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    .line 257
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v5, v4

    .line 258
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v6, v7

    .line 259
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v0, v8, :cond_5

    move v0, p1

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    if-ne v1, v8, :cond_6

    move v1, p2

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    if-ge v3, v2, :cond_7

    .line 264
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 265
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 267
    iget v10, v9, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->width:I

    invoke-direct {p0, v5, v10}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v10

    .line 268
    iget v9, v9, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->height:I

    invoke-direct {p0, v6, v9}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v9

    .line 270
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    .line 272
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v10, p1, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 273
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v9, p2, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr v0, v4

    add-int/2addr v1, v7

    .line 275
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 109
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 117
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    move v1, v0

    move v0, v2

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 64
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 65
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 66
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 67
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public reset()V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 101
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->reset()V

    :cond_0
    return-void
.end method

.method public setHasDismissAction(Z)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 198
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setHasDismissAction(Z)V

    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 85
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 93
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    :cond_0
    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 145
    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityView;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 137
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->showPromptReason(I)V

    :cond_0
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 153
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->showUsabilityHint()V

    :cond_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 161
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 169
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method