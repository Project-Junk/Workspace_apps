.class Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;
.super Ljava/lang/Object;
.source "OKHttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accountsdk/net/security/OKHttpUtils;->sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

.field final synthetic val$call:Lokhttp3/Call;

.field final synthetic val$callback:Lcom/heytap/accountsdk/net/security/callback/Callback;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heytap/accountsdk/net/security/OKHttpUtils;Lcom/heytap/accountsdk/net/security/callback/Callback;Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;->this$0:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    iput-object p2, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;->val$callback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iput-object p3, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;->val$call:Lokhttp3/Call;

    iput-object p4, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;->val$e:Ljava/lang/Exception;

    iput-object p5, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;->val$callback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;->val$call:Lokhttp3/Call;

    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;->val$e:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/heytap/accountsdk/net/security/callback/Callback;->onError(Lokhttp3/Call;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;->val$callback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$2;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/callback/Callback;->onAfter(Ljava/lang/String;)V

    return-void
.end method
