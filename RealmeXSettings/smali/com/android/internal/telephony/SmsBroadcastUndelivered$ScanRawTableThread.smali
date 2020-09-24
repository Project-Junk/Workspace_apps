.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;
.super Ljava/lang/Thread;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanRawTableThread"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {v1}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->access$100(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->access$200(Lcom/android/internal/telephony/SmsBroadcastUndelivered;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v2

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    iget-object v6, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->access$300(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 104
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;J)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->cancelNewMessageNotification(Landroid/content/Context;)V

    return-void
.end method
