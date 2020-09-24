.class public final synthetic Lcom/android/internal/telephony/metrics/-$$Lambda$TelephonyMetrics$tQOsX1lKb2eTuPp-1rpkeIAEOoY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/metrics/-$$Lambda$TelephonyMetrics$tQOsX1lKb2eTuPp-1rpkeIAEOoY;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/metrics/-$$Lambda$TelephonyMetrics$tQOsX1lKb2eTuPp-1rpkeIAEOoY;->f$0:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->lambda$updateActiveSubscriptionInfoList$0(ILjava/lang/Integer;)Z

    move-result p1

    return p1
.end method
