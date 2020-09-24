.class public Lcom/oppo/statistics/record/RecordHandler;
.super Ljava/lang/Object;
.source "RecordHandler.java"


# static fields
.field private static final ACTION_AMOUNT:Ljava/lang/String; = "actionAmount"

.field private static final ACTION_CODE:Ljava/lang/String; = "actionCode"

.field private static final ACTION_TIME:Ljava/lang/String; = "actionTime"

.field private static final APP_ID:Ljava/lang/String; = "appId"

.field private static final APP_NAME:Ljava/lang/String; = "appName"

.field private static final APP_PACKAGE:Ljava/lang/String; = "appPackage"

.field private static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final DATA_TYPE:Ljava/lang/String; = "dataType"

.field private static final DCS_PKG_NAME:Ljava/lang/String; = "com.nearme.statistics.rom"

.field private static final DCS_SERVICE_NAME:Ljava/lang/String; = "com.nearme.statistics.rom.service.ReceiverService"

.field private static final DEBUG:Ljava/lang/String; = "debug"

.field private static final EVENT_BODY:Ljava/lang/String; = "eventBody"

.field private static final EVENT_ID:Ljava/lang/String; = "eventID"

.field private static final EVENT_TYPE:Ljava/lang/String; = "eventType"

.field private static final EXCEPTION:Ljava/lang/String; = "exception"

.field private static final EXCEPTION_COUNT:Ljava/lang/String; = "count"

.field private static final EXCEPTION_TIME:Ljava/lang/String; = "time"

.field private static final LOGIN_TIME:Ljava/lang/String; = "loginTime"

.field private static final LOG_MAP:Ljava/lang/String; = "logMap"

.field private static final LOG_TAG:Ljava/lang/String; = "logTag"

.field private static final PAGE_VISIT_ACTIVIES:Ljava/lang/String; = "activities"

.field private static final PAGE_VISIT_DURATION:Ljava/lang/String; = "duration"

.field private static final PAGE_VISIT_TIME:Ljava/lang/String; = "time"

.field private static final SSOID:Ljava/lang/String; = "ssoid"

.field private static final TAG:Ljava/lang/String; = "RecordHandler"

.field private static final UPLOAD_MODE:Ljava/lang/String; = "uploadMode"

.field private static final UPLOAD_NOW:Ljava/lang/String; = "uploadNow"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTask(Landroid/content/Context;Lcom/oppo/statistics/data/StatisticBean;)V
    .locals 10

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 74
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/oppo/statistics/data/StatisticBean;->getDataType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3ee

    const/16 v2, 0x3e8

    const-string v3, "uploadMode"

    const-string v4, "time"

    const-string v5, "loginTime"

    const-string v6, "bean:"

    const-string v7, "eventBody"

    const-string v8, "NearMeStatistics"

    const-string v9, "dataType"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 152
    :pswitch_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/oppo/statistics/data/CommonBean;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v0, p0}, Lcom/oppo/statistics/record/RecordHandler;->getCommonStartServiceIntent(Lcom/oppo/statistics/data/CommonBean;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 155
    invoke-static {p0}, Lcom/oppo/statistics/util/VersionUtil;->isSupportPeriodData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3fc

    .line 156
    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    invoke-static {p0, p1}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void

    .line 140
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/oppo/statistics/data/CommonBean;

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {v0, p0}, Lcom/oppo/statistics/record/RecordHandler;->getCommonStartServiceIntent(Lcom/oppo/statistics/data/CommonBean;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 143
    invoke-static {p0}, Lcom/oppo/statistics/util/VersionUtil;->isSupportPeriodData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3fb

    .line 144
    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    :goto_0
    invoke-static {p0, p1}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 182
    :pswitch_3
    check-cast p1, Lcom/oppo/statistics/data/DebugBean;

    .line 184
    invoke-static {p0}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f1

    .line 185
    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "debug"

    .line 186
    invoke-virtual {p1}, Lcom/oppo/statistics/data/DebugBean;->getFlag()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    invoke-static {p0, v0}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 172
    :pswitch_4
    check-cast p1, Lcom/oppo/statistics/data/StaticEventBean;

    .line 174
    invoke-static {p0}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Lcom/oppo/statistics/data/StaticEventBean;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p1}, Lcom/oppo/statistics/data/StaticEventBean;->getUploadMode()I

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3f0

    .line 177
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    invoke-static {p0, v0}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 162
    :pswitch_5
    check-cast p1, Lcom/oppo/statistics/data/DynamicEventBean;

    .line 164
    invoke-static {p0}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/oppo/statistics/data/DynamicEventBean;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p1}, Lcom/oppo/statistics/data/DynamicEventBean;->getUploadMode()I

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3ef

    .line 167
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    invoke-static {p0, v0}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 132
    :pswitch_6
    move-object v0, p1

    check-cast v0, Lcom/oppo/statistics/data/CommonBean;

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {v0, p0}, Lcom/oppo/statistics/record/RecordHandler;->getCommonStartServiceIntent(Lcom/oppo/statistics/data/CommonBean;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-static {p0, p1}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 93
    :pswitch_7
    check-cast p1, Lcom/oppo/statistics/data/SpecialAppStartBean;

    .line 94
    invoke-virtual {p1}, Lcom/oppo/statistics/data/SpecialAppStartBean;->getAppId()I

    move-result v0

    invoke-static {v0, p0}, Lcom/oppo/statistics/record/RecordHandler;->getSpecialStartServiceIntent(ILandroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/oppo/statistics/data/SpecialAppStartBean;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-static {p0, v0}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 121
    :pswitch_8
    check-cast p1, Lcom/oppo/statistics/data/ExceptionBean;

    .line 122
    invoke-static {p0}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "exception"

    .line 123
    invoke-virtual {p1}, Lcom/oppo/statistics/data/ExceptionBean;->getException()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "count"

    .line 124
    invoke-virtual {p1}, Lcom/oppo/statistics/data/ExceptionBean;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1}, Lcom/oppo/statistics/data/ExceptionBean;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0x3ec

    .line 126
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-static {p0, v0}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 76
    :pswitch_9
    check-cast p1, Lcom/oppo/statistics/data/AppLogBean;

    .line 77
    invoke-static {p0}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/oppo/statistics/data/AppLogBean;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eventType"

    .line 79
    invoke-virtual {p1}, Lcom/oppo/statistics/data/AppLogBean;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3ea

    .line 80
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    invoke-static {p0, v0}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 101
    :pswitch_a
    check-cast p1, Lcom/oppo/statistics/data/PageVisitBean;

    .line 102
    invoke-static {p0}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/oppo/statistics/data/PageVisitBean;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "duration"

    .line 104
    invoke-virtual {p1}, Lcom/oppo/statistics/data/PageVisitBean;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "activities"

    .line 105
    invoke-virtual {p1}, Lcom/oppo/statistics/data/PageVisitBean;->getActivities()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3eb

    .line 106
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    invoke-static {p0, v0}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 111
    :pswitch_b
    check-cast p1, Lcom/oppo/statistics/data/UserActionBean;

    .line 112
    invoke-static {p0}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "actionAmount"

    .line 113
    invoke-virtual {p1}, Lcom/oppo/statistics/data/UserActionBean;->getActionAmount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "actionCode"

    .line 114
    invoke-virtual {p1}, Lcom/oppo/statistics/data/UserActionBean;->getActionCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "actionTime"

    .line 115
    invoke-virtual {p1}, Lcom/oppo/statistics/data/UserActionBean;->getActionDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3e9

    .line 116
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    invoke-static {p0, v0}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 85
    :pswitch_c
    check-cast p1, Lcom/oppo/statistics/data/AppStartBean;

    .line 86
    invoke-static {p0}, Lcom/oppo/statistics/record/RecordHandler;->getStartServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lcom/oppo/statistics/data/AppStartBean;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    invoke-static {p0, v0}, Lcom/oppo/statistics/record/RecordHandler;->startDcsService(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 195
    sget-object p1, Lcom/oppo/statistics/record/RecordHandler;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 69
    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordHandler add Task error -- bean or context is null--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oppo/statistics/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getCommonStartServiceIntent(Lcom/oppo/statistics/data/CommonBean;Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nearme.statistics.rom"

    const-string v3, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "input appId is NumberFormatException, use appId in manifest."

    .line 233
    invoke-static {v1}, Lcom/oppo/statistics/util/LogUtil;->e(Ljava/lang/String;)V

    .line 234
    invoke-static {p1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getAppCode(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {p1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getAppCode(Landroid/content/Context;)I

    move-result v1

    :goto_0
    const-string v2, "appId"

    .line 240
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    invoke-static {p1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-static {p1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appPackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-static {p1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-static {p1}, Lcom/oppo/statistics/util/AccountUtil;->getSsoId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ssoid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getUploadNow()Z

    move-result p1

    const-string v1, "uploadNow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "logTag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getEventID()Ljava/lang/String;

    move-result-object p1

    const-string v1, "eventID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0}, Lcom/oppo/statistics/data/CommonBean;->getLogMap()Ljava/lang/String;

    move-result-object p0

    const-string p1, "logMap"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getSpecialStartServiceIntent(ILandroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nearme.statistics.rom"

    const-string v3, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "appId"

    .line 257
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    invoke-static {p1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "appVersion"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-static {p1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "appPackage"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-static {p1}, Lcom/oppo/statistics/util/ApkInfoUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "appName"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-static {p1}, Lcom/oppo/statistics/util/AccountUtil;->getSsoId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ssoid"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getStartServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nearme.statistics.rom"

    const-string v3, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 216
    invoke-static {p0}, Lcom/oppo/statistics/util/ApkInfoUtil;->getAppCode(Landroid/content/Context;)I

    move-result v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    invoke-static {p0}, Lcom/oppo/statistics/util/ApkInfoUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    invoke-static {p0}, Lcom/oppo/statistics/util/ApkInfoUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appPackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-static {p0}, Lcom/oppo/statistics/util/ApkInfoUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-static {p0}, Lcom/oppo/statistics/util/AccountUtil;->getSsoId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ssoid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static startDcsService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p0, :cond_0

    .line 205
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "DataSendException: context is null."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
