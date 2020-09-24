.class final Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;
.super Landroid/os/Handler;
.source "ColorVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final DISMISS:I = 0x2

.field private static final DISMISS_MSG:I = 0x9

.field private static final RECHECK:I = 0x3

.field private static final RECHECK_ALL:I = 0x4

.field private static final RESCHEDULE_TIMEOUT:I = 0x6

.field private static final SET_STREAM_IMPORTANT:I = 0x5

.field private static final SHOW:I = 0x1

.field private static final STATE_CHANGED:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V
    .locals 0

    .line 1772
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    .line 1773
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1778
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1786
    :pswitch_1
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1785
    :pswitch_2
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    goto :goto_1

    .line 1784
    :pswitch_3
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->rescheduleTimeoutH()V

    goto :goto_1

    .line 1783
    :pswitch_4
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3600(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;IZ)V

    goto :goto_1

    .line 1782
    :pswitch_5
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    goto :goto_1

    .line 1781
    :pswitch_6
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    goto :goto_1

    .line 1780
    :pswitch_7
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dismissH(I)V

    goto :goto_1

    .line 1779
    :pswitch_8
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
