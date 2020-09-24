.class final Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;
.super Landroid/app/Dialog;
.source "ColorVolumeDialogImpl.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustomDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Landroid/content/Context;)V
    .locals 0

    .line 1792
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    const p1, 0x7f120458

    .line 1793
    invoke-direct {p0, p2, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogImpl"

    .line 1832
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1836
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1837
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dismissH(I)V

    return p1

    .line 1844
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1798
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1799
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 1804
    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1805
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1810
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1811
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$3900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent: mDialog.isShowing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogImpl"

    .line 1816
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1819
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1820
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dismissH(I)V

    return v1

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1823
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dismissH(I)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
