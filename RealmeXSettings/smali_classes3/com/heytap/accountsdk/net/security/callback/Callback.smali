.class public abstract Lcom/heytap/accountsdk/net/security/callback/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation build Lcom/platform/usercenter/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static CALLBACK_DEFAULT:Lcom/heytap/accountsdk/net/security/callback/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/heytap/accountsdk/net/security/callback/Callback$1;

    invoke-direct {v0}, Lcom/heytap/accountsdk/net/security/callback/Callback$1;-><init>()V

    sput-object v0, Lcom/heytap/accountsdk/net/security/callback/Callback;->CALLBACK_DEFAULT:Lcom/heytap/accountsdk/net/security/callback/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inProgress(FJLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAfter(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onBefore(Lokhttp3/Request;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract onError(Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;)V
.end method

.method public abstract onResponse(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract parseNetworkResponse(Lokhttp3/Response;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public validateReponse(Lokhttp3/Response;Ljava/lang/String;)Z
    .locals 0

    .line 52
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    return p1
.end method
