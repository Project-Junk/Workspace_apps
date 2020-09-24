.class public Lcom/oppo/c/c/a;
.super Ljava/lang/Object;
.source "RecordHandler.java"


# static fields
.field private static final a:Ljava/lang/String; = "a"


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

.method private static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 215
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nearme.statistics.rom"

    const-string v3, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 217
    invoke-static {p0}, Lcom/oppo/c/e/b;->d(Landroid/content/Context;)I

    move-result v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    invoke-static {p0}, Lcom/oppo/c/e/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-static {p0}, Lcom/oppo/c/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appPackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-static {p0}, Lcom/oppo/c/e/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-static {p0}, Lcom/oppo/c/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssoid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11024
    invoke-static {}, Lcom/oppo/c/c/b$a;->a()Lcom/oppo/c/c/b;

    move-result-object v1

    .line 222
    invoke-virtual {v1, p0}, Lcom/oppo/c/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "statSId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static a(Lcom/oppo/c/b/c;Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.nearme.statistics.rom"

    const-string v3, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11073
    iget-object v1, p0, Lcom/oppo/c/b/c;->a:Ljava/lang/String;

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12073
    :try_start_0
    iget-object v1, p0, Lcom/oppo/c/b/c;->a:Ljava/lang/String;

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "input appId is NumberFormatException, use appId in manifest."

    .line 235
    invoke-static {v1}, Lcom/oppo/c/e/c;->c(Ljava/lang/String;)V

    .line 239
    :cond_0
    invoke-static {p1}, Lcom/oppo/c/e/b;->d(Landroid/content/Context;)I

    move-result v1

    :goto_0
    const-string v2, "appId"

    .line 242
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-static {p1}, Lcom/oppo/c/e/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-static {p1}, Lcom/oppo/c/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appPackage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-static {p1}, Lcom/oppo/c/e/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-static {p1}, Lcom/oppo/c/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssoid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13060
    iget-boolean v1, p0, Lcom/oppo/c/b/c;->e:Z

    const-string v2, "uploadNow"

    .line 248
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14044
    iget-object v1, p0, Lcom/oppo/c/b/c;->b:Ljava/lang/String;

    const-string v2, "logTag"

    .line 249
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15036
    iget-object v1, p0, Lcom/oppo/c/b/c;->c:Ljava/lang/String;

    const-string v2, "eventID"

    .line 250
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15052
    iget-object p0, p0, Lcom/oppo/c/b/c;->d:Ljava/lang/String;

    const-string v1, "logMap"

    .line 251
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16024
    invoke-static {}, Lcom/oppo/c/c/b$a;->a()Lcom/oppo/c/c/b;

    move-result-object p0

    .line 252
    invoke-virtual {p0, p1}, Lcom/oppo/c/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "statSId"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p0, :cond_0

    .line 206
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "DataSendException: context is null."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/oppo/c/b/j;)V
    .locals 10

    if-nez p0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecordHandler add Task error -- bean or context is null--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/oppo/c/b/j;->a()I

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

    .line 153
    :pswitch_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/oppo/c/b/c;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v0, p0}, Lcom/oppo/c/c/a;->a(Lcom/oppo/c/b/c;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 156
    invoke-static {p0}, Lcom/oppo/c/e/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3fc

    .line 157
    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    invoke-static {p0, p1}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void

    .line 141
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lcom/oppo/c/b/c;

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v0, p0}, Lcom/oppo/c/c/a;->a(Lcom/oppo/c/b/c;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 144
    invoke-static {p0}, Lcom/oppo/c/e/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3fb

    .line 145
    invoke-virtual {p1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    :goto_0
    invoke-static {p0, p1}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 183
    :pswitch_3
    check-cast p1, Lcom/oppo/c/b/d;

    .line 185
    invoke-static {p0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f1

    .line 186
    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "debug"

    .line 11018
    iget-boolean p1, p1, Lcom/oppo/c/b/d;->a:Z

    .line 187
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    invoke-static {p0, v0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 173
    :pswitch_4
    check-cast p1, Lcom/oppo/c/b/i;

    .line 175
    invoke-static {p0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 10021
    iget-object v1, p1, Lcom/oppo/c/b/i;->b:Ljava/lang/String;

    .line 176
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11013
    iget p1, p1, Lcom/oppo/c/b/i;->a:I

    .line 177
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3f0

    .line 178
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    invoke-static {p0, v0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 163
    :pswitch_5
    check-cast p1, Lcom/oppo/c/b/e;

    .line 165
    invoke-static {p0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 9022
    iget-object v1, p1, Lcom/oppo/c/b/e;->a:Ljava/lang/String;

    .line 166
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10014
    iget p1, p1, Lcom/oppo/c/b/e;->b:I

    .line 167
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x3ef

    .line 168
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    invoke-static {p0, v0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 133
    :pswitch_6
    move-object v0, p1

    check-cast v0, Lcom/oppo/c/b/c;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v0, p0}, Lcom/oppo/c/c/a;->a(Lcom/oppo/c/b/c;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 136
    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    invoke-static {p0, p1}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 94
    :pswitch_7
    check-cast p1, Lcom/oppo/c/b/h;

    .line 3042
    iget v0, p1, Lcom/oppo/c/b/h;->b:I

    .line 3258
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3259
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.nearme.statistics.rom"

    const-string v6, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-direct {v3, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "appId"

    .line 3260
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "appVersion"

    .line 3261
    invoke-static {p0}, Lcom/oppo/c/e/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appPackage"

    .line 3262
    invoke-static {p0}, Lcom/oppo/c/e/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "appName"

    .line 3263
    invoke-static {p0}, Lcom/oppo/c/e/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ssoid"

    .line 3264
    invoke-static {p0}, Lcom/oppo/c/e/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "statSId"

    .line 4024
    invoke-static {}, Lcom/oppo/c/c/b$a;->a()Lcom/oppo/c/c/b;

    move-result-object v3

    .line 3265
    invoke-virtual {v3, p0}, Lcom/oppo/c/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4034
    iget-object p1, p1, Lcom/oppo/c/b/h;->a:Ljava/lang/String;

    .line 96
    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    invoke-static {p0, v1}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 122
    :pswitch_8
    check-cast p1, Lcom/oppo/c/b/f;

    .line 123
    invoke-static {p0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "exception"

    .line 8018
    iget-object v2, p1, Lcom/oppo/c/b/f;->b:Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "count"

    .line 8026
    iget v2, p1, Lcom/oppo/c/b/f;->c:I

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9010
    iget-wide v1, p1, Lcom/oppo/c/b/f;->a:J

    .line 126
    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0x3ec

    .line 127
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    invoke-static {p0, v0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 77
    :pswitch_9
    check-cast p1, Lcom/oppo/c/b/a;

    .line 78
    invoke-static {p0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1028
    iget-object v1, p1, Lcom/oppo/c/b/a;->b:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eventType"

    .line 2020
    iget-object p1, p1, Lcom/oppo/c/b/a;->a:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3ea

    .line 81
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    invoke-static {p0, v0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 102
    :pswitch_a
    check-cast p1, Lcom/oppo/c/b/g;

    .line 103
    invoke-static {p0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 5025
    iget-object v1, p1, Lcom/oppo/c/b/g;->a:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "duration"

    .line 5033
    iget-wide v2, p1, Lcom/oppo/c/b/g;->b:J

    .line 105
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "activities"

    .line 5041
    iget-object p1, p1, Lcom/oppo/c/b/g;->c:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3eb

    .line 107
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-static {p0, v0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 112
    :pswitch_b
    check-cast p1, Lcom/oppo/c/b/k;

    .line 113
    invoke-static {p0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "actionAmount"

    .line 6031
    iget v2, p1, Lcom/oppo/c/b/k;->c:I

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "actionCode"

    .line 7015
    iget v2, p1, Lcom/oppo/c/b/k;->a:I

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "actionTime"

    .line 7023
    iget-object p1, p1, Lcom/oppo/c/b/k;->b:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3e9

    .line 117
    invoke-virtual {v0, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-static {p0, v0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 86
    :pswitch_c
    check-cast p1, Lcom/oppo/c/b/b;

    .line 87
    invoke-static {p0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 3016
    iget-object p1, p1, Lcom/oppo/c/b/b;->a:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    invoke-static {p0, v0}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 196
    sget-object p1, Lcom/oppo/c/c/a;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

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
