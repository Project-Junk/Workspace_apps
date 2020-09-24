.class public Lcom/coloros/systemui/common/multiluser/MultiUserManager;
.super Ljava/lang/Object;
.source "MultiUserManager.java"


# static fields
.field private static final DEBUG_FOR_USER_SWITCH:Z = false

.field private static final DELAY_DEBUG:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "MultiUserManager"

.field private static volatile sInstance:Lcom/coloros/systemui/common/multiluser/MultiUserManager;


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/common/multiluser/IMultiUserListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->mListeners:Ljava/util/List;

    return-void
.end method

.method private debug()V
    .locals 4

    const-string v0, "Common"

    const-string v1, "MultiUserManager"

    const-string v2, "debug()"

    .line 74
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/systemui/common/multiluser/-$$Lambda$MultiUserManager$rcgo7xpsfKBZzILEUaKOTlYk0Ls;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/common/multiluser/-$$Lambda$MultiUserManager$rcgo7xpsfKBZzILEUaKOTlYk0Ls;-><init>(Lcom/coloros/systemui/common/multiluser/MultiUserManager;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/multiluser/MultiUserManager;
    .locals 2

    .line 43
    sget-object v0, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->sInstance:Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->sInstance:Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    invoke-direct {v1}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->sInstance:Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->sInstance:Lcom/coloros/systemui/common/multiluser/MultiUserManager;

    return-object v0
.end method

.method static synthetic lambda$dispatchSwitched$0(ILcom/coloros/systemui/common/multiluser/IMultiUserListener;)V
    .locals 0

    .line 62
    invoke-interface {p1, p0}, Lcom/coloros/systemui/common/multiluser/IMultiUserListener;->onSwitched(I)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/multiluser/IMultiUserListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    iget-object p0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchAdded()V
    .locals 1

    .line 66
    iget-object p0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->mListeners:Ljava/util/List;

    sget-object v0, Lcom/coloros/systemui/common/multiluser/-$$Lambda$P7gN5uenZoQtn_Gnb8yug3JyqUY;->INSTANCE:Lcom/coloros/systemui/common/multiluser/-$$Lambda$P7gN5uenZoQtn_Gnb8yug3JyqUY;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchPresent()V
    .locals 1

    .line 70
    iget-object p0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->mListeners:Ljava/util/List;

    sget-object v0, Lcom/coloros/systemui/common/multiluser/-$$Lambda$L_kSVHOk5JYXh1dTK63suS2Oo_I;->INSTANCE:Lcom/coloros/systemui/common/multiluser/-$$Lambda$L_kSVHOk5JYXh1dTK63suS2Oo_I;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchSwitched(I)V
    .locals 1

    .line 62
    iget-object p0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->mListeners:Ljava/util/List;

    new-instance v0, Lcom/coloros/systemui/common/multiluser/-$$Lambda$MultiUserManager$EajiGpS9xAR1x_QRYJBAK5ZuulQ;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/common/multiluser/-$$Lambda$MultiUserManager$EajiGpS9xAR1x_QRYJBAK5ZuulQ;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic lambda$debug$1$MultiUserManager()V
    .locals 1

    .line 75
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->dispatchSwitched(I)V

    return-void
.end method

.method public removeListener(Lcom/coloros/systemui/common/multiluser/IMultiUserListener;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/multiluser/IMultiUserListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    iget-object p0, p0, Lcom/coloros/systemui/common/multiluser/MultiUserManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
