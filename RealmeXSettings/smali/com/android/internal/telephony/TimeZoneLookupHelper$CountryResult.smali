.class public final Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;
.super Ljava/lang/Object;
.source "TimeZoneLookupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TimeZoneLookupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CountryResult"
.end annotation


# instance fields
.field public final allZonesHaveSameOffset:Z

.field public final whenMillis:J

.field public final zoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJ)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    .line 100
    iput-boolean p2, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    .line 101
    iput-wide p3, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->whenMillis:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 113
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;

    .line 115
    iget-boolean v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    iget-boolean v2, p1, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 118
    :cond_2
    iget-wide v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->whenMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->whenMillis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    return v0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget-boolean v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget-wide v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->whenMillis:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CountryResult{zoneId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", allZonesHaveSameOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->allZonesHaveSameOffset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", whenMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$CountryResult;->whenMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method