.class Lcom/coloros/systemui/qs/ColorBrightnessController$10;
.super Ljava/lang/Object;
.source "ColorBrightnessController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/ColorBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/ColorBrightnessController;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$10;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 498
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAutoCheckedListener   mAutomatic "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$10;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$900(Lcom/coloros/systemui/qs/ColorBrightnessController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isChecked "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Statusbar"

    const-string v1, "StatusBar.BrightnessController"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$10;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$1700(Lcom/coloros/systemui/qs/ColorBrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorChecked(Z)V

    .line 501
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$10;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$900(Lcom/coloros/systemui/qs/ColorBrightnessController;)Z

    move-result p1

    if-ne p1, p2, :cond_0

    return-void

    .line 504
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$10;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$400(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$10;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$900(Lcom/coloros/systemui/qs/ColorBrightnessController;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p1, p0}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->setBrightnessMode(Landroid/content/Context;I)V

    return-void
.end method
