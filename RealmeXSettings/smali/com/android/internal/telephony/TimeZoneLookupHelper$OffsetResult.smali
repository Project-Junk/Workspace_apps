.class public final Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;
.super Ljava/lang/Object;
.source "TimeZoneLookupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TimeZoneLookupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OffsetResult"
.end annotation


# instance fields
.field public final isOnlyMatch:Z

.field public final zoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    .line 46
    iput-boolean p2, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->isOnlyMatch:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;

    .line 60
    iget-boolean v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->isOnlyMatch:Z

    iget-boolean v2, p1, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->isOnlyMatch:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-boolean v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->isOnlyMatch:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Result{zoneId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isOnlyMatch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/TimeZoneLookupHelper$OffsetResult;->isOnlyMatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
