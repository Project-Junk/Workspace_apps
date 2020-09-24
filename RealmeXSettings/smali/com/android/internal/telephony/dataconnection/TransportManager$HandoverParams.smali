.class public final Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandoverParams"
.end annotation


# instance fields
.field public final apnType:I

.field public final targetTransport:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->apnType:I

    .line 180
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/TransportManager$HandoverParams;->targetTransport:I

    return-void
.end method
