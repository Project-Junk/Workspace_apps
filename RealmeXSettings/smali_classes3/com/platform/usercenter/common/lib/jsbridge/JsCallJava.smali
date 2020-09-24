.class public Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;
.super Ljava/lang/Object;
.source "JsCallJava.java"


# static fields
.field private static final JS_BRIDGE_PROTOCOL_SCHEMA:Ljava/lang/String; = "rainbow"


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mMethodName:Ljava/lang/String;

.field private mParams:Lorg/json/JSONObject;

.field private mPort:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private invokeNativeMethod(Landroid/webkit/WebView;Landroid/os/Handler;)V
    .locals 5

    .line 63
    invoke-static {}, Lcom/platform/usercenter/common/lib/jsbridge/NativeMethodInjectHelper;->getInstance()Lcom/platform/usercenter/common/lib/jsbridge/NativeMethodInjectHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mClassName:Ljava/lang/String;

    iget-object v2, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/platform/usercenter/common/lib/jsbridge/NativeMethodInjectHelper;->findMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mPort:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/platform/usercenter/common/lib/jsbridge/JsCallback;->newInstance(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/platform/usercenter/common/lib/jsbridge/JsCallback;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Method ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") in this class ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {v1, v3, v2, p1}, Lcom/platform/usercenter/common/lib/jsbridge/JsCallback;->invokeJsCallback(Lcom/platform/usercenter/common/lib/jsbridge/JsCallback;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v4, 0x4

    .line 71
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    const/4 p1, 0x1

    .line 73
    iget-object v3, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mParams:Lorg/json/JSONObject;

    aput-object v3, v4, p1

    const/4 p1, 0x2

    aput-object v1, v4, p1

    const/4 p1, 0x3

    aput-object p2, v4, p1

    .line 77
    :try_start_0
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return-void

    :catch_1
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void
.end method

.method public static newInstance()Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;
    .locals 1

    .line 28
    new-instance v0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;

    invoke-direct {v0}, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;-><init>()V

    return-object v0
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 3

    const-string v0, "rainbow"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mClassName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_1

    const-string v1, "/"

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mMethodName:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_1
    iput-object v2, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mMethodName:Ljava/lang/String;

    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mPort:Ljava/lang/String;

    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mParams:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 58
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->mParams:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public call(Landroid/webkit/WebView;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 36
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0, p3}, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->parseMessage(Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/platform/usercenter/common/lib/jsbridge/JsCallJava;->invokeNativeMethod(Landroid/webkit/WebView;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method
