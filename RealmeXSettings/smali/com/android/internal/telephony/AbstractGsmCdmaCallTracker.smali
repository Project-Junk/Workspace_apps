.class public abstract Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "AbstractGsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker$GsmCdmaCallTrackerReference;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AbstractGsmCdmaCallTracker"


# instance fields
.field protected mReference:Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker$GsmCdmaCallTrackerReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 7
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getOppoCallManager()Lcom/android/internal/telephony/OppoCallManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/OppoCallManager;->createGsmCdmaCallTrackerReference(Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker;)Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker$GsmCdmaCallTrackerReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker;->mReference:Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker$GsmCdmaCallTrackerReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker;->mReference:Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker$GsmCdmaCallTrackerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractGsmCdmaCallTracker$GsmCdmaCallTrackerReference;->dispose()V

    return-void
.end method
