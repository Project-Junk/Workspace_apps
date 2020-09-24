.class public Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;
.super Ljava/lang/Object;
.source "BatteryControllerHelperImpl.java"

# interfaces
.implements Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;


# static fields
.field private static final ACTION_ADDITIONAL_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

.field private static final ACTION_EXTRA_CHARGE_TECHNOLOGY:Ljava/lang/String; = "chargertechnology"

.field private static final ACTION_EXTRA_FAST_CHARGER:Ljava/lang/String; = "chargefastcharger"

.field private static final ACTION_EXTRA_NOTIFY_CODE:Ljava/lang/String; = "notifycode"

.field private static NOTIFY_HIGHTEMP_BAT_FULL:I = 0x400

.field private static final TAG:Ljava/lang/String; = "BatteryControllerHelperImpl"

.field private static volatile sInstance:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;


# instance fields
.field private mChargerTechnology:I

.field private mFastCharging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;
    .locals 2

    .line 41
    sget-object v0, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->sInstance:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->sInstance:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;

    invoke-direct {v1}, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;-><init>()V

    sput-object v1, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->sInstance:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->sInstance:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    return-object v0
.end method

.method private static resetInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    sput-object v0, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->sInstance:Lcom/coloros/systemui/statusbar/policy/helper/IBatteryControllerHelper;

    return-void
.end method


# virtual methods
.method public addBroadcastAction(Landroid/content/IntentFilter;)V
    .locals 0

    const-string p0, "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

    .line 76
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public getChargerTechnology()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->mChargerTechnology:I

    return p0
.end method

.method public getFastChargeState()Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->mFastCharging:Z

    return p0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 2

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "chargefastcharger"

    .line 83
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->mFastCharging:Z

    const-string v1, "chargertechnology"

    .line 84
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->mChargerTechnology:I

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBatteryFastCharging = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->mFastCharging:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,mChargerTechnology = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->mChargerTechnology:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string v0, "BatteryControllerHelperImpl"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isCharging(Landroid/content/Intent;)Z
    .locals 6

    const/4 p0, 0x0

    const-string v0, "plugged"

    .line 63
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    const-string v2, "status"

    .line 64
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "notifycode"

    .line 65
    invoke-virtual {p1, v3, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pluggedIn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", notifyCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Statusbar"

    const-string v5, "BatteryControllerHelperImpl"

    invoke-static {v4, v5, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x4

    if-ne v2, v0, :cond_2

    .line 69
    sget v0, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->NOTIFY_HIGHTEMP_BAT_FULL:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    :cond_1
    move p0, v1

    :cond_2
    return p0
.end method

.method public onDestroy()V
    .locals 0

    .line 97
    invoke-static {}, Lcom/coloros/systemui/statusbar/helper/BatteryControllerHelperImpl;->resetInstance()V

    return-void
.end method
