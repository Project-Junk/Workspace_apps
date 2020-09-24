.class final Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;
.super Ljava/lang/Object;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "FilterAggregator"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterLock:Ljava/lang/Object;

.field private mFilterResult:I

.field private mNumPendingFilters:I

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;I)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterLock:Ljava/lang/Object;

    .line 312
    iput p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    .line 313
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mCallbacks:Ljava/util/Set;

    const/4 p1, 0x0

    .line 314
    iput p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V
    .locals 0

    .line 305
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->addToCallbacks(Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)Ljava/util/Set;
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method private addToCallbacks(Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private combine(I)V
    .locals 1

    .line 342
    iget v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    return-void
.end method


# virtual methods
.method final onFilterComplete(I)V
    .locals 6

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    .line 320
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->combine(I)V

    .line 321
    iget v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    if-nez v1, :cond_0

    .line 324
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$600(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;

    move-result-object v1

    iget v5, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mFilterResult:I

    invoke-interface {v1, v5}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;->onFilterComplete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 333
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    const-string v3, "onFilterComplete: called successfully with result = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$400(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$700(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 329
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFilterComplete: waiting for pending filters "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->mNumPendingFilters:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$400(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 338
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
