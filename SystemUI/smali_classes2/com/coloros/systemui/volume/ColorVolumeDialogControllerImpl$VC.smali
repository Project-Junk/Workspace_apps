.class final Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;
.super Landroid/media/IVolumeController$Stub;
.source "ColorVolumeDialogControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VC"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    const-string p1, "ColorVolumeDialogControllerImpl.VC"

    .line 786
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->TAG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$1;)V
    .locals 0

    .line 785
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogControllerImpl.VC"

    const-string v2, "dismiss requested"

    .line 818
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 822
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->sendEmptyMessage(I)Z

    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displaySafeVolumeWarning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-static {p1}, Lcom/coloros/systemui/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogControllerImpl.VC"

    .line 790
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 793
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    move-result-object p0

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public masterMuteChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "Volume"

    const-string p1, "ColorVolumeDialogControllerImpl.VC"

    const-string v0, "masterMuteChanged"

    .line 806
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setA11yMode(I)V
    .locals 3

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setA11yMode to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorVolumeDialogControllerImpl.VC"

    const-string v2, "Volume"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid accessibility mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 835
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$402(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Z)Z

    goto :goto_0

    .line 832
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$402(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;Z)Z

    .line 841
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    move-result-object p1

    const/16 v0, 0xf

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$400(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogControllerImpl.VC"

    const-string v2, "setLayoutDirection"

    .line 811
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 813
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    move-result-object p0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public volumeChanged(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "volumeChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-static {p2}, Lcom/coloros/systemui/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogControllerImpl.VC"

    .line 798
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 801
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$VC;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogControllerImpl$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
