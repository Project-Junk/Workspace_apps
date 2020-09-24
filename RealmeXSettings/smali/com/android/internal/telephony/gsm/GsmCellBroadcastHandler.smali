.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final VDBG:Z = false


# instance fields
.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 2

    const-string v0, "GsmCellBroadcastHandler"

    .line 45
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 41
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 46
    iget-object p1, p2, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;
    .locals 11

    const/4 v0, 0x0

    .line 92
    :try_start_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 109
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 111
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 112
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    .line 111
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    .line 119
    instance-of v4, v3, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v5, -0x1

    if-eqz v4, :cond_0

    .line 120
    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 121
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    .line 122
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v5

    move v4, v3

    .line 126
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v5, 0x3

    if-eq v6, v5, :cond_2

    .line 138
    new-instance v5, Landroid/telephony/SmsCbLocation;

    invoke-direct {v5, v2}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_1
    new-instance v6, Landroid/telephony/SmsCbLocation;

    invoke-direct {v6, v2, v4, v5}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    move-object v5, v6

    goto :goto_1

    .line 133
    :cond_2
    new-instance v5, Landroid/telephony/SmsCbLocation;

    invoke-direct {v5, v2, v4, v3}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 143
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v6, v8, :cond_6

    .line 146
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    invoke-direct {v9, v1, v5}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 149
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[B

    if-nez v10, :cond_3

    .line 154
    new-array v10, v6, [[B

    .line 156
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v6

    sub-int/2addr v6, v8

    aput-object p1, v10, v6

    .line 163
    array-length p1, v10

    :goto_2
    if-ge v7, p1, :cond_5

    aget-object v6, v10, v7

    if-nez v6, :cond_4

    const-string p1, "still missing pdu"

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->log(Ljava/lang/String;)V

    return-object v0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 172
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 175
    :cond_6
    new-array v10, v8, [[B

    aput-object p1, v10, v7

    .line 182
    :goto_3
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 184
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 185
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    .line 187
    invoke-virtual {v6, v2, v4, v3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_7

    .line 188
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 192
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v5, v10}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Error in decoding SMS CB pdu"

    .line 195
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1

    .line 62
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    .line 63
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    return-object v0
.end method


# virtual methods
.method public handleSmsMessage(Landroid/os/Message;)Z
    .locals 1

    .line 75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    const/4 p1, 0x1

    return p1

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public onQuitting()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 52
    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    return-void
.end method
