.class public Lcom/coloros/settings/feature/deviceinfo/aboutphone/DeviceInfoPreferenceGroupAdapter;
.super Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;
.source "DeviceInfoPreferenceGroupAdapter.java"


# instance fields
.field private d:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# virtual methods
.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/widget/HighlightablePreferenceGroupAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 48
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 49
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/DeviceInfoPreferenceGroupAdapter;->d:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    .line 52
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/DeviceInfoPreferenceGroupAdapter;->d:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method
