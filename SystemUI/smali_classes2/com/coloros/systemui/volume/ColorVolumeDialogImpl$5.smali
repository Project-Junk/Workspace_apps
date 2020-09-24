.class Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;
.super Ljava/lang/Object;
.source "ColorVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V
    .locals 0

    .line 1667
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 1746
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    invoke-static {v0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3302(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Z)Z

    .line 1747
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    move-result-object p1

    .line 1748
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1749
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dismissH(I)V

    goto :goto_1

    .line 1751
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    :goto_1
    return-void
.end method

.method public onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    const-string v2, "onConfigurationChanged "

    .line 1716
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->dismiss()V

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2902(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Z)Z

    .line 1722
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->notifyVisible(Z)V

    return-void
.end method

.method public onDismissRequested(I)V
    .locals 0

    .line 1675
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 2

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayoutDirectionChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    .line 1707
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1708
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->dismiss()V

    .line 1710
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2902(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Z)Z

    .line 1711
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->notifyVisible(Z)V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    .line 1680
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onShowRequested(I)V
    .locals 0

    .line 1670
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 0

    .line 1741
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSilentHint()V
    .locals 2

    .line 1734
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1735
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 1

    .line 1727
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V
    .locals 0

    .line 1685
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;I)V
    .locals 0

    .line 1690
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->onStateChangedH(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;I)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 3

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    const-string v2, "theme change"

    .line 1697
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2602(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Z)Z

    return-void
.end method
