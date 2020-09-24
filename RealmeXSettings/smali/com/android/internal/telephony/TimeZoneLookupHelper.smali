.class public Lcom/android/internal/telephony/TimeZoneLookupHelper;
.super Ljava/lang/Object;
.source "TimeZoneLookupHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;,
        Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    }
.end annotation


# static fields
.field private static final MS_PER_HOUR:I = 0x36ee80


# instance fields
.field private mLastCountryTimeZones:Llibcore/timezone/CountryTimeZones;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCountryTimeZones(Ljava/lang/String;)Llibcore/timezone/CountryTimeZones;
    .locals 1

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper;->mLastCountryTimeZones:Llibcore/timezone/CountryTimeZones;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper;->mLastCountryTimeZones:Llibcore/timezone/CountryTimeZones;

    invoke-virtual {v0, p1}, Llibcore/timezone/CountryTimeZones;->isForCountryCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object p1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper;->mLastCountryTimeZones:Llibcore/timezone/CountryTimeZones;

    monitor-exit p0

    return-object p1

    .line 291
    :cond_0
    invoke-static {}, Llibcore/timezone/TimeZoneFinder;->getInstance()Llibcore/timezone/TimeZoneFinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Llibcore/timezone/CountryTimeZones;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 293
    iput-object p1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper;->mLastCountryTimeZones:Llibcore/timezone/CountryTimeZones;

    .line 295
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 296
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static guessZoneByNitzStatic(Lcom/android/internal/telephony/NitzData;)Ljava/util/TimeZone;
    .locals 0

    .line 221
    invoke-static {p0}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitzStatic(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 222
    iget-object p0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static lookupByInstantOffsetDst(JIZ)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    .locals 9

    if-eqz p3, :cond_0

    const v0, 0x36ee80

    sub-int v0, p2, v0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 244
    :goto_0
    invoke-static {v0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 248
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    :goto_1
    if-ge v5, v2, :cond_2

    aget-object v7, v0, v5

    .line 249
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 250
    invoke-virtual {v7, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-ne v8, p2, :cond_1

    invoke-virtual {v7, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v8

    if-ne v8, p3, :cond_1

    if-nez v6, :cond_3

    move-object v6, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :cond_3
    if-nez v6, :cond_4

    return-object v4

    .line 263
    :cond_4
    new-instance p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private static lookupByNitzStatic(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    .locals 4

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v0

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->isDst()Z

    move-result v1

    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v2

    .line 230
    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByInstantOffsetDst(JIZ)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object p0

    if-nez p0, :cond_0

    xor-int/lit8 p0, v1, 0x1

    .line 233
    invoke-static {v2, v3, v0, p0}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByInstantOffsetDst(JIZ)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public countryUsesUtc(Ljava/lang/String;J)Z
    .locals 2

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 275
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->getCountryTimeZones(Ljava/lang/String;)Llibcore/timezone/CountryTimeZones;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 276
    invoke-virtual {p1, p2, p3}, Llibcore/timezone/CountryTimeZones;->hasUtcZone(J)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public lookupByCountry(Ljava/lang/String;J)Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;
    .locals 2

    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->getCountryTimeZones(Ljava/lang/String;)Llibcore/timezone/CountryTimeZones;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 200
    :cond_0
    invoke-virtual {p1}, Llibcore/timezone/CountryTimeZones;->getDefaultTimeZoneId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 204
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;

    .line 205
    invoke-virtual {p1}, Llibcore/timezone/CountryTimeZones;->getDefaultTimeZoneId()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p1, p2, p3}, Llibcore/timezone/CountryTimeZones;->isDefaultOkForCountryTimeZoneDetection(J)Z

    move-result p1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;-><init>(Ljava/lang/String;ZJ)V

    return-object v0
.end method

.method public lookupByNitz(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    .locals 0

    .line 184
    invoke-static {p1}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->lookupByNitzStatic(Lcom/android/internal/telephony/NitzData;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    move-result-object p1

    return-object p1
.end method

.method public lookupByNitzCountry(Lcom/android/internal/telephony/NitzData;Ljava/lang/String;)Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
    .locals 6

    .line 158
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/TimeZoneLookupHelper;->getCountryTimeZones(Ljava/lang/String;)Llibcore/timezone/CountryTimeZones;

    move-result-object v0

    const/4 p2, 0x0

    if-nez v0, :cond_0

    return-object p2

    .line 162
    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v5

    .line 165
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getLocalOffsetMillis()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->isDst()Z

    move-result v2

    .line 166
    invoke-virtual {p1}, Lcom/android/internal/telephony/NitzData;->getCurrentTimeInMillis()J

    move-result-wide v3

    .line 164
    invoke-virtual/range {v0 .. v5}, Llibcore/timezone/CountryTimeZones;->lookupByOffsetWithBias(IZJLandroid/icu/util/TimeZone;)Llibcore/timezone/CountryTimeZones$OffsetResult;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 171
    :cond_1
    new-instance p2, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    iget-object v0, p1, Llibcore/timezone/CountryTimeZones$OffsetResult;->mTimeZone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iget-boolean p1, p1, Llibcore/timezone/CountryTimeZones$OffsetResult;->mOneMatch:Z

    invoke-direct {p2, v0, p1}, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;-><init>(Ljava/lang/String;Z)V

    return-object p2
.end method
