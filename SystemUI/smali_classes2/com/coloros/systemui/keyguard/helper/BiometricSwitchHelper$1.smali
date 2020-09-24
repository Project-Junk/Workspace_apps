.class Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper$1;
.super Landroid/database/ContentObserver;
.source "BiometricSwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;Landroid/os/Handler;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper$1;->this$0:Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 49
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper$1;->this$0:Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->access$000(Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;)V

    return-void
.end method
