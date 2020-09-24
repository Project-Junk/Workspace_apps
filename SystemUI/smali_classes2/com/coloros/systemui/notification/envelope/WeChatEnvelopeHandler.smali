.class public Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;
.super Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;
.source "WeChatEnvelopeHandler.java"


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/EnvelopeHandler;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->mCallBack:Lcom/coloros/systemui/notification/envelope/EnvelopeHandler$CallBack;

    return-void
.end method

.method private addCountToText(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 82
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    move-result-object p0

    const-string v0, "envelope_user_name_tag_last"

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getEnvelopeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    move-result-object v0

    const-string v1, "envelope_content_tag"

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getEnvelopeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, "["

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    .line 85
    invoke-static {p2}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->extractUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 86
    invoke-static {p2}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->extractContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-ne p1, v3, :cond_0

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_4

    const/4 p3, -0x1

    if-ne p0, p3, :cond_2

    goto :goto_2

    .line 99
    :cond_2
    invoke-static {p2}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->extractContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-ne p1, v3, :cond_3

    goto :goto_0

    .line 104
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    :goto_2
    return-object p2
.end method

.method public static extractContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    move-result-object v0

    const-string v1, "envelope_content_tag"

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getEnvelopeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static extractUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_4

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    move-result-object v0

    const-string v1, "envelope_user_name_tag_first"

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getEnvelopeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    move-result-object v1

    const-string v2, "envelope_user_name_tag_last"

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getEnvelopeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-ne v1, v3, :cond_1

    return-object p0

    :cond_1
    if-le v2, v1, :cond_2

    move v2, v3

    :cond_2
    if-eq v2, v3, :cond_3

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    if-eq v1, v3, :cond_4

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static isWechatEncrypted(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    move-result-object v1

    const-string v2, "envelope_content_tag"

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getEnvelopeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method protected sendEnvelopeNotification(Landroid/content/Context;IILandroid/app/Notification;ILjava/lang/String;ZZ)V
    .locals 2

    .line 46
    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    const v0, 0x7f1105de

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.substName"

    invoke-virtual {p8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification_source"

    const-string v1, "source_from_wechat"

    .line 48
    invoke-virtual {p8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getInstance()Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;

    move-result-object v0

    const-string v1, "envelope_user_field"

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeFieldList;->getEnvelopeInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p8, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p6, "envelope_related_uid"

    .line 50
    invoke-virtual {p8, p6, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    iget-object p5, p4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p6, "android.title"

    invoke-virtual {p5, p6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p5

    .line 52
    iget-object p6, p4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.text"

    invoke-virtual {p6, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p6

    invoke-interface {p6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p6

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f100003

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    invoke-static {p6}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->isWechatEncrypted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p5, 0x0

    const p0, 0x7f1108bb

    .line 57
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0, p3, p6, p7}, Lcom/coloros/systemui/notification/envelope/WeChatEnvelopeHandler;->addCountToText(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 61
    :goto_0
    new-instance p3, Landroid/app/Notification$Builder;

    const-string p6, "ENVELOPE"

    invoke-direct {p3, p1, p6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p6, 0x7f08070f

    .line 63
    invoke-virtual {p3, p6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 64
    invoke-virtual {p3, p5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 65
    invoke-virtual {p3, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    iget-object p6, p4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 66
    invoke-virtual {p3, p6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p3

    const/4 p6, 0x1

    .line 67
    invoke-virtual {p3, p6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 68
    invoke-virtual {p3, p8}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object p3

    iget-wide p7, p4, Landroid/app/Notification;->when:J

    .line 69
    invoke-virtual {p3, p7, p8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 70
    invoke-virtual {p3, p6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 71
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p3

    const/4 p4, 0x0

    .line 72
    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p3

    const-wide/32 p6, 0x5265c00

    .line 73
    invoke-virtual {p3, p6, p7}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 74
    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 75
    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    .line 76
    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Envelope--sendEnvelopeNotification: title:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",content:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Notification"

    const-string p2, "Envelope"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
