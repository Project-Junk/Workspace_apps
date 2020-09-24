.class final Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;
.super Landroid/os/Handler;
.source "ColorVolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "W"
.end annotation


# static fields
.field private static final ACCESSIBILITY_MODE_CHANGED:I = 0xf

.field private static final CONFIGURATION_CHANGED:I = 0x9

.field private static final DISMISS_REQUESTED:I = 0x2

.field private static final GET_CAPTIONS_COMPONENT_STATE:I = 0x10

.field private static final GET_STATE:I = 0x3

.field private static final LAYOUT_DIRECTION_CHANGED:I = 0x8

.field private static final NOTIFY_VISIBLE:I = 0xc

.field private static final SET_ACTIVE_STREAM:I = 0xb

.field private static final SET_EXIT_CONDITION:I = 0x6

.field private static final SET_RINGER_MODE:I = 0x4

.field private static final SET_STREAM_MUTE:I = 0x7

.field private static final SET_STREAM_VOLUME:I = 0xa

.field private static final SET_ZEN_MODE:I = 0x5

.field private static final SHOW_SAFETY_WARNING:I = 0xe

.field private static final USER_ACTIVITY:I = 0xd

.field private static final VOLUME_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    .line 864
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 869
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 885
    :pswitch_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1600(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Z)V

    goto/16 :goto_3

    .line 886
    :pswitch_1
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1700(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Ljava/lang/Boolean;)V

    goto/16 :goto_3

    .line 883
    :pswitch_2
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)V

    goto/16 :goto_3

    .line 882
    :pswitch_3
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1400(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V

    goto/16 :goto_3

    .line 881
    :pswitch_4
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Z)V

    goto/16 :goto_3

    .line 880
    :pswitch_5
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)V

    goto/16 :goto_3

    .line 879
    :pswitch_6
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;II)V

    goto :goto_3

    .line 878
    :pswitch_7
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onConfigurationChanged()V

    goto :goto_3

    .line 877
    :pswitch_8
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->mCallbacks:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$C;->onLayoutDirectionChanged(I)V

    goto :goto_3

    .line 876
    :pswitch_9
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$1000(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;IZ)V

    goto :goto_3

    .line 875
    :pswitch_a
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/notification/Condition;

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Landroid/service/notification/Condition;)V

    goto :goto_3

    .line 874
    :pswitch_b
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$800(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)V

    goto :goto_3

    .line 873
    :pswitch_c
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$700(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;IZ)V

    goto :goto_3

    .line 872
    :pswitch_d
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$600(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V

    goto :goto_3

    .line 871
    :pswitch_e
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$500(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;I)V

    goto :goto_3

    .line 870
    :pswitch_f
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->onVolumeChangedW(II)Z

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
