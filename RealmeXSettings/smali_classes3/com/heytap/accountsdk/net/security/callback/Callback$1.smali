.class final Lcom/heytap/accountsdk/net/security/callback/Callback$1;
.super Lcom/heytap/accountsdk/net/security/callback/Callback;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/accountsdk/net/security/callback/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/heytap/accountsdk/net/security/callback/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final parseNetworkResponse(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
