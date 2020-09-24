.class final Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;
.super Landroid/telephony/CarrierMessagingServiceManager;
.source "CarrierServicesSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServicesSmsFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CarrierSmsFilter"
.end annotation


# instance fields
.field private final mDestPort:I

.field private final mPdus:[[B

.field private volatile mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

.field private final mSmsFormat:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServicesSmsFilter;[[BILjava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-direct {p0}, Landroid/telephony/CarrierMessagingServiceManager;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPdus:[[B

    .line 216
    iput p3, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mDestPort:I

    .line 217
    iput-object p4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final filterSms(Ljava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;)V
    .locals 1

    .line 225
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$100(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    const-string v0, "bindService() for carrier messaging service failed"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$200(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 228
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->onFilterComplete(I)V

    return-void

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    const-string p2, "bindService() for carrier messaging service succeeded"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$300(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 8

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    const-string v1, "onServiceReady: calling filterSms"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$400(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 242
    new-instance v3, Landroid/service/carrier/MessagePdu;

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mPdus:[[B

    .line 243
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/service/carrier/MessagePdu;-><init>(Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFormat:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mDestPort:I

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    .line 244
    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$500(Lcom/android/internal/telephony/CarrierServicesSmsFilter;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    move-object v2, p1

    .line 242
    invoke-interface/range {v2 .. v7}, Landroid/service/carrier/ICarrierMessagingService;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->this$0:Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Exception filtering the SMS: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->access$200(Lcom/android/internal/telephony/CarrierServicesSmsFilter;Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilter;->mSmsFilterCallback:Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierSmsFilterCallback;->onFilterComplete(I)V

    return-void
.end method
