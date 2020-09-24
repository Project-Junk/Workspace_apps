.class Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ColorQSCarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/ColorQSCarrierTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo()V
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRefreshCarrierInfo(), mTelephonyCapable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    .line 104
    invoke-static {v1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->access$000(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "ColorQSCarrierTextController"

    .line 103
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->updateCarrierTextInBgThread()V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3

    const-string p1, "ColorQSCarrierTextController"

    const-string v0, "Statusbar"

    if-ltz p2, :cond_3

    .line 118
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-static {v1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->access$100(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    .line 125
    invoke-static {v2, p3}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->access$200(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v0, p1, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-static {p1, p3}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->access$200(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    move-result-object p1

    sget-object p3, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;->SimIoError:Lcom/coloros/systemui/qs/ColorQSCarrierTextController$StatusMode;

    if-ne p1, p3, :cond_1

    .line 127
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->access$300(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)[Z

    move-result-object p1

    const/4 p3, 0x1

    aput-boolean p3, p1, p2

    .line 128
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->updateCarrierTextInBgThread()V

    goto :goto_0

    .line 129
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->access$300(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)[Z

    move-result-object p1

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->access$300(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)[Z

    move-result-object p1

    const/4 p3, 0x0

    aput-boolean p3, p1, p2

    .line 131
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->updateCarrierTextInBgThread()V

    goto :goto_0

    .line 133
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->updateCarrierTextInBgThread()V

    :goto_0
    return-void

    .line 119
    :cond_3
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimStateChanged() - slotId invalid: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mTelephonyCapable: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    .line 120
    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->access$000(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;)Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-static {v0, p1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTelephonyCapable(Z)V
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTelephonyCapable() mTelephonyCapable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "ColorQSCarrierTextController"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-static {v0, p1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->access$002(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;Z)Z

    .line 113
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$1;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->updateCarrierTextInBgThread()V

    return-void
.end method
