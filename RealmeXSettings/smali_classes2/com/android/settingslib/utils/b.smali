.class public final Lcom/android/settingslib/utils/b;
.super Ljava/lang/Object;
.source "PowerUtil.java"


# static fields
.field private static final a:J

.field private static final b:J

.field private static final c:J

.field private static final d:J

.field private static final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/b;->a:J

    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/b;->b:J

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/settingslib/utils/b;->c:J

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/settingslib/utils/b;->d:J

    .line 43
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settingslib/utils/b;->e:J

    return-void
.end method

.method public static a(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 242
    div-long/2addr p0, v0

    return-wide p0
.end method

.method private static a(JJ)J
    .locals 4

    .line 260
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 261
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 262
    rem-long v0, p0, p2

    const-wide/16 v2, 0x2

    .line 263
    div-long v2, p2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    sub-long/2addr p0, v0

    return-wide p0

    :cond_0
    sub-long/2addr p0, v0

    add-long/2addr p0, p2

    return-wide p0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_0
    sget-wide v0, Lcom/android/settingslib/utils/b;->c:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_1

    .line 122
    sget v0, Lcom/android/settingslib/e$h;->power_suggestion_extend_battery:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 123
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/b;->b(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v1

    .line 122
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :cond_1
    sget v0, Lcom/android/settingslib/e$h;->power_remaining_only_more_than_subtext:I

    .line 3171
    sget-wide v3, Lcom/android/settingslib/utils/b;->e:J

    invoke-static {p1, p2, v3, v4}, Lcom/android/settingslib/utils/b;->a(JJ)J

    move-result-wide p1

    long-to-double p1, p1

    .line 3172
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3175
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_d

    .line 59
    sget-wide v0, Lcom/android/settingslib/utils/b;->a:J

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    .line 1131
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/android/settingslib/e$h;->power_remaining_duration_only_shutdown_imminent:I

    .line 1132
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget p1, Lcom/android/settingslib/e$h;->power_remaining_duration_shutdown_imminent:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p3, p2, v2

    .line 1133
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1
    sget-wide v3, Lcom/android/settingslib/utils/b;->b:J

    cmp-long v0, p1, v3

    const/4 v5, 0x2

    if-gtz v0, :cond_3

    long-to-double p1, v3

    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1140
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lcom/android/settingslib/e$h;->power_remaining_less_than_duration_only:I

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    .line 1141
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget p2, Lcom/android/settingslib/e$h;->power_remaining_less_than_duration:I

    new-array p4, v5, [Ljava/lang/Object;

    aput-object p1, p4, v2

    aput-object p3, p4, v1

    .line 1142
    invoke-virtual {p0, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_3
    sget-wide v3, Lcom/android/settingslib/utils/b;->d:J

    cmp-long v0, p1, v3

    if-ltz v0, :cond_5

    .line 1179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    .line 1180
    sget-object p2, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p1, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object p1

    .line 1182
    new-instance p2, Landroid/icu/util/Measure;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    sget-object v0, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {p2, p4, v0}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 1184
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_4

    sget p3, Lcom/android/settingslib/e$h;->power_remaining_only_more_than_subtext:I

    new-array p4, v1, [Ljava/lang/Object;

    new-array v0, v1, [Landroid/icu/util/Measure;

    aput-object p2, v0, v2

    .line 1186
    invoke-virtual {p1, v0}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v2

    .line 1185
    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget p4, Lcom/android/settingslib/e$h;->power_remaining_more_than_subtext:I

    new-array v0, v5, [Ljava/lang/Object;

    new-array v3, v1, [Landroid/icu/util/Measure;

    aput-object p2, v3, v2

    .line 1189
    invoke-virtual {p1, v3}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p3, v0, v1

    .line 1187
    invoke-virtual {p0, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 71
    :cond_5
    sget-wide v3, Lcom/android/settingslib/utils/b;->c:J

    cmp-long v0, p1, v3

    if-ltz v0, :cond_9

    .line 2151
    sget-wide v3, Lcom/android/settingslib/utils/b;->e:J

    invoke-static {p1, p2, v3, v4}, Lcom/android/settingslib/utils/b;->a(JJ)J

    move-result-wide p1

    long-to-double p1, p1

    .line 2152
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;D)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2156
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    if-eqz p4, :cond_6

    .line 2157
    sget p2, Lcom/android/settingslib/e$h;->power_remaining_duration_only_enhanced:I

    goto :goto_0

    :cond_6
    sget p2, Lcom/android/settingslib/e$h;->power_remaining_duration_only:I

    .line 2160
    :goto_0
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p4, :cond_8

    .line 2162
    sget p2, Lcom/android/settingslib/e$h;->power_discharging_duration_enhanced:I

    goto :goto_1

    :cond_8
    sget p2, Lcom/android/settingslib/e$h;->power_discharging_duration:I

    .line 2165
    :goto_1
    new-array p4, v5, [Ljava/lang/Object;

    aput-object p1, p4, v2

    aput-object p3, p4, v1

    invoke-virtual {p0, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2196
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/utils/b;->b(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2198
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    if-eqz p4, :cond_a

    .line 2199
    sget p2, Lcom/android/settingslib/e$h;->power_discharge_by_only_enhanced:I

    goto :goto_2

    :cond_a
    sget p2, Lcom/android/settingslib/e$h;->power_discharge_by_only:I

    .line 2202
    :goto_2
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v2

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz p4, :cond_c

    .line 2204
    sget p2, Lcom/android/settingslib/e$h;->power_discharge_by_enhanced:I

    goto :goto_3

    :cond_c
    sget p2, Lcom/android/settingslib/e$h;->power_discharge_by:I

    .line 2207
    :goto_3
    new-array p4, v5, [Ljava/lang/Object;

    aput-object p1, p4, v2

    aput-object p3, p4, v1

    invoke-virtual {p0, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static b(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 2

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    sget-wide p1, Lcom/android/settingslib/utils/b;->b:J

    .line 214
    invoke-static {v0, v1, p1, p2}, Lcom/android/settingslib/utils/b;->a(JJ)J

    move-result-wide p1

    .line 219
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 220
    invoke-static {p0}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;)Landroid/icu/text/DateFormat;

    move-result-object p0

    .line 221
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
