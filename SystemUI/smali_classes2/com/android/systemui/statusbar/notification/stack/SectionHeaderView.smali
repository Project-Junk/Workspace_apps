.class public Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
.super Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
.source "SectionHeaderView.java"


# instance fields
.field private mClearAllButton:Landroid/widget/ImageView;

.field private mContents:Landroid/view/ViewGroup;

.field private mLabelView:Landroid/widget/TextView;

.field private mOnClearClickListener:Landroid/view/View$OnClickListener;

.field private final mTmpRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mOnClearClickListener:Landroid/view/View$OnClickListener;

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mTmpRect:Landroid/graphics/RectF;

    return-void
.end method

.method private bindContents()V
    .locals 1

    const v0, 0x7f0a02ac

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mLabelView:Landroid/widget/TextView;

    const v0, 0x7f0a0122

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mOnClearClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mTmpRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    .line 103
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 102
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mTmpRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mContents:Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onFinishInflate()V

    const v0, 0x7f0a01bc

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mContents:Landroid/view/ViewGroup;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->bindContents()V

    return-void
.end method

.method onUiModeChanged()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->updateBackgroundColors()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mLabelView:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0602aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    const v0, 0x7f081186

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method reinflateContents()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mContents:Landroid/view/ViewGroup;

    const v2, 0x7f0d0200

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->bindContents()V

    return-void
.end method

.method setAreThereDismissableGentleNotifs(Z)V
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method setOnClearAllClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mOnClearClickListener:Landroid/view/View$OnClickListener;

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mClearAllButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setOnHeaderClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->mContents:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
