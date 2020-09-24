.class final Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;
.super Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CarrierSmsFilterCallback"
.end annotation


# instance fields
.field private final mCarrierMessagingServiceManager:Landroid/telephony/CarrierMessagingServiceManager;

.field private final mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

.field private mIsOnFilterCompleteCalled:Z

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;Landroid/telephony/CarrierMessagingServiceManager;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    .line 265
    iput-object p3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mCarrierMessagingServiceManager:Landroid/telephony/CarrierMessagingServiceManager;

    const/4 p1, 0x0

    .line 266
    iput-boolean p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mIsOnFilterCompleteCalled:Z

    return-void
.end method


# virtual methods
.method public final onDownloadMmsComplete(I)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unexpected onDownloadMmsComplete call with result: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$200(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    return-void
.end method

.method public final onFilterComplete(I)V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onFilterComplete called with result: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$400(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 277
    iget-boolean v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mIsOnFilterCompleteCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mIsOnFilterCompleteCalled:Z

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mCarrierMessagingServiceManager:Landroid/telephony/CarrierMessagingServiceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$100(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierMessagingServiceManager;->disposeConnection(Landroid/content/Context;)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->mFilterAggregator:Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$FilterAggregator;->onFilterComplete(I)V

    :cond_0
    return-void
.end method

.method public final onSendMmsComplete(I[B)V
    .locals 1

    .line 296
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected onSendMmsComplete call with result: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$200(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    return-void
.end method

.method public final onSendMultipartSmsComplete(I[I)V
    .locals 1

    .line 291
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected onSendMultipartSmsComplete call with result: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$200(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    return-void
.end method

.method public final onSendSmsComplete(II)V
    .locals 1

    .line 286
    iget-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected onSendSmsComplete call with result: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$200(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    return-void
.end method
