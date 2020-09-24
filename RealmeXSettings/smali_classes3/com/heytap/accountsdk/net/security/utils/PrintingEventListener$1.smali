.class final Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener$1;
.super Ljava/lang/Object;
.source "PrintingEventListener.java"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final nextCallId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener$1;->nextCallId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 6

    .line 37
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener$1;->nextCallId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 38
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "%04d %s%n"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "PrintingEventListener"

    invoke-static {v2, p1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance p1, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;-><init>(JJ)V

    return-object p1
.end method
