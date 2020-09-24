.class public Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;
.super Ljava/lang/Object;
.source "DailyStatisticProxyManager.java"


# static fields
.field private static final SP_KEY_LAST_TIME:Ljava/lang/String; = "last_time"

.field private static final SP_NAME:Ljava/lang/String; = "DAILY_STATISTIC_RECORD"

.field private static volatile sInstance:Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;


# instance fields
.field private final mCurrentTime:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coloros/systemui/common/statistic/AbsDailyStatisticProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/coloros/systemui/common/statistic/DailyStatisticReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->mProxies:Ljava/util/Set;

    .line 38
    sget-object v0, Lcom/coloros/systemui/common/statistic/-$$Lambda$b09sxnvVpZ_rSkkP5CtYlkKJVTM;->INSTANCE:Lcom/coloros/systemui/common/statistic/-$$Lambda$b09sxnvVpZ_rSkkP5CtYlkKJVTM;

    iput-object v0, p0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->mCurrentTime:Ljava/util/function/Supplier;

    .line 39
    new-instance v0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager$1;-><init>(Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->mReceiver:Lcom/coloros/systemui/common/statistic/DailyStatisticReceiver;

    .line 51
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/util/AodDailyStatisticProxy;

    invoke-direct {v0}, Lcom/coloros/systemui/aod/aodclock/util/AodDailyStatisticProxy;-><init>()V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->addProxy(Lcom/coloros/systemui/common/statistic/AbsDailyStatisticProxy;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->checkDateForStatistic(Landroid/content/Context;)V

    return-void
.end method

.method private addProxy(Lcom/coloros/systemui/common/statistic/AbsDailyStatisticProxy;)V
    .locals 0
    .param p1    # Lcom/coloros/systemui/common/statistic/AbsDailyStatisticProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    iget-object p0, p0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->mProxies:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkDateForStatistic(Landroid/content/Context;)V
    .locals 9

    const-string v0, "DAILY_STATISTIC_RECORD"

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_time"

    const-wide/16 v2, 0x0

    .line 78
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 79
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 80
    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v5, 0x6

    .line 82
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 84
    iget-object v6, p0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->mCurrentTime:Ljava/util/function/Supplier;

    invoke-interface {v6}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 86
    invoke-virtual {v8, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 87
    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 88
    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-gt v2, v3, :cond_0

    if-ne v2, v3, :cond_1

    if-le v5, v4, :cond_1

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->onStatistic(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;
    .locals 2

    .line 57
    sget-object v0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->sInstance:Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;

    if-nez v0, :cond_1

    .line 58
    const-class v0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->sInstance:Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;

    invoke-direct {v1}, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->sInstance:Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 64
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->sInstance:Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;

    return-object v0
.end method

.method static synthetic lambda$onStatistic$0(Landroid/content/Context;Lcom/coloros/systemui/common/statistic/AbsDailyStatisticProxy;)V
    .locals 0

    .line 98
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/statistic/AbsDailyStatisticProxy;->onStatistic(Landroid/content/Context;)V

    return-void
.end method

.method private onStatistic(Landroid/content/Context;)V
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->mProxies:Ljava/util/Set;

    new-instance v0, Lcom/coloros/systemui/common/statistic/-$$Lambda$DailyStatisticProxyManager$fBqE987afZQaRz-TfAV3RsGSUmk;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/common/statistic/-$$Lambda$DailyStatisticProxyManager$fBqE987afZQaRz-TfAV3RsGSUmk;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->mReceiver:Lcom/coloros/systemui/common/statistic/DailyStatisticReceiver;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/common/statistic/DailyStatisticReceiver;->register(Landroid/content/Context;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/statistic/DailyStatisticProxyManager;->checkDateForStatistic(Landroid/content/Context;)V

    return-void
.end method
