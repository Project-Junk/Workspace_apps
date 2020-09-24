.class public Lcom/coloros/partners/dirac/widget/DiracModeSelector;
.super Landroid/view/View;
.source "DiracModeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/partners/dirac/widget/DiracModeSelector$DTSModeSelectorListener;,
        Lcom/coloros/partners/dirac/widget/DiracModeSelector$OnItemChangeListener;
    }
.end annotation


# static fields
.field private static final CLICK_MOVE_X:I = 0x14

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DiracModeSelector"

.field private static final VISIBLE_ITEM:I = 0x5


# instance fields
.field private mClickedItemIndex:I

.field private mInitialMotionX:F

.field private mIsEnable:Z

.field private mItemsPositionInited:Z

.field private mLastMotionX:F

.field private mModeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/partners/dirac/widget/DiracModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiPoint:Z

.field private mOnItemChangeListener:Lcom/coloros/partners/dirac/widget/DiracModeSelector$OnItemChangeListener;

.field private mSelectedItemIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mIsEnable:Z

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mItemsPositionInited:Z

    .line 39
    iput-boolean p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mMultiPoint:Z

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    return-void
.end method

.method private getClickedItemIndex(F)I
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    float-to-int p1, p1

    .line 92
    div-int/2addr p1, v0

    iget v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    add-int/lit8 v0, v0, -0x2

    add-int/2addr p1, v0

    return p1
.end method

.method private initItemsPosition()V
    .locals 9

    .line 58
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 59
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 60
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v3, v2

    .line 61
    :goto_0
    iget v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    if-ge v3, v4, :cond_0

    .line 62
    iget-object v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    iget v5, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    sub-int v6, v5, v3

    mul-int/2addr v6, v0

    sub-int v6, v1, v6

    sub-int/2addr v5, v3

    mul-int/2addr v5, v0

    sub-int v5, v1, v5

    add-int/2addr v5, v0

    .line 66
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getHeight()I

    move-result v7

    .line 62
    invoke-virtual {v4, v6, v2, v5, v7}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setPosition(IIII)V

    .line 67
    iget-object v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-virtual {v4, v2}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setSelected(Z)V

    .line 68
    iget-object v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    new-instance v5, Landroid/graphics/Rect;

    .line 69
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v7

    add-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v5, v6, v2, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    invoke-virtual {v4, v5}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setCenterRect(Landroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    add-int v4, v1, v0

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getHeight()I

    move-result v5

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setPosition(IIII)V

    .line 73
    iget-object v3, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setSelected(Z)V

    .line 74
    iget-object v3, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    iget v5, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    new-instance v5, Landroid/graphics/Rect;

    .line 75
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v6

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v7

    add-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-direct {v5, v6, v2, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    invoke-virtual {v3, v5}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setCenterRect(Landroid/graphics/Rect;)V

    .line 77
    iget v3, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    add-int/2addr v3, v4

    :goto_1
    iget-object v5, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 78
    iget-object v5, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    iget v6, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    sub-int v7, v3, v6

    mul-int/2addr v7, v0

    add-int/2addr v7, v1

    sub-int v6, v3, v6

    add-int/2addr v6, v4

    mul-int/2addr v6, v0

    add-int/2addr v6, v1

    .line 82
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getHeight()I

    move-result v8

    .line 78
    invoke-virtual {v5, v7, v2, v6, v8}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setPosition(IIII)V

    .line 83
    iget-object v5, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-virtual {v5, v2}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setSelected(Z)V

    .line 84
    iget-object v5, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    new-instance v6, Landroid/graphics/Rect;

    .line 85
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v8

    add-int/2addr v8, v0

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v6, v7, v2, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 84
    invoke-virtual {v5, v6}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setCenterRect(Landroid/graphics/Rect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private isIndexInvalid(I)Z
    .locals 1

    .line 238
    iget p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mClickedItemIndex:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private move(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    sub-float v0, p2, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p2, v0

    div-float/2addr p1, p2

    .line 100
    :cond_0
    iget-object p2, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 101
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->moveTo(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setCurrentItem(I)V
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 111
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 113
    :cond_1
    iget v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    if-ne v0, p1, :cond_2

    .line 114
    sget-object p1, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->TAG:Ljava/lang/String;

    const-string v0, "setCurrentItem, same selected item."

    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 118
    :cond_2
    iput p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    .line 119
    iget p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mOnItemChangeListener:Lcom/coloros/partners/dirac/widget/DiracModeSelector$OnItemChangeListener;

    if-eqz p1, :cond_3

    .line 123
    iget-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    iget v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-virtual {p1}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->getModeName()Ljava/lang/String;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mOnItemChangeListener:Lcom/coloros/partners/dirac/widget/DiracModeSelector$OnItemChangeListener;

    iget v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    invoke-interface {v0, v1, p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelector$OnItemChangeListener;->onItemSelected(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateItemsPosition()V
    .locals 6

    .line 129
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mItemsPositionInited:Z

    if-nez v0, :cond_1

    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 136
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 137
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 138
    :goto_0
    iget v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    if-ge v3, v4, :cond_2

    .line 139
    iget-object v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    iget v5, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    sub-int/2addr v5, v3

    mul-int/2addr v5, v0

    sub-int v5, v1, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->scrollTo(F)V

    .line 140
    iget-object v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-virtual {v4, v2}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_2
    iget-object v3, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->scrollTo(F)V

    .line 143
    iget-object v3, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    iget v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setSelected(Z)V

    .line 144
    iget v3, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    add-int/2addr v3, v4

    :goto_1
    iget-object v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 145
    iget-object v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    iget v5, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    sub-int v5, v3, v5

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->scrollTo(F)V

    .line 146
    iget-object v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-virtual {v4, v2}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getModeIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 152
    :goto_0
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-virtual {v2}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->getModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 162
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mItemsPositionInited:Z

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->initItemsPosition()V

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mItemsPositionInited:Z

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 167
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-virtual {v1, p1}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/16 v2, 0x105

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 225
    :cond_0
    iput-boolean v1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mMultiPoint:Z

    goto/16 :goto_1

    .line 184
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mMultiPoint:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mIsEnable:Z

    if-eqz v0, :cond_8

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mLastMotionX:F

    sub-float/2addr v0, v2

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mInitialMotionX:F

    sub-float/2addr v2, v3

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onTouchEvent, Math.abs(f1)="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/coloros/partners/dirac/a/b;->a()I

    .line 190
    invoke-direct {p0, v0, v2}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->move(FF)V

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mLastMotionX:F

    .line 192
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->invalidate()V

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mMultiPoint:Z

    .line 196
    invoke-virtual {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mInitialMotionX:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 200
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x14

    if-ge v4, v5, :cond_3

    iget v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mClickedItemIndex:I

    .line 201
    invoke-direct {p0, v4}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->isIndexInvalid(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mClickedItemIndex:I

    iget v5, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    if-eq v4, v5, :cond_3

    .line 203
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mIsEnable:Z

    if-eqz v0, :cond_8

    .line 204
    invoke-direct {p0, v4}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->setCurrentItem(I)V

    .line 205
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->updateItemsPosition()V

    goto :goto_1

    .line 207
    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/2addr v0, v2

    if-lt v4, v0, :cond_5

    .line 208
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mIsEnable:Z

    if-eqz v0, :cond_8

    if-lez v3, :cond_4

    .line 210
    iget v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->setCurrentItem(I)V

    goto :goto_0

    .line 212
    :cond_4
    iget v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->setCurrentItem(I)V

    .line 214
    :goto_0
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->updateItemsPosition()V

    goto :goto_1

    .line 217
    :cond_5
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mIsEnable:Z

    if-eqz v0, :cond_6

    .line 218
    iget v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mSelectedItemIndex:I

    invoke-virtual {p0, v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->setSelectedItem(I)V

    goto :goto_1

    .line 219
    :cond_6
    iget v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mClickedItemIndex:I

    invoke-direct {p0, v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->isIndexInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    .line 179
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mInitialMotionX:F

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mLastMotionX:F

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->getClickedItemIndex(F)I

    move-result v0

    iput v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mClickedItemIndex:I

    .line 230
    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mIsEnable:Z

    if-nez v0, :cond_9

    .line 231
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    return v1
.end method

.method public setDTSModeList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "DTSModeSelector"

    const-string v0, "modelist is null!!"

    .line 243
    invoke-static {p1, v0}, Lcom/coloros/partners/dirac/a/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 246
    :cond_0
    new-instance v0, Lcom/coloros/partners/dirac/widget/DiracModeSelector$DTSModeSelectorListener;

    invoke-direct {v0, p0, p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector$DTSModeSelectorListener;-><init>(Lcom/coloros/partners/dirac/widget/DiracModeSelector;Lcom/coloros/partners/dirac/widget/DiracModeSelector;)V

    .line 247
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 248
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    new-instance v1, Lcom/coloros/partners/dirac/widget/DiracModeItem;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/coloros/partners/dirac/widget/DiracModeItem;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1, v0}, Lcom/coloros/partners/dirac/widget/DiracModeItem;->setListener(Lcom/coloros/partners/dirac/widget/DiracModeItem$UpdateListener;)V

    .line 251
    iget-object v2, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mModeItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIsEnable(Z)V
    .locals 0

    .line 173
    iput-boolean p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mIsEnable:Z

    return-void
.end method

.method public setOnItemChangeListener(Lcom/coloros/partners/dirac/widget/DiracModeSelector$OnItemChangeListener;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->mOnItemChangeListener:Lcom/coloros/partners/dirac/widget/DiracModeSelector$OnItemChangeListener;

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 0

    .line 261
    invoke-direct {p0, p1}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->setCurrentItem(I)V

    .line 262
    invoke-direct {p0}, Lcom/coloros/partners/dirac/widget/DiracModeSelector;->updateItemsPosition()V

    return-void
.end method
