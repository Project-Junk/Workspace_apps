.class public Lcom/android/systemui/statusbar/policy/SmartReplyView;
.super Landroid/view/ViewGroup;
.source "SmartReplyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;,
        Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;
    }
.end annotation


# static fields
.field private static final DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEASURE_SPEC_ANY_LENGTH:I

.field private static final SQUEEZE_FAILED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SmartReplyView"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mBreakIterator:Ljava/text/BreakIterator;

.field private mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field private mCurrentBackgroundColor:I

.field private final mDefaultBackgroundColor:I

.field private final mDefaultStrokeColor:I

.field private final mDefaultTextColor:I

.field private final mDefaultTextColorDarkBg:I

.field private final mDoubleLineButtonPaddingHorizontal:I

.field private final mHeightUpperLimit:I

.field private final mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field private final mMinStrokeContrast:D

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mRippleColor:I

.field private final mRippleColorDarkBg:I

.field private final mSingleLineButtonPaddingHorizontal:I

.field private final mSingleToDoubleLineButtonWidthIncrease:I

.field private mSmartRepliesGeneratedByAssistant:Z

.field private mSmartReplyContainer:Landroid/view/View;

.field private final mSpacing:I

.field private final mStrokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    .line 60
    sget-object v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;

    sput-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    .line 121
    const-class v1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 122
    const-class v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    .line 123
    const-class v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const v2, 0x7f0707a6

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    const v1, 0x7f060313

    .line 128
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 129
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const v2, 0x7f060315

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const v2, 0x7f060316

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColorDarkBg:I

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const v2, 0x7f060314

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const v2, 0x7f0602a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    .line 134
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColorDarkBg:I

    .line 136
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    invoke-static {v1, v2}, Lcom/android/internal/util/ContrastColorUtil;->calculateContrast(II)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinStrokeContrast:D

    .line 144
    sget-object v1, Lcom/android/systemui/R$styleable;->SmartReplyView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x2

    if-ge v1, p2, :cond_4

    .line 148
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 150
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_1

    :cond_0
    if-ne v7, v6, :cond_1

    .line 152
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    if-ne v7, v6, :cond_2

    .line 154
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_1

    :cond_2
    if-nez v7, :cond_3

    .line 156
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    iput v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    .line 162
    iput v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    .line 163
    iput v4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    .line 164
    iput v5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    sub-int/2addr v5, v4

    mul-int/2addr v5, v6

    .line 165
    iput v5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    .line 169
    invoke-static {}, Ljava/text/BreakIterator;->getLineInstance()Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->reallocateCandidateButtonQueueForSqueezing()V

    return-void
.end method

.method private estimateOptimalSqueezedButtonTextWidth(Landroid/widget/Button;)I
    .locals 13

    .line 627
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-virtual {p1}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    invoke-interface {v1, v0, p1}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 633
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 634
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 636
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 637
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2}, Ljava/text/BreakIterator;->next()I

    move-result v2

    if-ne v2, v3, :cond_1

    return v3

    .line 643
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 644
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2}, Ljava/text/BreakIterator;->current()I

    move-result v2

    const/4 v4, 0x0

    .line 645
    invoke-static {v0, v4, v2, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v5

    .line 647
    invoke-static {v0, v2, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v2

    .line 648
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_9

    const/4 v5, 0x1

    if-lez v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    .line 654
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getMaxSqueezeRemeasureAttempts()I

    move-result v7

    move v8, v6

    move v6, v4

    :goto_2
    if-ge v6, v7, :cond_8

    if-eqz v2, :cond_3

    .line 656
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    .line 657
    invoke-virtual {v9}, Ljava/text/BreakIterator;->previous()I

    move-result v9

    goto :goto_3

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mBreakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v9}, Ljava/text/BreakIterator;->next()I

    move-result v9

    :goto_3
    if-ne v9, v3, :cond_4

    goto :goto_6

    .line 662
    :cond_4
    invoke-static {v0, v4, v9, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v10

    .line 664
    invoke-static {v0, v9, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v9

    .line 665
    invoke-static {v10, v9}, Ljava/lang/Math;->max(FF)F

    move-result v11

    cmpg-float v12, v11, v8

    if-gez v12, :cond_8

    if-eqz v2, :cond_5

    cmpg-float v8, v10, v9

    if-gtz v8, :cond_6

    goto :goto_4

    :cond_5
    cmpl-float v8, v10, v9

    if-ltz v8, :cond_6

    :goto_4
    move v8, v5

    goto :goto_5

    :cond_6
    move v8, v4

    :goto_5
    if-eqz v8, :cond_7

    move v6, v11

    goto :goto_7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move v8, v11

    goto :goto_2

    :cond_8
    :goto_6
    move v6, v8

    :cond_9
    :goto_7
    float-to-double p0, v6

    .line 681
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 595
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 596
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 597
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v3, Landroid/widget/Button;

    if-nez v5, :cond_0

    goto :goto_1

    .line 600
    :cond_0
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$000(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 601
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getActivityStarter()Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-nez v0, :cond_0

    .line 887
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 889
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method private getLeftCompoundDrawableWidthWithPadding(Landroid/widget/Button;)I
    .locals 1

    .line 689
    invoke-virtual {p1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    .line 690
    aget-object p0, p0, v0

    if-nez p0, :cond_0

    return v0

    .line 693
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/Button;->getCompoundDrawablePadding()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private gotEnoughSmartReplies(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 577
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 578
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 579
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 583
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 584
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getMinNumSystemGeneratedReplies()I

    move-result p0

    if-lt v1, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static inflate(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/SmartReplyView;
    .locals 2

    .line 258
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d01f3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;

    return-object p0
.end method

.method static inflateActionButton(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Z)Landroid/widget/Button;
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v8, p0

    move-object v6, p3

    .line 333
    iget-object v0, v6, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    move v5, p2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/Notification$Action;

    .line 334
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v3, 0x7f0d01f1

    invoke-virtual {v0, v3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    .line 336
    iget-object v0, v2, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {v2}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    move-object v3, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 342
    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x0

    .line 343
    invoke-virtual {v9, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 345
    new-instance v10, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$tct0o0Zp_9czv90IHtUOrdcaxl0;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/app/Notification$Action;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    if-eqz p7, :cond_0

    .line 354
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;

    iget-object v1, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 355
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getOnClickInitDelay()J

    move-result-wide v1

    invoke-direct {v0, v10, v1, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;-><init>(Landroid/view/View$OnClickListener;J)V

    move-object v10, v0

    .line 357
    :cond_0
    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    invoke-virtual {v9}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 361
    sget-object v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$002(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    return-object v9
.end method

.method static inflateReplyButton(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Landroid/widget/Button;
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v9, p0

    .line 266
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    move-object v2, p3

    .line 268
    iget-object v0, v2, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:[Ljava/lang/CharSequence;

    aget-object v3, v0, p2

    .line 269
    invoke-virtual {v10, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 271
    new-instance v11, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;

    move-object v0, v11

    move-object v1, p0

    move v4, p2

    move-object v5, v10

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$rVuoX0krA-dMy7xAwdbzCHW8AzI;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Ljava/lang/CharSequence;ILandroid/widget/Button;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;)V

    .line 305
    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$wCF0s-VwFBEkCEZW3HU9INxvlFA;

    invoke-direct {v0, p0, v11}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$wCF0s-VwFBEkCEZW3HU9INxvlFA;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V

    if-eqz p6, :cond_0

    .line 308
    new-instance v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;

    iget-object v2, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 309
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getOnClickInitDelay()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView$DelayedOnClickListener;-><init>(Landroid/view/View$OnClickListener;J)V

    move-object v0, v1

    .line 311
    :cond_0
    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 322
    iget v0, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    iget v1, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    iget v2, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    iget v3, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    iget v4, v9, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    move-object p0, v10

    move p1, v0

    move p2, v1

    move p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    invoke-static/range {p0 .. p5}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setButtonColors(Landroid/widget/Button;IIIII)V

    return-object v10
.end method

.method static synthetic lambda$inflateActionButton$4(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/app/Notification$Action;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/view/View;)V
    .locals 8

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getActivityStarter()Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    iget-object p7, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v7, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$Lr1cUJfz75W8c-TEGk8EL0-Hx1Y;

    move-object v0, v7

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$Lr1cUJfz75W8c-TEGk8EL0-Hx1Y;-><init>(Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    .line 352
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    .line 346
    invoke-interface {p0, p7, v7, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method static synthetic lambda$inflateReplyButton$1(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Ljava/lang/CharSequence;ILandroid/widget/Button;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 272
    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    .line 273
    invoke-virtual {v3}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v3

    .line 272
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getEffectiveEditChoicesBeforeSending(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 274
    new-instance v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    move-object/from16 v2, p2

    move/from16 v5, p3

    invoke-direct {v10, v2, v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;-><init>(Ljava/lang/CharSequence;I)V

    .line 276
    iget-object v5, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    new-array v7, v3, [Landroid/app/RemoteInput;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    aput-object v1, v7, v4

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)Z

    return v4

    :cond_0
    move-object/from16 v2, p2

    move/from16 v5, p3

    .line 282
    invoke-virtual/range {p4 .. p4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    .line 283
    invoke-static/range {p6 .. p6}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    move-result v15

    const/16 v16, 0x0

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p3

    .line 282
    invoke-virtual/range {v11 .. v16}, Lcom/android/systemui/statusbar/SmartReplyController;->smartReplySent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILjava/lang/CharSequence;IZ)V

    .line 285
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 286
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 288
    new-array v6, v3, [Landroid/app/RemoteInput;

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    aput-object v7, v6, v4

    invoke-static {v6, v2, v5}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 290
    invoke-static {v2, v3}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    .line 291
    invoke-virtual/range {p6 .. p6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setHasSentReply()V

    .line 293
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v3, p7

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SmartReplyView"

    const-string v3, "Unable to send smart reply"

    .line 295
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartReplyContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return v4
.end method

.method static synthetic lambda$inflateReplyButton$2(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Landroid/view/View;)V
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mKeyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V

    return-void
.end method

.method static synthetic lambda$null$3(Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    .line 349
    iget-boolean p4, p4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->fromAssistant:Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/SmartReplyController;->smartActionClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/app/Notification$Action;Z)V

    .line 351
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p5, p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeNotification(Ljava/lang/String;Z)Z

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0
.end method

.method private markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 779
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 780
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 781
    invoke-static {p2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$400(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 782
    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$402(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private reallocateCandidateButtonQueueForSqueezing()V
    .locals 3

    .line 186
    new-instance v0, Ljava/util/PriorityQueue;

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/SmartReplyView;->DECREASING_MEASURED_WIDTH_WITHOUT_PADDING_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    return-void
.end method

.method private remeasureButtonsIfNecessary(II)V
    .locals 10

    const/high16 v0, 0x40000000    # 2.0f

    .line 727
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 729
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    .line 731
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 732
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 733
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_3

    .line 738
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 742
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$400(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)I

    move-result v5

    const/4 v7, 0x3

    const v8, 0x7fffffff

    const/4 v9, 0x1

    if-ne v5, v7, :cond_1

    move v6, v8

    move v5, v9

    goto :goto_1

    :cond_1
    move v5, v2

    .line 749
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    if-eq v7, p1, :cond_4

    if-eq v6, v8, :cond_3

    .line 752
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    if-ne p1, v5, :cond_2

    .line 754
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    sub-int/2addr v6, v5

    goto :goto_2

    .line 757
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    add-int/2addr v6, v5

    .line 760
    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 761
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 760
    invoke-virtual {v4, p1, v5, p1, v7}, Landroid/view/View;->setPadding(IIII)V

    move v5, v9

    .line 766
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v7, p2, :cond_5

    move v5, v9

    :cond_5
    if-eqz v5, :cond_6

    const/high16 v5, -0x80000000

    .line 771
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/view/View;->measure(II)V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method private resetButtonsLayoutParams()V
    .locals 4

    .line 608
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 610
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 611
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 612
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z

    .line 613
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$402(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static setButtonColors(Landroid/widget/Button;IIIII)V
    .locals 2

    .line 848
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 849
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 851
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 852
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    .line 853
    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const/4 p4, 0x0

    .line 854
    invoke-virtual {v1, p4}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 855
    instance-of v1, p4, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v1, :cond_0

    .line 856
    check-cast p4, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p4}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 857
    instance-of v1, p4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    .line 858
    check-cast p4, Landroid/graphics/drawable/GradientDrawable;

    .line 859
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 860
    invoke-virtual {p4, p5, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 863
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 865
    :cond_1
    invoke-virtual {p0, p3}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private setCornerRadius(Landroid/widget/Button;F)V
    .locals 0

    .line 869
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 870
    instance-of p1, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    .line 872
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 873
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    const/4 p1, 0x0

    .line 874
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 875
    instance-of p1, p0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_0

    .line 876
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 877
    instance-of p1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    .line 878
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    .line 879
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    return-void
.end method

.method private squeezeButton(Landroid/widget/Button;I)I
    .locals 2

    .line 618
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->estimateOptimalSqueezedButtonTextWidth(Landroid/widget/Button;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 622
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->squeezeButtonToTextWidth(Landroid/widget/Button;II)I

    move-result p0

    return p0
.end method

.method private squeezeButtonToTextWidth(Landroid/widget/Button;II)I
    .locals 5

    .line 697
    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    .line 698
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    if-eq v1, v2, :cond_0

    .line 701
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    add-int/2addr v0, v1

    .line 705
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    .line 706
    invoke-virtual {p1}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v4

    .line 705
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 707
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v1, p3

    .line 709
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getLeftCompoundDrawableWidthWithPadding(Landroid/widget/Button;)I

    move-result p0

    add-int/2addr v1, p0

    const/high16 p0, -0x80000000

    .line 707
    invoke-static {v1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 710
    invoke-virtual {p1, p0, p2}, Landroid/widget/Button;->measure(II)V

    .line 712
    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p0

    .line 714
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 715
    invoke-virtual {p1}, Landroid/widget/Button;->getLineCount()I

    move-result p1

    if-gt p1, v2, :cond_2

    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 719
    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$402(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    sub-int/2addr v0, p0

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x3

    .line 716
    invoke-static {p2, p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$402(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public addPreInflatedButtons(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;)V"
        }
    .end annotation

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->reallocateCandidateButtonQueueForSqueezing()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 818
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 819
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->generateDefaultLayoutParams()Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .locals 2

    .line 372
    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(IILcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 377
    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(IILcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .locals 2

    .line 367
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/SmartReplyView$1;)V

    return-object v0
.end method

.method public getHeightUpperLimit()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mHeightUpperLimit:I

    return p0
.end method

.method public inflateRepliesFromRemoteInput(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->remoteInput:Landroid/app/RemoteInput;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 223
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, p0

    move v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    .line 224
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflateReplyButton(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->fromAssistant:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    :cond_1
    return-object v0
.end method

.method public inflateSmartActions(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation

    move-object v8, p1

    .line 241
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-object v0, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v0, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v10, :cond_1

    .line 244
    iget-object v0, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    .line 245
    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p0

    move v2, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    .line 246
    invoke-static/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflateActionButton(Lcom/android/systemui/statusbar/policy/SmartReplyView;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Z)Landroid/widget/Button;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    return-object v9
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 789
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-ne p1, p5, :cond_0

    goto :goto_0

    :cond_0
    move p5, p3

    :goto_0
    sub-int/2addr p4, p2

    if-eqz p5, :cond_1

    .line 792
    iget p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingRight:I

    sub-int/2addr p4, p1

    goto :goto_1

    :cond_1
    iget p4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingLeft:I

    .line 794
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result p1

    move p2, p3

    :goto_2
    if-ge p2, p1, :cond_5

    .line 796
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 798
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_4

    .line 802
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 803
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-eqz p5, :cond_3

    sub-int v3, p4, v1

    goto :goto_3

    :cond_3
    move v3, p4

    :goto_3
    add-int v4, v3, v1

    .line 805
    invoke-virtual {v0, v3, p3, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 807
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    add-int/2addr v1, v0

    if-eqz p5, :cond_4

    sub-int/2addr p4, v1

    goto :goto_4

    :cond_4
    add-int/2addr p4, v1

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 382
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7fffffff

    goto :goto_0

    .line 383
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 386
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->resetButtonsLayoutParams()V

    .line 388
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SmartReplyView"

    const-string v4, "Single line button queue leaked between onMeasure calls"

    .line 389
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->clear()V

    .line 393
    :cond_1
    new-instance v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    iget v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingLeft:I

    iget v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingRight:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;-><init>(III)V

    .line 404
    sget-object v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    move-result-object v4

    .line 405
    sget-object v5, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->filterActionsOrReplies(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;)Ljava/util/List;

    move-result-object v5

    .line 406
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 407
    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 408
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    .line 414
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mConstants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->getMaxNumActions()I

    move-result v9

    .line 417
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v12, v6

    move-object v11, v8

    move-object v8, v3

    move v3, v12

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 418
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v15, -0x1

    if-eq v9, v15, :cond_2

    .line 420
    invoke-static {v14}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$000(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    move-result-object v6

    sget-object v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v6, v15, :cond_2

    if-lt v3, v9, :cond_2

    move/from16 v16, v9

    move-object/from16 v17, v10

    goto/16 :goto_5

    .line 426
    :cond_2
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    move/from16 v16, v9

    iget v9, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    move-object/from16 v17, v10

    .line 427
    invoke-virtual {v13}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 426
    invoke-virtual {v13, v6, v15, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 428
    sget v6, Lcom/android/systemui/statusbar/policy/SmartReplyView;->MEASURE_SPEC_ANY_LENGTH:I

    invoke-virtual {v13, v6, v1}, Landroid/view/View;->measure(II)V

    .line 430
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    move-object v6, v13

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getLineCount()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_e

    const/4 v15, 0x2

    if-le v9, v15, :cond_3

    goto/16 :goto_5

    :cond_3
    if-ne v9, v10, :cond_4

    .line 439
    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v10, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_4
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->clone()Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    move-result-object v6

    if-nez v11, :cond_5

    .line 444
    invoke-static {v14}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$000(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    move-result-object v10

    sget-object v15, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v10, v15, :cond_5

    .line 447
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->clone()Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;

    move-result-object v10

    move-object v11, v10

    :cond_5
    if-nez v12, :cond_6

    const/4 v10, 0x0

    goto :goto_2

    .line 450
    :cond_6
    iget v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSpacing:I

    .line 451
    :goto_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 452
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v18, v6

    .line 453
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    add-int/2addr v10, v15

    add-int/2addr v6, v10

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 454
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 455
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 458
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    iget v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleLineButtonPaddingHorizontal:I

    if-ne v6, v10, :cond_8

    const/4 v6, 0x2

    if-eq v9, v6, :cond_7

    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v6, v2, :cond_8

    :cond_7
    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_9

    .line 463
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    add-int/lit8 v9, v12, 0x1

    iget v10, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSingleToDoubleLineButtonWidthIncrease:I

    mul-int/2addr v9, v10

    add-int/2addr v6, v9

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    .line 465
    iget v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDoubleLineButtonPaddingHorizontal:I

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    .line 471
    :cond_9
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v6, v2, :cond_d

    .line 473
    :cond_a
    :goto_4
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v6, v2, :cond_b

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    .line 474
    invoke-virtual {v6}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 475
    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v6}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 476
    invoke-direct {v0, v6, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->squeezeButton(Landroid/widget/Button;I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    .line 478
    iget v13, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 480
    invoke-virtual {v6}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v6

    .line 479
    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    .line 481
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    sub-int/2addr v6, v9

    iput v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    goto :goto_4

    .line 487
    :cond_b
    iget v6, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    if-le v6, v2, :cond_c

    const/4 v6, 0x3

    .line 492
    invoke-direct {v0, v6, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V

    move/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v8, v18

    goto :goto_6

    :cond_c
    const/4 v6, 0x2

    .line 502
    invoke-direct {v0, v6, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->markButtonsWithPendingSqueezeStatusAs(ILjava/util/List;)V

    :cond_d
    const/4 v6, 0x1

    .line 506
    invoke-static {v14, v6}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z

    add-int/lit8 v12, v12, 0x1

    .line 508
    invoke-static {v14}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$000(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    move-result-object v6

    sget-object v9, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    if-ne v6, v9, :cond_e

    add-int/lit8 v3, v3, 0x1

    :cond_e
    :goto_5
    move/from16 v9, v16

    move-object/from16 v10, v17

    :goto_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 513
    :cond_f
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartRepliesGeneratedByAssistant:Z

    if-eqz v2, :cond_11

    .line 514
    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->gotEnoughSmartReplies(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 516
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 517
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    const/4 v4, 0x0

    .line 518
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z

    goto :goto_7

    :cond_10
    move-object v8, v11

    .line 527
    :cond_11
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCandidateButtonQueueForSqueezing:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->clear()V

    .line 530
    iget v2, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mButtonPaddingHorizontal:I

    iget v3, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->remeasureButtonsIfNecessary(II)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getSuggestedMinimumHeight()I

    move-result v2

    iget v3, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingTop:I

    iget v4, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMaxChildHeight:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mPaddingBottom:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 538
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 539
    check-cast v4, Landroid/widget/Button;

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setCornerRadius(Landroid/widget/Button;F)V

    goto :goto_8

    .line 543
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getSuggestedMinimumWidth()I

    move-result v3

    iget v4, v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartSuggestionMeasures;->mMeasuredWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v4, p1

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->resolveSize(II)I

    move-result v3

    .line 546
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->resolveSize(II)I

    move-result v1

    .line 542
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setMeasuredDimension(II)V

    return-void
.end method

.method public resetSmartSuggestions(Landroid/view/View;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mSmartReplyContainer:Landroid/view/View;

    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->removeAllViews()V

    .line 196
    iget p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultBackgroundColor:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    return-void
.end method

.method public setBackgroundTintColor(I)V
    .locals 11

    .line 823
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 827
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mCurrentBackgroundColor:I

    .line 829
    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->isColorLight(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 831
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColorDarkBg:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultTextColor:I

    :goto_0
    const/high16 v2, -0x1000000

    or-int/2addr v2, p1

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    .line 834
    iget v3, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mDefaultStrokeColor:I

    iget-wide v4, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mMinStrokeContrast:D

    invoke-static {v3, v2, v0, v4, v5}, Lcom/android/internal/util/ContrastColorUtil;->ensureContrast(IIZD)I

    move-result v2

    if-eqz v0, :cond_2

    .line 836
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColorDarkBg:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mRippleColor:I

    .line 838
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildCount()I

    move-result v9

    const/4 v3, 0x0

    move v10, v3

    :goto_2
    if-ge v10, v9, :cond_3

    .line 840
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 841
    iget v8, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView;->mStrokeWidth:I

    move v4, p1

    move v5, v2

    move v6, v1

    move v7, v0

    invoke-static/range {v3 .. v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setButtonColors(Landroid/widget/Button;IIIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
