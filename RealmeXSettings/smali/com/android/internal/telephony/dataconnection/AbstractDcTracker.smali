.class public abstract Lcom/android/internal/telephony/dataconnection/AbstractDcTracker;
.super Landroid/os/Handler;
.source "AbstractDcTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/AbstractDcTracker$DcTrackerReference;
    }
.end annotation


# instance fields
.field mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTracker$DcTrackerReference;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 10
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getOppoDataManager()Lcom/android/internal/telephony/OppoDataManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/OppoDataManager;->createOppoDcTrackerReference(Lcom/android/internal/telephony/dataconnection/AbstractDcTracker;)Lcom/android/internal/telephony/dataconnection/AbstractDcTracker$DcTrackerReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTracker;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTracker$DcTrackerReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTracker;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTracker$DcTrackerReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTracker$DcTrackerReference;->dispose()V

    return-void
.end method
