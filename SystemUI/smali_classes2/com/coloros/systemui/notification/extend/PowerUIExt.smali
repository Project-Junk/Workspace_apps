.class public Lcom/coloros/systemui/notification/extend/PowerUIExt;
.super Ljava/lang/Object;
.source "PowerUIExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/notification/extend/PowerUIExt$BatteryHandler;
    }
.end annotation


# static fields
.field private static final EVENT_LOW_BATTERY_WARN_SOUND:I = 0xa

.field private static final EVENT_OTG_STATE_CHANGE:I = 0xb

.field private static final TAG:Ljava/lang/String; = "PowerUI_OTG"


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mMediaPlayerInUse:Z

.field private mOtgLastState:I

.field private mSoundName:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/coloros/systemui/notification/extend/PowerUIExt$BatteryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/notification/extend/PowerUIExt$BatteryHandler;-><init>(Lcom/coloros/systemui/notification/extend/PowerUIExt;Lcom/coloros/systemui/notification/extend/PowerUIExt$1;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mMediaPlayerInUse:Z

    .line 36
    iput v0, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mOtgLastState:I

    .line 40
    iput-object p1, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$102(Lcom/coloros/systemui/notification/extend/PowerUIExt;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mMediaPlayerInUse:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/notification/extend/PowerUIExt;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mSoundName:I

    return p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/notification/extend/PowerUIExt;)Landroid/media/SoundPool;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method


# virtual methods
.method public initOtg()V
    .locals 6

    .line 45
    invoke-static {}, Lcom/coloros/systemui/notification/helper/OtgHelper;->getOtgState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OtgCurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOtgLastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mOtgLastState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PowerUI_OTG"

    const-string v4, "SystemUi--"

    invoke-static {v4, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget v1, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mOtgLastState:I

    if-eq v0, v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "State of OTG has Changed, and otgCurrentState = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mOtgLastState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput v0, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mOtgLastState:I

    .line 51
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xb

    .line 52
    iput v2, v1, Landroid/os/Message;->what:I

    .line 53
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 54
    iget-object v0, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    iget-object p0, p0, Lcom/coloros/systemui/notification/extend/PowerUIExt;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
