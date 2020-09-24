.class Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$1;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicyEx.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$1;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const-string p1, "Statusbar"

    const-string v0, "PhoneStatusBarPolicyEx"

    const-string v1, "onServiceConnected: "

    .line 106
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$1;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->access$002(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 108
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$1;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateBluetoothBattery(Landroid/content/Intent;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$1;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->access$002(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method
