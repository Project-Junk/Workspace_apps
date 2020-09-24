.class public Lcom/oppo/camera/sticker/c/b;
.super Ljava/lang/Object;
.source "OkHttpClientHelper.java"


# static fields
.field private static volatile a:Lcom/oppo/camera/sticker/c/b;


# instance fields
.field private b:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/oppo/camera/sticker/c/b;->b:Lokhttp3/OkHttpClient;

    .line 45
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 46
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 47
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 48
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 50
    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oppo/camera/debug/PrefUtils;->getIsTestEnv(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Lcom/oppo/camera/sticker/c/c;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    new-instance v2, Lcom/oppo/camera/sticker/c/c;

    invoke-direct {v2}, Lcom/oppo/camera/sticker/c/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 52
    new-instance v1, Lcom/oppo/camera/sticker/c/b$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/sticker/c/b$1;-><init>(Lcom/oppo/camera/sticker/c/b;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 60
    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/sticker/c/b;->b:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static a()Lcom/oppo/camera/sticker/c/b;
    .locals 2

    .line 33
    sget-object v0, Lcom/oppo/camera/sticker/c/b;->a:Lcom/oppo/camera/sticker/c/b;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/oppo/camera/sticker/c/b;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/oppo/camera/sticker/c/b;->a:Lcom/oppo/camera/sticker/c/b;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/oppo/camera/sticker/c/b;

    invoke-direct {v1}, Lcom/oppo/camera/sticker/c/b;-><init>()V

    sput-object v1, Lcom/oppo/camera/sticker/c/b;->a:Lcom/oppo/camera/sticker/c/b;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/oppo/camera/sticker/c/b;->a:Lcom/oppo/camera/sticker/c/b;

    return-object v0
.end method


# virtual methods
.method public b()Lokhttp3/OkHttpClient;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/oppo/camera/sticker/c/b;->b:Lokhttp3/OkHttpClient;

    return-object v0
.end method
