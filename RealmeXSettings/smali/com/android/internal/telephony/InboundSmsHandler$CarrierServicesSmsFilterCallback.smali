.class final Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CarrierServicesSmsFilterCallback"
.end annotation


# instance fields
.field private final mDestPort:I

.field private final mPdus:[[B

.field private final mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

.field private final mSmsFormat:Ljava/lang/String;

.field private final mUserUnlocked:Z

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V
    .locals 0

    .line 1513
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1514
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    .line 1515
    iput p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    .line 1516
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsFormat:Ljava/lang/String;

    .line 1517
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .line 1518
    iput-boolean p6, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    return-void
.end method


# virtual methods
.method public final onFilterComplete(I)V
    .locals 5

    .line 1523
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onFilterComplete: result is "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1800(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    .line 1525
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsFormat:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1526
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 1525
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1527
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v0, "Visual voicemail SMS dropped"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1528
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1900(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void

    .line 1532
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    if-eqz v0, :cond_1

    .line 1533
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsFormat:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->access$2000(Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void

    .line 1539
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$2100(Lcom/android/internal/telephony/InboundSmsHandler;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1540
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$2200(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 1542
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    return-void

    .line 1546
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->access$1900(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void
.end method
