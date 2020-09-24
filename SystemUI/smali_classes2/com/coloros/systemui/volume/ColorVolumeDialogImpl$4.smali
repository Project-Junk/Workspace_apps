.class Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$4;
.super Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;
.source "ColorVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->showSafetyWarningH(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 0

    .line 1618
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$4;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-direct {p0, p2, p3}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;-><init>(Landroid/content/Context;Landroid/media/AudioManager;)V

    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 3

    .line 1621
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$4;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1622
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$4;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2302(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;)Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;

    .line 1623
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1624
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$4;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$2400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    return-void

    :catchall_0
    move-exception p0

    .line 1623
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
