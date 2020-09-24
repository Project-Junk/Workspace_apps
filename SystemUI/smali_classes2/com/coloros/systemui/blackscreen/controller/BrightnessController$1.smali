.class Lcom/coloros/systemui/blackscreen/controller/BrightnessController$1;
.super Landroid/telephony/PhoneStateListener;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/blackscreen/controller/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/blackscreen/controller/BrightnessController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/blackscreen/controller/BrightnessController;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController$1;->this$0:Lcom/coloros/systemui/blackscreen/controller/BrightnessController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 42
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCallStateChanged() state = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Statusbar"

    const-string v1, "BrightnessController"

    invoke-static {v0, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController$1;->this$0:Lcom/coloros/systemui/blackscreen/controller/BrightnessController;

    invoke-static {p2}, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->access$000(Lcom/coloros/systemui/blackscreen/controller/BrightnessController;)I

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController$1;->this$0:Lcom/coloros/systemui/blackscreen/controller/BrightnessController;

    invoke-static {p2, p1}, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->access$002(Lcom/coloros/systemui/blackscreen/controller/BrightnessController;I)I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController$1;->this$0:Lcom/coloros/systemui/blackscreen/controller/BrightnessController;

    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->onLight()V

    goto :goto_0

    .line 54
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController$1;->this$0:Lcom/coloros/systemui/blackscreen/controller/BrightnessController;

    invoke-virtual {p0}, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->onDark()V

    :goto_0
    return-void
.end method
