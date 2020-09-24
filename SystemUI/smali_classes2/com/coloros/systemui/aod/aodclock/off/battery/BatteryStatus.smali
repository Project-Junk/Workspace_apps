.class public Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;
.super Ljava/lang/Object;
.source "BatteryStatus.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCharging:Z

.field private mIsFull:Z

.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsCharging:Z

    .line 31
    iput-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsFull:Z

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mLevel:I

    .line 35
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 88
    :cond_0
    instance-of v1, p1, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 89
    :cond_1
    check-cast p1, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;

    .line 90
    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsCharging:Z

    iget-boolean v3, p1, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsCharging:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsFull:Z

    iget-boolean v3, p1, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsFull:Z

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mLevel:I

    iget p1, p1, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mLevel:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getLevel()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mLevel:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsCharging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsFull:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mLevel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isCharging()Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsCharging:Z

    return p0
.end method

.method public isFull()Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsFull:Z

    return p0
.end method

.method public isLowBattery()Z
    .locals 2

    .line 67
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mLevel:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsCharging:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setIsCharging(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsCharging:Z

    return-void
.end method

.method public setIsFull(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsFull:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mLevel:I

    return-void
.end method

.method public shouldShowChargingIcon()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsCharging:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsFull:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery Status: isCharging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFull = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mIsFull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateInfo()V
    .locals 6

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v1, v2, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const-string v2, "plugged"

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "status"

    .line 76
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v5

    .line 78
    :goto_0
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->setIsCharging(Z)V

    const/4 v2, 0x5

    if-ne v4, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v5

    .line 79
    :goto_1
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->setIsFull(Z)V

    const-string v1, "level"

    .line 80
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/off/battery/BatteryStatus;->setLevel(I)V

    :cond_2
    return-void
.end method
