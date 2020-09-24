.class Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;
.super Ljava/lang/Object;
.source "OKHttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/accountsdk/net/security/OKHttpUtils;->sendSuccessResultCallback(Ljava/lang/Object;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

.field final synthetic val$callback:Lcom/heytap/accountsdk/net/security/callback/Callback;

.field final synthetic val$object:Ljava/lang/Object;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/heytap/accountsdk/net/security/OKHttpUtils;Lcom/heytap/accountsdk/net/security/callback/Callback;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;->this$0:Lcom/heytap/accountsdk/net/security/OKHttpUtils;

    iput-object p2, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;->val$callback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iput-object p3, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;->val$object:Ljava/lang/Object;

    iput-object p4, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;->val$callback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;->val$object:Ljava/lang/Object;

    iget-object v2, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/accountsdk/net/security/callback/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;->val$callback:Lcom/heytap/accountsdk/net/security/callback/Callback;

    iget-object v1, p0, Lcom/heytap/accountsdk/net/security/OKHttpUtils$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/heytap/accountsdk/net/security/callback/Callback;->onAfter(Ljava/lang/String;)V

    return-void
.end method
