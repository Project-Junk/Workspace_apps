.class Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility$1;
.super Ljava/lang/Object;
.source "ColorVolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;)V
    .locals 0

    .line 1949
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility$1;->this$1:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    const-string p1, "Volume"

    const-string v0, "ColorVolumeDialogImpl"

    const-string v1, "onViewAttachedToWindow"

    .line 1957
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility$1;->this$1:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;

    invoke-static {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->access$4800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string p0, "Volume"

    const-string p1, "ColorVolumeDialogImpl"

    const-string v0, "onViewDetachedFromWindow"

    .line 1952
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
