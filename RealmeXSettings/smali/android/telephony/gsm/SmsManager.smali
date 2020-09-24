.class public final Landroid/telephony/gsm/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_ON_SIM_FREE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_ON_SIM_READ:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_ON_SIM_SENT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_ON_SIM_UNREAD:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_ON_SIM_UNSENT:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sInstance:Landroid/telephony/gsm/SmsManager;


# instance fields
.field private mSmsMgrProxy:Landroid/telephony/SmsManager;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    return-void
.end method

.method public static final getDefault()Landroid/telephony/gsm/SmsManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    sget-object v0, Landroid/telephony/gsm/SmsManager;->sInstance:Landroid/telephony/gsm/SmsManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/telephony/gsm/SmsManager;

    invoke-direct {v0}, Landroid/telephony/gsm/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/gsm/SmsManager;->sInstance:Landroid/telephony/gsm/SmsManager;

    .line 43
    :cond_0
    sget-object v0, Landroid/telephony/gsm/SmsManager;->sInstance:Landroid/telephony/gsm/SmsManager;

    return-object v0
.end method


# virtual methods
.method public final copyMessageToSim([B[BI)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x52

    .line 184
    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 185
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result p1

    return p1
.end method

.method public final deleteMessageFromSim(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x53

    .line 198
    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 199
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z

    move-result p1

    return p1
.end method

.method public final divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final getAllMessagesFromSim()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x55

    .line 228
    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 229
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x49

    .line 166
    invoke-static {v0, p1}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 167
    iget-object v1, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x4d

    .line 132
    invoke-static {v0, p1}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 133
    iget-object v1, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x4b

    .line 79
    invoke-static {v0, p1}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    .line 80
    iget-object v1, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final updateMessageOnSim(II[B)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x54

    .line 216
    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 217
    iget-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    move-result p1

    return p1
.end method
