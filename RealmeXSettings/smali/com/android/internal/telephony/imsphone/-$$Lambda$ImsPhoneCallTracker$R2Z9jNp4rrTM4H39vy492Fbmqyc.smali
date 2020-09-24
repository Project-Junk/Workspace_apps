.class public final synthetic Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$R2Z9jNp4rrTM4H39vy492Fbmqyc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$R2Z9jNp4rrTM4H39vy492Fbmqyc;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/-$$Lambda$ImsPhoneCallTracker$R2Z9jNp4rrTM4H39vy492Fbmqyc;->f$0:J

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->lambda$maintainConnectTimeCache$2(JLjava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
