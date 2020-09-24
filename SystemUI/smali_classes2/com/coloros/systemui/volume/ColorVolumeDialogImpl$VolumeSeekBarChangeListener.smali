.class final Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "ColorVolumeDialogImpl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field private mAdjustCount:J

.field private final mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V
    .locals 2

    .line 1854
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1852
    iput-wide v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mAdjustCount:J

    .line 1855
    iput-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;)V
    .locals 0

    .line 1848
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9

    .line 1860
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1861
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onProgressChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorVolumeDialogImpl"

    const-string v2, "Volume"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    invoke-static {p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4500(Landroid/widget/SeekBar;I)I

    move-result v0

    .line 1868
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v5}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$2000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1869
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAdjustCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mAdjustCount:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , delta = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , mRow.userAttempt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$2000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " , userLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_6

    .line 1870
    iget-wide v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mAdjustCount:J

    const-wide/16 v7, 0x3c

    cmp-long p3, v5, v7

    const/4 v5, 0x2

    if-lez p3, :cond_1

    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p3

    if-ne p3, v5, :cond_1

    cmp-long p3, v3, v7

    if-gez p3, :cond_1

    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMin:I

    if-eq p3, v0, :cond_1

    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMax:I

    if-eq p3, v0, :cond_1

    goto/16 :goto_1

    .line 1875
    :cond_1
    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1876
    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    iget-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4600(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1878
    :cond_2
    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/widget/TextView;

    move-result-object p3

    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1880
    :goto_0
    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMin:I

    if-lez p3, :cond_3

    .line 1881
    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 p3, p3, 0x64

    if-ge p2, p3, :cond_3

    .line 1883
    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1891
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object p1

    iget p1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muted:Z

    if-eqz p1, :cond_5

    if-lez v0, :cond_5

    .line 1892
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$2002(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;J)J

    .line 1893
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onProgressChanged mRow.userAttempt = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$2000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p1

    if-eq p1, v0, :cond_5

    .line 1895
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->setActiveStream(I)V

    .line 1896
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p2

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->setStreamVolume(II)V

    .line 1897
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1702(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I

    .line 1900
    iget-wide p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mAdjustCount:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mAdjustCount:J

    .line 1902
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$1300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x9

    new-array p3, v5, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v1

    const/4 p0, 0x1

    .line 1903
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p0

    .line 1902
    invoke-static {p1, p2, p3}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    const-string p0, "onProgressChanged return "

    .line 1871
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartTrackingTouch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogImpl"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->removeMessages(I)V

    .line 1912
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->setActiveStream(I)V

    .line 1913
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1902(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z

    .line 1914
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f081213

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTrackingTouch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorVolumeDialogImpl"

    const-string v2, "Volume"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4500(Landroid/widget/SeekBar;I)I

    move-result v0

    .line 1927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStopTrackingTouch userLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mRow.ss.level = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , mController.removeSetStreamMessage() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->removeSetStreamMessage()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->removeSetStreamMessage()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 1929
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;

    move-result-object v3

    iget-object v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v5}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-interface {v3, v5, v4}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->setStreamVolume(II)V

    .line 1931
    :cond_0
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;

    move-result-object v3

    iget-object v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v5}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-interface {v3, v5, v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->setStreamVolume(II)V

    .line 1932
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1902(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z

    .line 1933
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$2002(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;J)J

    .line 1934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStopTrackingTouch mRow.userAttempt = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$2000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 1935
    iput-wide v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mAdjustCount:J

    .line 1937
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$1300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v6}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1938
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    if-eq v1, v0, :cond_1

    .line 1939
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1942
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08122f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
