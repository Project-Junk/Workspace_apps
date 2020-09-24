.class public Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;
.super Lokhttp3/EventListener;
.source "PrintingEventListener.java"


# static fields
.field public static final FACTORY:Lokhttp3/EventListener$Factory;

.field private static final TAG:Ljava/lang/String; = "PrintingEventListener"


# instance fields
.field final callId:J

.field final callStartNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener$1;

    invoke-direct {v0}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener$1;-><init>()V

    sput-object v0, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->FACTORY:Lokhttp3/EventListener$Factory;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->callId:J

    .line 48
    iput-wide p3, p0, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->callStartNanos:J

    return-void
.end method

.method private printEvent(Ljava/lang/String;)V
    .locals 6

    .line 52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->callStartNanos:J

    sub-long/2addr v0, v2

    .line 53
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->callId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    long-to-double v0, v0

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object p1, v3, v0

    const-string p1, "%04d %.3f %s%n"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrintingEventListener"

    invoke-static {v0, p1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .locals 0

    const-string p1, "callEnd"

    .line 63
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "callFailed"

    .line 155
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 0

    const-string p1, "callStart"

    .line 58
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 0

    const-string p1, "connectEnd"

    .line 94
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0

    const-string p1, "connectFailed"

    .line 100
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    const-string p1, "connectStart"

    .line 78
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0

    const-string p1, "connectionAcquired"

    .line 105
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0

    const-string p1, "connectionReleased"

    .line 110
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const-string p1, "dnsEnd"

    .line 73
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 0

    const-string p1, "dnsStart"

    .line 68
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 0

    const-string p1, "requestBodyEnd"

    .line 130
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 0

    const-string p1, "requestBodyStart"

    .line 125
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 0

    const-string p1, "requestHeadersEnd"

    .line 120
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 0

    const-string p1, "requestHeadersStart"

    .line 115
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 0

    const-string p1, "responseBodyEnd"

    .line 150
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 0

    const-string p1, "responseBodyStart"

    .line 145
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    const-string p1, "responseHeadersEnd"

    .line 140
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 0

    const-string p1, "responseHeadersStart"

    .line 135
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 0

    const-string p1, "secureConnectEnd"

    .line 88
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 0

    const-string p1, "secureConnectStart"

    .line 83
    invoke-direct {p0, p1}, Lcom/heytap/accountsdk/net/security/utils/PrintingEventListener;->printEvent(Ljava/lang/String;)V

    return-void
.end method
