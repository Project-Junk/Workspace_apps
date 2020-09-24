.class Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "ColorosPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/power/ColorosPowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionedObserver"
.end annotation


# instance fields
.field public mWarningLevel:I

.field final synthetic this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/power/ColorosPowerUI;Landroid/os/Handler;I)V
    .locals 0

    .line 1410
    iput-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    .line 1411
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1412
    iput p3, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->mWarningLevel:I

    .line 1413
    iget-object p1, p1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "device_provisioned"

    .line 1414
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    .line 1413
    invoke-virtual {p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 1419
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-static {p1}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$400(Lcom/coloros/systemui/notification/power/ColorosPowerUI;)Z

    move-result p1

    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisionedObserver onChange: isProvisioned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPlugType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v1, v1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mPlugType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWarningLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->mWarningLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBatteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v1, v1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorOs_PowerUI"

    const-string v2, "Common"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1427
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget-object p1, p1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1428
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget p1, p1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mPlugType:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget p1, p1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    iget v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->mWarningLevel:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "ProvisionedObserver onChange: to showLowBatteryWarning"

    .line 1431
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object p1, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    iget v0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->mWarningLevel:I

    const/4 v1, 0x0

    iget v2, p1, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->mBatteryLevel:I

    invoke-static {p1, v0, v1, v2}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->access$500(Lcom/coloros/systemui/notification/power/ColorosPowerUI;IZI)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1434
    iget-object p0, p0, Lcom/coloros/systemui/notification/power/ColorosPowerUI$ProvisionedObserver;->this$0:Lcom/coloros/systemui/notification/power/ColorosPowerUI;

    invoke-virtual {p0}, Lcom/coloros/systemui/notification/power/ColorosPowerUI;->playLowBatterySound()V

    :cond_2
    :goto_0
    return-void
.end method
