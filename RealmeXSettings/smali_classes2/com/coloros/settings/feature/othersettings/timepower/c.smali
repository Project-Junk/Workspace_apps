.class public final Lcom/coloros/settings/feature/othersettings/timepower/c;
.super Ljava/lang/Object;
.source "TimePowerUtils.java"


# static fields
.field private static final a:[I

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    .line 85
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/feature/othersettings/timepower/c;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x40
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
    .end array-data
.end method

.method public static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static a(II)J
    .locals 3

    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 230
    sget-wide v1, Lcom/coloros/settings/feature/othersettings/timepower/c;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    .line 231
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 232
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x0

    const/16 p1, 0xd

    .line 233
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 234
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 235
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private static a(JI)J
    .locals 8

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    .line 136
    :goto_0
    sget-object v4, Lcom/coloros/settings/feature/othersettings/timepower/c;->a:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    add-int v5, v2, v3

    .line 137
    rem-int/2addr v5, v1

    aget v4, v4, v5

    if-eqz v4, :cond_0

    and-int v5, v4, p2

    if-ne v5, v4, :cond_0

    if-nez v3, :cond_1

    .line 140
    sget-wide v4, Lcom/coloros/settings/feature/othersettings/timepower/c;->b:J

    cmp-long v4, v4, p0

    if-ltz v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-long v4, v3

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr p0, v4

    .line 151
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 152
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "yyyy/MM/dd HH:mm"

    invoke-direct {v1, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 153
    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 154
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "getNextRepeatTime: nextTimeStr="

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "TimePowerUtils"

    invoke-static {v1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "getNextRepeatDay: dayInterval="

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",todayOfWeek ="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",startIndex="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",nextTime ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide p0
.end method

.method private static a(JIII)J
    .locals 1

    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x7

    .line 241
    invoke-virtual {v0, p0, p4}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    .line 242
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 243
    invoke-virtual {v0, p0, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x0

    const/16 p1, 0xd

    .line 244
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 245
    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 246
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/timepower/b;
    .locals 10

    .line 185
    new-instance v0, Lcom/coloros/settings/feature/othersettings/timepower/b;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/timepower/b;-><init>()V

    .line 186
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 187
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_3

    add-int/lit8 v4, v2, 0x9

    .line 191
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    .line 192
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x4

    .line 194
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x5

    .line 196
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x6

    .line 198
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 200
    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v7, v3, :cond_1

    .line 5038
    iput v6, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 5046
    iput v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 5062
    iput v8, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->d:I

    .line 6054
    iput v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    :cond_1
    if-nez v7, :cond_2

    .line 6070
    iput v6, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 6078
    iput v5, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 6094
    iput v8, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->h:I

    .line 7086
    iput v2, v0, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    :cond_2
    move v2, v4

    goto :goto_0

    .line 214
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getTimeConfig: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "TimePowerUtils"

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 8

    .line 340
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "set alarm manual powerType ="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimePowerUtils"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_1

    .line 345
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/timepower/b;

    move-result-object v2

    .line 346
    invoke-static {v2}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Lcom/coloros/settings/feature/othersettings/timepower/b;)[J

    move-result-object v2

    if-ne p1, v0, :cond_2

    .line 348
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.POWER_ON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    aget-wide v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 350
    aget-wide v4, v2, v0

    invoke-static {p0, v3, v4, v5, v0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Landroid/content/Intent;JI)V

    goto :goto_0

    :cond_1
    const-string v4, "No power on alarm set, so cancel the previous power on alarm"

    .line 352
    invoke-static {v1, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {p0, v3, v0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 354
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->f(Landroid/content/Context;)V

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 358
    aget-wide v0, v2, p1

    invoke-static {p0, v0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 4

    .line 389
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateTimePowerOff: nearestTime: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimePowerUtils"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.POWER_OFF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 392
    invoke-static {p0, v0, v3}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 394
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "trigger_time"

    .line 395
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 396
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 397
    invoke-static {p0, v0, p1, p2, v3}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Landroid/content/Intent;JI)V

    return-void

    :cond_0
    const-string p1, "updateTimePowerOff, will cancel alarm."

    .line 399
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {p0, v0, v3}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 6

    const-string v0, "alarm"

    .line 285
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/high16 v2, 0x8000000

    invoke-static {p0, p2, p1, v2, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    const-string v1, "TimePowerUtils"

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 294
    invoke-virtual {p1}, Landroid/app/PendingIntent;->cancel()V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "settings_last_time_power_time"

    invoke-static {v0, v5, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    .line 298
    new-instance v0, Landroid/content/Intent;

    const-string v4, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.qualcomm.qti.poweroffalarm"

    .line 299
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "type"

    .line 300
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "time"

    .line 301
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 302
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 305
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cancel Alarm power on for :"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 290
    :cond_2
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cancelAlarm fail: am==null or sender==null: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;JI)V
    .locals 5

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "alarm"

    .line 251
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 252
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/high16 v2, 0x8000000

    invoke-static {p0, p4, p1, v2, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "TimePowerUtils"

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    const/4 v4, 0x1

    if-eq p4, v4, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->o(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "setAlarm power on for mtk"

    .line 258
    invoke-static {v2, p4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p4, 0x40000000    # 2.0f

    .line 259
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v3, p1, p4, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x7

    const-wide/16 v1, 0xfa0

    add-long/2addr p2, v1

    .line 261
    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    .line 262
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->p(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "setAlarm power on for qcom"

    .line 263
    invoke-static {v2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, v3, p2, p3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p4, "settings_last_time_power_time"

    invoke-static {p1, p4, p2, p3, v3}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 268
    new-instance p1, Landroid/content/Intent;

    const-string p4, "org.codeaurora.poweroffalarm.action.SET_ALARM"

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "com.qualcomm.qti.poweroffalarm"

    .line 269
    invoke-virtual {p1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "type"

    .line 270
    invoke-virtual {p1, p4, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p4, "time"

    .line 271
    invoke-virtual {p1, p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 272
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    const-string p0, "setAlarm power off"

    .line 276
    invoke-static {v2, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, v3, p2, p3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 11

    const-class v0, Lcom/coloros/settings/feature/othersettings/timepower/c;

    monitor-enter v0

    .line 364
    :try_start_0
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;)Lcom/coloros/settings/feature/othersettings/timepower/b;

    move-result-object v1

    .line 365
    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Lcom/coloros/settings/feature/othersettings/timepower/b;)[J

    move-result-object v2

    .line 367
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.POWER_ON"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 368
    aget-wide v5, v2, v4

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    if-eqz p1, :cond_0

    .line 8042
    iget p1, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 8050
    iget v5, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 370
    invoke-static {p1, v5}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(II)J

    move-result-wide v7

    sget-wide v9, Lcom/coloros/settings/feature/othersettings/timepower/c;->b:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    cmp-long p1, v7, v9

    if-gez p1, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v6

    .line 8058
    :goto_0
    iget v5, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    if-nez v5, :cond_1

    if-eqz p1, :cond_1

    .line 9062
    iput v6, v1, Lcom/coloros/settings/feature/othersettings/timepower/b;->d:I

    .line 374
    invoke-static {p0, v1}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/timepower/b;)Z

    goto :goto_1

    .line 378
    :cond_1
    aget-wide v7, v2, v4

    invoke-static {p0, v3, v7, v8, v4}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Landroid/content/Intent;JI)V

    goto :goto_2

    .line 381
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->f(Landroid/content/Context;)V

    .line 382
    invoke-static {p0, v3, v4}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 385
    :goto_2
    aget-wide v1, v2, v6

    invoke-static {p0, v1, v2}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(JIIIIII)Z
    .locals 8

    .line 537
    invoke-static {p6}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(I)[I

    move-result-object p6

    .line 538
    invoke-static {p7}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(I)[I

    move-result-object p7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 539
    :goto_0
    array-length v3, p6

    if-ge v1, v3, :cond_3

    move v3, v2

    move v2, v0

    .line 540
    :goto_1
    array-length v4, p7

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    .line 541
    aget v3, p6, v1

    invoke-static {p0, p1, p2, p3, v3}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(JIII)J

    move-result-wide v3

    .line 542
    aget v6, p7, v2

    invoke-static {p0, p1, p4, p5, v6}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(JIII)J

    move-result-wide v6

    sub-long/2addr v3, v6

    .line 543
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v6, 0x927c0

    cmp-long v3, v3, v6

    if-gtz v3, :cond_0

    move v3, v5

    goto :goto_2

    :cond_0
    move v3, v0

    :goto_2
    if-eqz v3, :cond_1

    .line 545
    array-length v1, p6

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    move v2, v3

    add-int/2addr v1, v5

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static a(Landroid/content/Context;Lcom/coloros/settings/feature/othersettings/timepower/b;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 429
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 10042
    iget v5, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 429
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "%1$02d"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    .line 10050
    iget v6, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 430
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const-string v6, "%1$01d"

    invoke-static {v2, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/timepower/b;->a()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    invoke-static {v2, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    .line 11058
    iget v7, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 432
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v0

    const-string v7, "%1$03d"

    invoke-static {v2, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v8, v3, [Ljava/lang/Object;

    .line 11074
    iget v9, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 433
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v4, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v8, v3, [Ljava/lang/Object;

    .line 11082
    iget v9, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 434
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    invoke-static {v4, v5, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v0

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/timepower/b;->b()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v0

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 12090
    iget p1, p1, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 436
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v4, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 438
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "timepower_config"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .line 448
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 449
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 452
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isValidConfigString configStr ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",result ="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TimePowerUtils"

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static a(I)[I
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_e

    if-eq p0, v0, :cond_d

    const/4 v3, 0x4

    if-eq p0, v3, :cond_c

    const/16 v4, 0x8

    if-eq p0, v4, :cond_b

    const/16 v5, 0x10

    if-eq p0, v5, :cond_a

    const/4 v6, 0x7

    const/16 v7, 0x20

    if-eq p0, v7, :cond_9

    const/16 v8, 0x40

    if-eq p0, v8, :cond_8

    const/16 v9, 0x7f

    if-eq p0, v9, :cond_7

    .line 581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v9, p0, 0x1

    if-ne v9, v2, :cond_0

    const-string v2, "2"

    .line 583
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v2, p0, 0x2

    if-ne v2, v0, :cond_1

    const-string v0, "3"

    .line 586
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-ne v0, v3, :cond_2

    const-string v0, "4"

    .line 589
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-ne v0, v4, :cond_3

    const-string v0, "5"

    .line 592
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-ne v0, v5, :cond_4

    const-string v0, "6"

    .line 595
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v0, p0, 0x20

    if-ne v0, v7, :cond_5

    const-string v0, "7"

    .line 598
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/2addr p0, v8

    if-ne p0, v8, :cond_6

    const-string p0, "1"

    .line 601
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    new-array p0, p0, [I

    .line 604
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 605
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    :cond_7
    new-array p0, v6, [I

    fill-array-data p0, :array_0

    goto :goto_1

    .line 578
    :cond_8
    new-array p0, v2, [I

    aput v2, p0, v1

    goto :goto_1

    .line 575
    :cond_9
    new-array p0, v2, [I

    aput v6, p0, v1

    goto :goto_1

    .line 572
    :cond_a
    new-array p0, v2, [I

    const/4 v0, 0x6

    aput v0, p0, v1

    goto :goto_1

    .line 569
    :cond_b
    new-array p0, v2, [I

    const/4 v0, 0x5

    aput v0, p0, v1

    goto :goto_1

    .line 566
    :cond_c
    new-array p0, v2, [I

    aput v3, p0, v1

    goto :goto_1

    .line 563
    :cond_d
    new-array p0, v2, [I

    const/4 v0, 0x3

    aput v0, p0, v1

    goto :goto_1

    .line 560
    :cond_e
    new-array p0, v2, [I

    aput v0, p0, v1

    :cond_f
    :goto_1
    return-object p0

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private static a(Lcom/coloros/settings/feature/othersettings/timepower/b;)[J
    .locals 15

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/coloros/settings/feature/othersettings/timepower/c;->b:J

    const/4 v0, 0x2

    .line 94
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    if-nez p0, :cond_0

    return-object v1

    .line 98
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1163
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getWeekFlag,today ="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "TimePowerUtils"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    move v0, v5

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    move v0, v3

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x40

    .line 2058
    :goto_0
    :pswitch_6
    iget v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/b;->c:I

    .line 3042
    iget v6, p0, Lcom/coloros/settings/feature/othersettings/timepower/b;->a:I

    .line 3050
    iget v7, p0, Lcom/coloros/settings/feature/othersettings/timepower/b;->b:I

    .line 100
    invoke-static {v6, v7}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(II)J

    move-result-wide v6

    .line 101
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/b;->a()Z

    move-result v8

    const-wide/32 v9, 0x240c8400

    const-wide/32 v11, 0x5265c00

    if-eqz v8, :cond_5

    if-nez v2, :cond_2

    .line 103
    sget-wide v13, Lcom/coloros/settings/feature/othersettings/timepower/c;->b:J

    cmp-long v2, v13, v6

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    add-long/2addr v6, v11

    :goto_1
    aput-wide v6, v1, v3

    goto :goto_3

    :cond_2
    if-ne v2, v0, :cond_4

    .line 105
    sget-wide v13, Lcom/coloros/settings/feature/othersettings/timepower/c;->b:J

    cmp-long v2, v13, v6

    if-gez v2, :cond_3

    goto :goto_2

    :cond_3
    add-long/2addr v6, v9

    :goto_2
    aput-wide v6, v1, v3

    goto :goto_3

    .line 108
    :cond_4
    invoke-static {v6, v7, v2}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(JI)J

    move-result-wide v6

    aput-wide v6, v1, v3

    .line 3090
    :cond_5
    :goto_3
    iget v2, p0, Lcom/coloros/settings/feature/othersettings/timepower/b;->g:I

    .line 4074
    iget v6, p0, Lcom/coloros/settings/feature/othersettings/timepower/b;->e:I

    .line 4082
    iget v7, p0, Lcom/coloros/settings/feature/othersettings/timepower/b;->f:I

    .line 112
    invoke-static {v6, v7}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(II)J

    move-result-wide v6

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/timepower/b;->b()Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez v2, :cond_7

    .line 115
    sget-wide v8, Lcom/coloros/settings/feature/othersettings/timepower/c;->b:J

    cmp-long v2, v8, v6

    if-gez v2, :cond_6

    goto :goto_4

    :cond_6
    add-long/2addr v6, v11

    :goto_4
    aput-wide v6, v1, v5

    goto :goto_6

    :cond_7
    if-ne v2, v0, :cond_9

    .line 117
    sget-wide v11, Lcom/coloros/settings/feature/othersettings/timepower/c;->b:J

    cmp-long v2, v11, v6

    if-gez v2, :cond_8

    goto :goto_5

    :cond_8
    add-long/2addr v6, v9

    :goto_5
    aput-wide v6, v1, v5

    goto :goto_6

    .line 120
    :cond_9
    invoke-static {v6, v7, v2}, Lcom/coloros/settings/feature/othersettings/timepower/c;->a(JI)J

    move-result-wide v6

    aput-wide v6, v1, v5

    .line 123
    :cond_a
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "getNearestTime: data="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",weekFlag ="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",timeArray[TIMEPOWER_TYPE_ON] ="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v1, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ",timeArray[TIMEPOWER_TYPE_OFF] ="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v1, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.specialversion.exp.sellmode"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "090011127220001127"

    return-object p0

    :cond_1
    const-string p0, "070010127230000127"

    return-object p0
.end method

.method public static b(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    const/4 v2, 0x4

    if-eq p1, v2, :cond_f

    const/16 v3, 0x8

    if-eq p1, v3, :cond_e

    const/16 v4, 0x10

    if-eq p1, v4, :cond_d

    const/16 v5, 0x40

    if-eq p1, v5, :cond_c

    const/16 v6, 0x60

    if-eq p1, v6, :cond_b

    const/16 v6, 0x7f

    if-eq p1, v6, :cond_a

    const/16 v6, 0x1f

    if-eq p1, v6, :cond_9

    const/16 v6, 0x20

    if-eq p1, v6, :cond_8

    .line 496
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v8, p1, 0x1

    const-string v9, " "

    if-ne v8, v0, :cond_1

    .line 498
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1216ae

    .line 499
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-ne v0, v1, :cond_2

    .line 502
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1216b3

    .line 503
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v0, p1, 0x4

    if-ne v0, v2, :cond_3

    .line 506
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1216b4

    .line 507
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v0, p1, 0x8

    if-ne v0, v3, :cond_4

    .line 510
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1216b2

    .line 511
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v0, p1, 0x10

    if-ne v0, v4, :cond_5

    .line 514
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1216ad

    .line 515
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v0, p1, 0x20

    if-ne v0, v6, :cond_6

    .line 518
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1216b0

    .line 519
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/2addr p1, v5

    if-ne p1, v5, :cond_7

    .line 522
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f1216b1

    .line 523
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_8
    const p1, 0x7f1216ab

    .line 484
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_9
    const p1, 0x7f1216b6

    .line 493
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_a
    const p1, 0x7f1216ac

    .line 463
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_b
    const p1, 0x7f1216b5

    .line 490
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_c
    const p1, 0x7f1216b8

    .line 487
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_d
    const p1, 0x7f1216a7

    .line 481
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_e
    const p1, 0x7f1216ba

    .line 478
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_f
    const p1, 0x7f1216bf

    .line 475
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_10
    const p1, 0x7f1216bd

    .line 472
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_11
    const p1, 0x7f1216a9

    .line 469
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_12
    const p1, 0x7f1216af

    .line 466
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "keyguard"

    .line 330
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 331
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.android.settings.ShutdownWhenLocked"

    goto :goto_0

    :cond_0
    const-string p0, "com.android.settings.Shutdown"

    .line 334
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 335
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 406
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 408
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "timepower_config"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 412
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/timepower/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f1216c3

    .line 532
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/bl;->a(Landroid/content/Context;I)V

    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 9

    const-string v0, "Error occur, e = "

    const-string v1, "TimePowerUtils"

    .line 310
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->o(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "alarm"

    .line 311
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 313
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "cancelPoweroffAlarm"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 314
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v8

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception p0

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception p0

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
