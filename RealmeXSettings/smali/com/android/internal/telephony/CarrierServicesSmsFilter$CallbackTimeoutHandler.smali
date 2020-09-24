.class public final Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;
.super Landroid/os/Handler;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "CallbackTimeoutHandler"
.end annotation


# static fields
.field private static final DBG:Z = true


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private handleFilterCallbacksTimeout()V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$900(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->access$1000(Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    .line 372
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    const-string v3, "handleFilterCallbacksTimeout: calling onFilterComplete"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$400(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 373
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->onFilterComplete(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CallbackTimeoutHandler handleMessage("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$400(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 361
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$800(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Landroid/util/LocalLog;

    move-result-object p1

    const-string v0, "CarrierServicesSmsFilter: onFilterComplete timeout: not called before 600000 milliseconds."

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CallbackTimeoutHandler;->handleFilterCallbacksTimeout()V

    :goto_0
    return-void
.end method
