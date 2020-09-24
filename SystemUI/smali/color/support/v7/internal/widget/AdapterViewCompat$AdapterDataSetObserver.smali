.class Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcolor/support/v7/internal/widget/AdapterViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;


# direct methods
.method constructor <init>(Lcolor/support/v7/internal/widget/AdapterViewCompat;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 p1, 0x0

    .line 799
    iput-object p1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .locals 1

    const/4 v0, 0x0

    .line 844
    iput-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method

.method public onChanged()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mDataChanged:Z

    .line 804
    iget v1, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mItemCount:I

    iput v1, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldItemCount:I

    .line 805
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mItemCount:I

    .line 809
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    iget v0, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldItemCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    iget v0, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mItemCount:I

    if-lez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    iget-object v1, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->access$000(Lcolor/support/v7/internal/widget/AdapterViewCompat;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 812
    iput-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    goto :goto_0

    .line 814
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->rememberSyncState()V

    .line 816
    :goto_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->checkFocus()V

    .line 817
    iget-object p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 5

    .line 822
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mDataChanged:Z

    .line 824
    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-static {v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->access$100(Lcolor/support/v7/internal/widget/AdapterViewCompat;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 831
    :cond_0
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    iget v1, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mItemCount:I

    iput v1, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mOldItemCount:I

    .line 832
    iget-object v0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    const/4 v1, 0x0

    iput v1, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mItemCount:I

    const/4 v2, -0x1

    .line 833
    iput v2, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedPosition:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 834
    iput-wide v3, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mSelectedRowId:J

    .line 835
    iput v2, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedPosition:I

    .line 836
    iput-wide v3, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNextSelectedRowId:J

    .line 837
    iput-boolean v1, v0, Lcolor/support/v7/internal/widget/AdapterViewCompat;->mNeedSync:Z

    .line 839
    invoke-virtual {v0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->checkFocus()V

    .line 840
    iget-object p0, p0, Lcolor/support/v7/internal/widget/AdapterViewCompat$AdapterDataSetObserver;->this$0:Lcolor/support/v7/internal/widget/AdapterViewCompat;

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/AdapterViewCompat;->requestLayout()V

    return-void
.end method
