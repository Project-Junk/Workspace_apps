.class public abstract Lcolor/support/v7/internal/widget/AdapterViewCompat;
.super Landroid/view/ViewGroup;
.source "AdapterViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;,
        Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;,
        Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterContextMenuInfo;,
        Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;,
        Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemLongClickListener;,
        Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListenerWrapper;,
        Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;

.field mOnItemLongClickListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcolor/support/v7/internal/widget/AdapterViewCompat<",
            "TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 229
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mFirstPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 85
    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncRowId:J

    .line 95
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNeedSync:Z

    .line 127
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mInLayout:Z

    const/4 v2, -0x1

    .line 153
    iput v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedPosition:I

    .line 159
    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedRowId:J

    .line 164
    iput v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedPosition:I

    .line 170
    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedRowId:J

    .line 202
    iput v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldSelectedPosition:I

    .line 207
    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldSelectedRowId:J

    .line 226
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mBlockLayoutRequests:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 233
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mFirstPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 85
    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncRowId:J

    .line 95
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNeedSync:Z

    .line 127
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mInLayout:Z

    const/4 p2, -0x1

    .line 153
    iput p2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedPosition:I

    .line 159
    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedRowId:J

    .line 164
    iput p2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedPosition:I

    .line 170
    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedRowId:J

    .line 202
    iput p2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldSelectedPosition:I

    .line 207
    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldSelectedRowId:J

    .line 226
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mBlockLayoutRequests:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 237
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mFirstPosition:I

    const-wide/high16 p2, -0x8000000000000000L

    .line 85
    iput-wide p2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncRowId:J

    .line 95
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNeedSync:Z

    .line 127
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mInLayout:Z

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedPosition:I

    .line 159
    iput-wide p2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedRowId:J

    .line 164
    iput v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedPosition:I

    .line 170
    iput-wide p2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedRowId:J

    .line 202
    iput v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldSelectedPosition:I

    .line 207
    iput-wide p2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldSelectedRowId:J

    .line 226
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mBlockLayoutRequests:Z

    return-void
.end method

.method static synthetic access$000(Lcolor/support/v7/internal/widget/AdapterViewCompat;Landroid/os/Parcelable;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcolor/support/v7/internal/widget/AdapterViewCompat;)Landroid/os/Parcelable;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcolor/support/v7/internal/widget/AdapterViewCompat;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 7

    .line 892
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemSelectedListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;

    if-nez v0, :cond_0

    return-void

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getSelectedItemPosition()I

    move-result v4

    if-ltz v4, :cond_1

    .line 897
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 898
    iget-object v1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemSelectedListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;

    .line 899
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, p0

    .line 898
    invoke-interface/range {v1 .. v6}, Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;->onItemSelected(Lcolor/support/v7/internal/widget/AdapterViewCompat;Landroid/view/View;IJ)V

    goto :goto_0

    .line 901
    :cond_1
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemSelectedListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;->onNothingSelected(Lcolor/support/v7/internal/widget/AdapterViewCompat;)V

    :goto_0
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .locals 6

    .line 734
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->isInFilterMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 739
    iget-object p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 740
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 741
    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->setVisibility(I)V

    goto :goto_0

    .line 744
    :cond_1
    invoke-virtual {p0, v1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->setVisibility(I)V

    .line 750
    :goto_0
    iget-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mDataChanged:Z

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 751
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->onLayout(ZIIII)V

    goto :goto_1

    .line 754
    :cond_2
    iget-object p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 755
    :cond_3
    invoke-virtual {p0, v1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0

    .line 462
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "addView(View) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 475
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 503
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 488
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected canAnimate()Z
    .locals 1

    .line 917
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mItemCount:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method checkFocus()V
    .locals 5

    .line 715
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 716
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 717
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    :goto_3
    if-eqz v3, :cond_4

    .line 721
    iget-boolean v4, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mDesiredFocusableInTouchModeState:Z

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    invoke-super {p0, v4}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    if-eqz v3, :cond_5

    .line 722
    iget-boolean v3, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mDesiredFocusableState:Z

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 723
    iget-object v3, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_8

    if-eqz v0, :cond_6

    .line 724
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    invoke-direct {p0, v1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->updateEmptyStatus(Z)V

    :cond_8
    return-void
.end method

.method checkSelectionChanged()V
    .locals 4

    .line 984
    iget v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedPosition:I

    iget v1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedRowId:J

    iget-wide v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 985
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->selectionChanged()V

    .line 986
    iget v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedPosition:I

    iput v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldSelectedPosition:I

    .line 987
    iget-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedRowId:J

    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldSelectedRowId:J

    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 907
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getSelectedView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 908
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 909
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 794
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 786
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method findSyncPosition()I
    .locals 14

    .line 1000
    iget v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mItemCount:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1006
    :cond_0
    iget-wide v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncRowId:J

    .line 1007
    iget v4, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncPosition:I

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v2, v5

    if-nez v5, :cond_1

    return v1

    :cond_1
    const/4 v5, 0x0

    .line 1015
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    .line 1016
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1018
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x64

    add-long/2addr v7, v9

    .line 1039
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    move v9, v4

    move v10, v9

    move v11, v5

    .line 1044
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    cmp-long v12, v12, v7

    if-gtz v12, :cond_b

    .line 1045
    invoke-interface {p0, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v12

    cmp-long v12, v12, v2

    if-nez v12, :cond_4

    return v4

    :cond_4
    if-ne v9, v0, :cond_5

    move v12, v6

    goto :goto_1

    :cond_5
    move v12, v5

    :goto_1
    if-nez v10, :cond_6

    move v13, v6

    goto :goto_2

    :cond_6
    move v13, v5

    :goto_2
    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    goto :goto_4

    :cond_7
    if-nez v13, :cond_a

    if-eqz v11, :cond_8

    if-nez v12, :cond_8

    goto :goto_3

    :cond_8
    if-nez v12, :cond_9

    if-nez v11, :cond_3

    if-nez v13, :cond_3

    :cond_9
    add-int/lit8 v10, v10, -0x1

    move v11, v6

    move v4, v10

    goto :goto_0

    :cond_a
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move v11, v5

    move v4, v9

    goto :goto_0

    :cond_b
    :goto_4
    return v1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 592
    iget p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mItemCount:I

    return p0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 0

    .line 675
    iget-object p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method public getFirstVisiblePosition()I
    .locals 0

    .line 635
    iget p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mFirstPosition:I

    return p0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 0

    .line 766
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 767
    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getItemIdAtPosition(I)J
    .locals 0

    .line 771
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide p0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 p0, -0x8000000000000000L

    :goto_1
    return-wide p0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .line 645
    iget v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mFirstPosition:I

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getChildCount()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;
    .locals 0

    .line 291
    iget-object p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemClickListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;

    return-object p0
.end method

.method public final getOnItemLongClickListener()Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemLongClickListener;
    .locals 0

    .line 357
    iget-object p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemLongClickListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemLongClickListener;

    return-object p0
.end method

.method public final getOnItemSelectedListener()Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;
    .locals 0

    .line 403
    iget-object p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemSelectedListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;

    return-object p0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 4

    :goto_0
    const/4 v0, -0x1

    .line 608
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 617
    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 619
    invoke-virtual {p0, v2}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    iget p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mFirstPosition:I

    add-int/2addr p0, v2

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2

    .line 576
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 577
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getSelectedItemPosition()I

    move-result p0

    if-eqz v0, :cond_0

    .line 578
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    if-ltz p0, :cond_0

    .line 579
    invoke-interface {v0, p0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 562
    iget-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 553
    iget p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedPosition:I

    return p0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 5

    .line 921
    iget v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mItemCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_5

    .line 929
    iget-boolean v3, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNeedSync:Z

    if-eqz v3, :cond_0

    .line 932
    iput-boolean v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNeedSync:Z

    .line 936
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->findSyncPosition()I

    move-result v3

    if-ltz v3, :cond_0

    .line 939
    invoke-virtual {p0, v3, v1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->lookForSelectablePosition(IZ)I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 942
    invoke-virtual {p0, v3}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->setNextSelectedPositionInt(I)V

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_4

    .line 949
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getSelectedItemPosition()I

    move-result v4

    if-lt v4, v0, :cond_1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-gez v0, :cond_2

    move v0, v2

    .line 960
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->lookForSelectablePosition(IZ)I

    move-result v4

    if-gez v4, :cond_3

    .line 963
    invoke-virtual {p0, v0, v2}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->lookForSelectablePosition(IZ)I

    move-result v4

    :cond_3
    if-ltz v4, :cond_4

    .line 966
    invoke-virtual {p0, v4}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->setNextSelectedPositionInt(I)V

    .line 967
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->checkSelectionChanged()V

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-nez v1, :cond_6

    const/4 v0, -0x1

    .line 974
    iput v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedPosition:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 975
    iput-wide v3, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedRowId:J

    .line 976
    iput v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedPosition:I

    .line 977
    iput-wide v3, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedRowId:J

    .line 978
    iput-boolean v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNeedSync:Z

    .line 979
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->checkSelectionChanged()V

    :cond_6
    return-void
.end method

.method isInFilterMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 850
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 851
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectionNotifier:Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 543
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getHeight()I

    move-result p1

    iput p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mLayoutHeight:I

    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7

    .line 304
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemClickListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p0, v1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->playSoundEffect(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 309
    :cond_0
    iget-object v1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemClickListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-interface/range {v1 .. v6}, Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;->onItemClick(Lcolor/support/v7/internal/widget/AdapterViewCompat;Landroid/view/View;IJ)V

    return v0

    :cond_1
    return v1
.end method

.method rememberSyncState()V
    .locals 5

    .line 1120
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 1121
    iput-boolean v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNeedSync:Z

    .line 1122
    iget v1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mLayoutHeight:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncHeight:J

    .line 1123
    iget v1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedPosition:I

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 1125
    iget v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mFirstPosition:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1126
    iget-wide v3, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedRowId:J

    iput-wide v3, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncRowId:J

    .line 1127
    iget v1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedPosition:I

    iput v1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncPosition:I

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSpecificTop:I

    .line 1131
    :cond_0
    iput v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncMode:I

    goto :goto_1

    .line 1134
    :cond_1
    invoke-virtual {p0, v2}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1135
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1136
    iget v3, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mFirstPosition:I

    if-ltz v3, :cond_2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1137
    iget v3, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mFirstPosition:I

    invoke-interface {v2, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncRowId:J

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0x1

    .line 1139
    iput-wide v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncRowId:J

    .line 1141
    :goto_0
    iget v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mFirstPosition:I

    iput v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncPosition:I

    if-eqz v1, :cond_3

    .line 1143
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSpecificTop:I

    .line 1145
    :cond_3
    iput v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncMode:I

    :cond_4
    :goto_1
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 538
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "removeAllViews() is not supported in AdapterView"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 516
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "removeView(View) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeViewAt(I)V
    .locals 0

    .line 528
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method selectionChanged()V
    .locals 2

    .line 870
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemSelectedListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;

    if-eqz v0, :cond_3

    .line 871
    iget-boolean v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mInLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->fireOnSelected()V

    goto :goto_1

    .line 876
    :cond_1
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectionNotifier:Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;

    if-nez v0, :cond_2

    .line 877
    new-instance v0, Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;-><init>(Lcolor/support/v7/internal/widget/AdapterViewCompat;Lcolor/support/v7/internal/widget/AdapterViewCompat$1;)V

    iput-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectionNotifier:Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;

    .line 879
    :cond_2
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectionNotifier:Lcolor/support/v7/internal/widget/AdapterViewCompat$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->post(Ljava/lang/Runnable;)Z

    .line 886
    :cond_3
    :goto_1
    iget v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 887
    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->sendAccessibilityEvent(I)V

    :cond_4
    return-void
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mEmptyView:Landroid/view/View;

    .line 662
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 663
    invoke-interface {p1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 664
    :goto_1
    invoke-direct {p0, p1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->updateEmptyStatus(Z)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .line 690
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 691
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 693
    :goto_1
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mDesiredFocusableState:Z

    if-nez p1, :cond_2

    .line 695
    iput-boolean v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mDesiredFocusableInTouchModeState:Z

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_4

    .line 698
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->isInFilterMode()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3

    .line 703
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 704
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 706
    :goto_1
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mDesiredFocusableInTouchModeState:Z

    if-eqz p1, :cond_2

    .line 708
    iput-boolean v2, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mDesiredFocusableState:Z

    :cond_2
    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 711
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->isInFilterMode()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2

    .line 1105
    iput p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedPosition:I

    .line 1106
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedRowId:J

    .line 1108
    iget-boolean v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1109
    iput p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncPosition:I

    .line 1110
    iget-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSyncRowId:J

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 777
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnItemClickListener(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemClickListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemLongClickListener;)V
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 347
    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->setLongClickable(Z)V

    .line 349
    :cond_0
    iput-object p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemLongClickListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemLongClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOnItemSelectedListener:Lcolor/support/v7/internal/widget/AdapterViewCompat$OnItemSelectedListener;

    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2

    .line 1095
    iput p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedPosition:I

    .line 1096
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedRowId:J

    return-void
.end method

.method public abstract setSelection(I)V
.end method