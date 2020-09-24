.class Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;
.super Ljava/lang/Object;
.source "ColorVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->lambda$initSettingsH$4(Landroid/view/View;)V
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

    .line 556
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 564
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$4100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 565
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$5000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$5100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 566
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$5200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;->this$0:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->access$5100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
