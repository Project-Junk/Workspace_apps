.class Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;
.super Ljava/lang/Object;
.source "ColorQSCarrierText.java"

# interfaces
.implements Lcom/coloros/systemui/qs/ColorQSCarrierTextController$CarrierTextCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateCarrierInfo(Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;)V
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    iget-boolean v1, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->anySimReady:Z

    invoke-static {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$002(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Z)Z

    .line 61
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    iget-boolean v1, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->airplaneMode:Z

    invoke-static {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$102(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Z)Z

    .line 62
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    iget-object v1, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->dataUsage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$202(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    invoke-static {v0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$300(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, " mLastText: "

    const-string v3, "ColorQSCarrierText"

    const-string v4, "Statusbar"

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->airplaneMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->anySimReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->dataUsage:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    invoke-static {v0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$400(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v5, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->dataUsage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCarrierInfo dataUsage: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->dataUsage:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    .line 67
    invoke-static {v2}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$400(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    iget-object v2, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->dataUsage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->getCurrentUserId()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->setClickable(Z)V

    .line 70
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    iget-object p1, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->dataUsage:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$402(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    goto :goto_1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    invoke-static {v0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$400(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v5, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCarrierInfo carrierText: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    .line 75
    invoke-static {v2}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$400(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v4, v3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    iget-object v2, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->setClickable(Z)V

    .line 78
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$1;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    iget-object v0, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$ColorCarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$402(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    :cond_3
    :goto_1
    return-void
.end method
