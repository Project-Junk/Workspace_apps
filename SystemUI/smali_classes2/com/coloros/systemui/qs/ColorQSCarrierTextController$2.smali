.class Lcom/coloros/systemui/qs/ColorQSCarrierTextController$2;
.super Landroid/telephony/PhoneStateListener;
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

    .line 139
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$2;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$2;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-static {v0, p1}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->access$402(Lcom/coloros/systemui/qs/ColorQSCarrierTextController;I)I

    .line 143
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$2;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    iget-object p1, p1, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz p1, :cond_0

    .line 144
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorQSCarrierTextController$2;->this$0:Lcom/coloros/systemui/qs/ColorQSCarrierTextController;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/ColorQSCarrierTextController;->updateCarrierTextInBgThread()V

    :cond_0
    return-void
.end method
