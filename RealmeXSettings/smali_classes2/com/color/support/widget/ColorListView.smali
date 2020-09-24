.class public Lcom/color/support/widget/ColorListView;
.super Landroid/widget/ListView;
.source "ColorListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_CHOICE_POSITION:I = -0x2

.field private static final SCROLL_CHOICE_SCROLL_DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "ColorListView"


# instance fields
.field private mCheckItemId:I

.field private mDelayedScroll:Ljava/lang/Runnable;

.field private mFlag:Z

.field private mLastPosition:I

.field private mLastSite:I

.field private mLasterPosition:I

.field private mLeftOffset:I

.field private mMultiChoice:Z

.field private mRightOffset:I

.field private mScrollMultiChoiceListener:Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;

.field private mUpScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 77
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/color/support/widget/ColorListView;->mMultiChoice:Z

    const/4 p2, -0x2

    .line 45
    iput p2, p0, Lcom/color/support/widget/ColorListView;->mLastPosition:I

    .line 46
    iput p2, p0, Lcom/color/support/widget/ColorListView;->mLasterPosition:I

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lcom/color/support/widget/ColorListView;->mFlag:Z

    .line 50
    iput-boolean p1, p0, Lcom/color/support/widget/ColorListView;->mUpScroll:Z

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/color/support/widget/ColorListView;->mLastSite:I

    .line 52
    iput p1, p0, Lcom/color/support/widget/ColorListView;->mCheckItemId:I

    .line 55
    new-instance p1, Lcom/color/support/widget/ColorListView$1;

    invoke-direct {p1, p0}, Lcom/color/support/widget/ColorListView$1;-><init>(Lcom/color/support/widget/ColorListView;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorListView;->mDelayedScroll:Ljava/lang/Runnable;

    .line 93
    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->oppo_listview_scrollchoice_left_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorListView;->mLeftOffset:I

    .line 94
    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->oppo_listview_scrollchoice_right_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorListView;->mRightOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorListView;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/color/support/widget/ColorListView;->mUpScroll:Z

    return p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorListView;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorListView;->alignBottomChild(II)V

    return-void
.end method

.method private alignBottomChild(II)V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 128
    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/color/support/widget/ColorListView;->setSelectionFromTop(II)V

    return-void
.end method

.method private isInScrollRange(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/color/support/widget/ColorListView;->pointToPosition(II)I

    move-result v0

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x2

    .line 144
    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 148
    :try_start_0
    iget v4, p0, Lcom/color/support/widget/ColorListView;->mCheckItemId:I

    if-lez v4, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Lcom/color/support/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/color/support/widget/ColorListView;->mCheckItemId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 150
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->getLocationOnScreen([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    aget v5, v2, v3

    iget v6, p0, Lcom/color/support/widget/ColorListView;->mLeftOffset:I

    sub-int/2addr v5, v6

    .line 163
    aget v2, v2, v3

    iget v6, p0, Lcom/color/support/widget/ColorListView;->mRightOffset:I

    add-int/2addr v2, v6

    .line 165
    invoke-virtual {v4}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    if-le v1, v5, :cond_0

    if-ge v1, v2, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_0

    .line 167
    iput-boolean v2, p0, Lcom/color/support/widget/ColorListView;->mMultiChoice:Z

    return v2

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    .line 171
    iput-boolean v3, p0, Lcom/color/support/widget/ColorListView;->mMultiChoice:Z

    :cond_1
    return v3

    .line 152
    :cond_2
    :try_start_1
    iput-boolean v3, p0, Lcom/color/support/widget/ColorListView;->mMultiChoice:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    .line 157
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_3

    .line 158
    iput-boolean v3, p0, Lcom/color/support/widget/ColorListView;->mMultiChoice:Z

    :cond_3
    return v3
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 114
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 179
    iget-boolean v0, p0, Lcom/color/support/widget/ColorListView;->mMultiChoice:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorListView;->isInScrollRange(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 182
    invoke-virtual {p0, v0, v5}, Lcom/color/support/widget/ColorListView;->pointToPosition(II)I

    move-result v0

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eqz v5, :cond_1

    if-eq v5, v4, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    goto/16 :goto_1

    .line 186
    :cond_0
    iput v3, p0, Lcom/color/support/widget/ColorListView;->mLastPosition:I

    .line 187
    iput v3, p0, Lcom/color/support/widget/ColorListView;->mLasterPosition:I

    goto/16 :goto_1

    .line 191
    :cond_1
    iput-boolean v4, p0, Lcom/color/support/widget/ColorListView;->mFlag:Z

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getCount()I

    move-result p1

    sub-int/2addr p1, v4

    if-ne v0, p1, :cond_3

    .line 195
    invoke-direct {p0, v0, v2}, Lcom/color/support/widget/ColorListView;->alignBottomChild(II)V

    .line 197
    :cond_3
    iget-boolean p1, p0, Lcom/color/support/widget/ColorListView;->mFlag:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/color/support/widget/ColorListView;->mLastPosition:I

    if-eq p1, v0, :cond_7

    if-eq v0, v1, :cond_7

    iget-object p1, p0, Lcom/color/support/widget/ColorListView;->mScrollMultiChoiceListener:Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;

    if-eqz p1, :cond_7

    .line 198
    iget-object p1, p0, Lcom/color/support/widget/ColorListView;->mDelayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 214
    iget-object p1, p0, Lcom/color/support/widget/ColorListView;->mScrollMultiChoiceListener:Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 215
    iget p1, p0, Lcom/color/support/widget/ColorListView;->mLastPosition:I

    if-eq p1, v3, :cond_5

    .line 219
    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getFirstVisiblePosition()I

    move-result p1

    const-wide/16 v5, 0x32

    if-ne v0, p1, :cond_4

    if-lez v0, :cond_4

    .line 220
    iput-boolean v4, p0, Lcom/color/support/widget/ColorListView;->mUpScroll:Z

    .line 221
    iget-object p1, p0, Lcom/color/support/widget/ColorListView;->mDelayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v5, v6}, Lcom/color/support/widget/ColorListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 222
    :cond_4
    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getLastVisiblePosition()I

    move-result p1

    if-ne v0, p1, :cond_5

    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getCount()I

    move-result p1

    if-ge v0, p1, :cond_5

    .line 223
    iput-boolean v2, p0, Lcom/color/support/widget/ColorListView;->mUpScroll:Z

    .line 224
    iget-object p1, p0, Lcom/color/support/widget/ColorListView;->mDelayedScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v5, v6}, Lcom/color/support/widget/ColorListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    :cond_5
    :goto_0
    iget p1, p0, Lcom/color/support/widget/ColorListView;->mLasterPosition:I

    if-ne p1, v0, :cond_6

    .line 228
    iget-object p1, p0, Lcom/color/support/widget/ColorListView;->mScrollMultiChoiceListener:Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;

    iget v1, p0, Lcom/color/support/widget/ColorListView;->mLastPosition:I

    invoke-virtual {p0}, Lcom/color/support/widget/ColorListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;->onItemTouch(ILandroid/view/View;)V

    .line 230
    :cond_6
    iget p1, p0, Lcom/color/support/widget/ColorListView;->mLastPosition:I

    iput p1, p0, Lcom/color/support/widget/ColorListView;->mLasterPosition:I

    .line 231
    iput v0, p0, Lcom/color/support/widget/ColorListView;->mLastPosition:I

    :cond_7
    return v4

    .line 237
    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v4, :cond_9

    const/4 v5, 0x3

    if-eq v0, v5, :cond_9

    goto :goto_2

    .line 243
    :cond_9
    iput-boolean v4, p0, Lcom/color/support/widget/ColorListView;->mUpScroll:Z

    .line 244
    iput v3, p0, Lcom/color/support/widget/ColorListView;->mLastPosition:I

    .line 245
    iput v3, p0, Lcom/color/support/widget/ColorListView;->mLasterPosition:I

    .line 246
    iput-boolean v2, p0, Lcom/color/support/widget/ColorListView;->mFlag:Z

    .line 247
    iput-boolean v4, p0, Lcom/color/support/widget/ColorListView;->mMultiChoice:Z

    .line 248
    iput v1, p0, Lcom/color/support/widget/ColorListView;->mLastSite:I

    .line 251
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCheckItemId(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/color/support/widget/ColorListView;->mCheckItemId:I

    return-void
.end method

.method public setScrollMultiChoiceListener(Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/color/support/widget/ColorListView;->mScrollMultiChoiceListener:Lcom/color/support/widget/ColorListView$ScrollMultiChoiceListener;

    return-void
.end method
