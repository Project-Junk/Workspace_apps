.class public Landroidx/slice/widget/SliceAdapter$SliceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SliceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliceViewHolder"
.end annotation


# instance fields
.field public final mSliceChildView:Landroidx/slice/widget/SliceChildView;

.field final synthetic this$0:Landroidx/slice/widget/SliceAdapter;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/SliceAdapter;Landroid/view/View;)V
    .locals 0

    .line 318
    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    .line 319
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 320
    instance-of p1, p2, Landroidx/slice/widget/SliceChildView;

    if-eqz p1, :cond_0

    check-cast p2, Landroidx/slice/widget/SliceChildView;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    return-void
.end method


# virtual methods
.method bind(Landroidx/slice/widget/SliceContent;I)V
    .locals 9

    .line 324
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 328
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/slice/widget/SliceChildView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, p0}, Landroidx/slice/widget/SliceChildView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 331
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActionLoadingListener(Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move v8, v0

    goto :goto_0

    :cond_1
    move v8, v1

    .line 334
    :goto_0
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v2, v2, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v2, v2, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {v2}, Landroidx/slice/widget/SliceView;->getMode()I

    .line 335
    :cond_2
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v3, v3, Landroidx/slice/widget/SliceAdapter;->mLoadingActions:Ljava/util/Set;

    invoke-virtual {v2, v3}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 336
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v3, v3, Landroidx/slice/widget/SliceAdapter;->mPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v2, v3}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 337
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v3, v3, Landroidx/slice/widget/SliceAdapter;->mColor:I

    invoke-virtual {v2, v3}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 338
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v3, v3, Landroidx/slice/widget/SliceAdapter;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v2, v3}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    .line 339
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v8, :cond_3

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-boolean v3, v3, Landroidx/slice/widget/SliceAdapter;->mShowLastUpdated:Z

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 340
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v8, :cond_4

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-wide v3, v3, Landroidx/slice/widget/SliceAdapter;->mLastUpdated:J

    goto :goto_2

    :cond_4
    const-wide/16 v3, -0x1

    :goto_2
    invoke-virtual {v2, v3, v4}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    if-nez p2, :cond_5

    .line 342
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v2, v2, Landroidx/slice/widget/SliceAdapter;->mInsetTop:I

    goto :goto_3

    :cond_5
    move v2, v1

    .line 343
    :goto_3
    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v3}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne p2, v3, :cond_6

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v3, v3, Landroidx/slice/widget/SliceAdapter;->mInsetBottom:I

    goto :goto_4

    :cond_6
    move v3, v1

    .line 344
    :goto_4
    iget-object v4, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v5, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v5, v5, Landroidx/slice/widget/SliceAdapter;->mInsetStart:I

    iget-object v6, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget v6, v6, Landroidx/slice/widget/SliceAdapter;->mInsetEnd:I

    invoke-virtual {v4, v5, v2, v6, v3}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 345
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-boolean v3, v3, Landroidx/slice/widget/SliceAdapter;->mAllowTwoLines:Z

    invoke-virtual {v2, v3}, Landroidx/slice/widget/SliceChildView;->setAllowTwoLines(Z)V

    .line 346
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    if-eqz v8, :cond_7

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v3, v3, Landroidx/slice/widget/SliceAdapter;->mSliceActions:Ljava/util/List;

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v2, v3}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 347
    iget-object v2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    invoke-virtual {v3}, Landroidx/slice/widget/SliceAdapter;->getItemCount()I

    move-result v6

    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v7, v3, Landroidx/slice/widget/SliceAdapter;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    move-object v3, p1

    move v4, v8

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/slice/widget/SliceChildView;->setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V

    const/4 v2, 0x2

    .line 348
    new-array v2, v2, [I

    .line 349
    iget-object v3, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v3, v3, Landroidx/slice/widget/SliceAdapter;->mSliceActions:Ljava/util/List;

    invoke-static {p1, v8, v3}, Landroidx/slice/widget/ListContent;->getRowType(Landroidx/slice/widget/SliceContent;ZLjava/util/List;)I

    move-result p1

    aput p1, v2, v1

    aput p2, v2, v0

    .line 351
    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1, v2}, Landroidx/slice/widget/SliceChildView;->setTag(Ljava/lang/Object;)V

    :cond_8
    :goto_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 356
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceView;->setClickInfo([I)V

    .line 358
    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object p1, p1, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceView;->performClick()Z

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 364
    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object p1, p1, Landroidx/slice/widget/SliceAdapter;->mTemplateView:Landroidx/slice/widget/TemplateView;

    if-eqz p1, :cond_0

    .line 365
    iget-object p1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object p1, p1, Landroidx/slice/widget/SliceAdapter;->mTemplateView:Landroidx/slice/widget/TemplateView;

    invoke-virtual {p1, p2}, Landroidx/slice/widget/TemplateView;->onForegroundActivated(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
