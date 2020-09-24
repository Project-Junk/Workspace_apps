.class Landroidx/slice/widget/RowView$3;
.super Ljava/lang/Object;
.source "RowView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/RowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/RowView;


# direct methods
.method constructor <init>(Landroidx/slice/widget/RowView;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .line 1055
    iget-object p1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget p3, p1, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    add-int/2addr p2, p3

    iput p2, p1, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 1056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 1057
    iget-object p3, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget-wide v0, p3, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    const-wide/16 v0, 0xc8

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget-wide v2, p3, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    sub-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 1058
    iget-object p1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    .line 1059
    iget-object p1, p1, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget-object p2, p2, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1060
    iget-object p1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {p1}, Landroidx/slice/widget/RowView;->sendSliderValue()V

    return-void

    .line 1061
    :cond_0
    iget-object p1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget-boolean p1, p1, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    if-nez p1, :cond_1

    .line 1062
    iget-object p1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    .line 1063
    iget-object p1, p1, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget-object p2, p2, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1069
    iget-object p1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1074
    iget-object v0, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    .line 1075
    iget-boolean v0, v0, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget-boolean v0, v0, Landroidx/slice/widget/RowView;->mRangeHasPendingUpdate:Z

    if-eqz v0, :cond_1

    .line 1076
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iput-boolean v1, v0, Landroidx/slice/widget/RowView;->mRangeUpdaterRunning:Z

    .line 1077
    iput-boolean v1, v0, Landroidx/slice/widget/RowView;->mRangeHasPendingUpdate:Z

    .line 1078
    iget-object v0, v0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget-object v1, v1, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1079
    iget-object v0, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object v1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    iget v1, v1, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    add-int/2addr p1, v1

    iput p1, v0, Landroidx/slice/widget/RowView;->mRangeValue:I

    .line 1080
    iget-object p1, p0, Landroidx/slice/widget/RowView$3;->this$0:Landroidx/slice/widget/RowView;

    invoke-virtual {p1}, Landroidx/slice/widget/RowView;->sendSliderValue()V

    :cond_1
    return-void
.end method
