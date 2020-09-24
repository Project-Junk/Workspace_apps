.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheEntry"
.end annotation


# instance fields
.field private mCachedTime:J

.field private mConnectElapsedTime:J

.field private mConnectTime:J


# direct methods
.method constructor <init>(JJJ)V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mCachedTime:J

    .line 356
    iput-wide p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mConnectTime:J

    .line 357
    iput-wide p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mConnectElapsedTime:J

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mCachedTime:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mConnectTime:J

    return-wide v0
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;)J
    .locals 2

    .line 349
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$CacheEntry;->mConnectElapsedTime:J

    return-wide v0
.end method
