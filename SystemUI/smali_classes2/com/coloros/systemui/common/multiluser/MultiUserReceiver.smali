.class public Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "MultiUserReceiver.java"


# static fields
.field private static volatile sInstance:Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;


# instance fields
.field private mCurrentUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    .line 34
    new-instance v0, Lcom/coloros/systemui/common/multiluser/-$$Lambda$MultiUserReceiver$edaEhs_auNIgU0-nR8XoHSlxpW4;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/common/multiluser/-$$Lambda$MultiUserReceiver$edaEhs_auNIgU0-nR8XoHSlxpW4;-><init>(Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;
    .locals 2

    .line 38
    sget-object v0, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->sInstance:Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->sInstance:Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;

    invoke-direct {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->sInstance:Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->sInstance:Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;

    return-object v0
.end method

.method private handleReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Common"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0x311a1d6c

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v3, :cond_3

    const v3, 0x392cb822

    if-eq v1, v3, :cond_2

    const v3, 0x42dd01f1

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v6

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v5

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_1

    .line 77
    :cond_5
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->dispatchPresent()V

    goto :goto_1

    .line 74
    :cond_6
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->dispatchAdded()V

    goto :goto_1

    :cond_7
    const-string p1, "android.intent.extra.user_handle"

    .line 69
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->mCurrentUserId:I

    .line 70
    iget-object p1, p0, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentUserId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->mCurrentUserId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    move-result-object p1

    iget p0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->dispatchSwitched(I)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$edaEhs_auNIgU0-nR8XoHSlxpW4(Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->handleReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected afterRegister(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->afterRegister(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->mCurrentUserId:I

    return-void
.end method

.method protected getActions()[Ljava/lang/String;
    .locals 2

    const-string p0, "android.intent.action.USER_SWITCHED"

    const-string v0, "android.intent.action.USER_ADDED"

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 50
    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUserId()I
    .locals 0

    .line 85
    iget p0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserReceiver;->mCurrentUserId:I

    return p0
.end method
