.class public Lcom/coloros/settings/privacy/a/h;
.super Ljava/lang/Object;
.source "RpmbChannel.java"


# static fields
.field private static volatile a:Lcom/coloros/settings/privacy/a/h;


# instance fields
.field private b:Lcom/coloros/settings/privacy/a/b;

.field private c:Landroid/os/IHwBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/coloros/settings/privacy/a/h$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/a/h$1;-><init>(Lcom/coloros/settings/privacy/a/h;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/a/h;->c:Landroid/os/IHwBinder$DeathRecipient;

    return-void
.end method

.method private static a(Landroid/os/IHwBinder;)Lcom/coloros/settings/privacy/a/b;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.oppo.hardware.cryptoeng@1.0::ICryptoeng"

    .line 118
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 119
    instance-of v3, v2, Lcom/coloros/settings/privacy/a/b;

    if-eqz v3, :cond_1

    .line 120
    check-cast v2, Lcom/coloros/settings/privacy/a/b;

    return-object v2

    .line 122
    :cond_1
    new-instance v2, Lcom/coloros/settings/privacy/a/b$a;

    invoke-direct {v2, p0}, Lcom/coloros/settings/privacy/a/b$a;-><init>(Landroid/os/IHwBinder;)V

    .line 124
    :try_start_0
    invoke-virtual {v2}, Lcom/coloros/settings/privacy/a/b$a;->a()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 125
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 127
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    const-string p0, "RpmbChannel"

    const-string v1, "asInterface RemoteException"

    .line 132
    invoke-static {p0, v1}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/a/h;)Lcom/coloros/settings/privacy/a/b;
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/coloros/settings/privacy/a/h;->b:Lcom/coloros/settings/privacy/a/b;

    return-object v0
.end method

.method public static a()Lcom/coloros/settings/privacy/a/h;
    .locals 2

    .line 39
    sget-object v0, Lcom/coloros/settings/privacy/a/h;->a:Lcom/coloros/settings/privacy/a/h;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/coloros/settings/privacy/a/h;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/coloros/settings/privacy/a/h;->a:Lcom/coloros/settings/privacy/a/h;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/coloros/settings/privacy/a/h;

    invoke-direct {v1}, Lcom/coloros/settings/privacy/a/h;-><init>()V

    sput-object v1, Lcom/coloros/settings/privacy/a/h;->a:Lcom/coloros/settings/privacy/a/h;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/settings/privacy/a/h;->a:Lcom/coloros/settings/privacy/a/h;

    return-object v0
.end method

.method private b()Lcom/coloros/settings/privacy/a/b;
    .locals 6

    const-string v0, "RpmbChannel"

    :try_start_0
    const-string v1, "vendor.oppo.hardware.cryptoeng@1.0::ICryptoeng"

    const-string v2, "default"

    .line 100
    invoke-static {v1, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/privacy/a/h;->a(Landroid/os/IHwBinder;)Lcom/coloros/settings/privacy/a/b;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Lcom/coloros/settings/privacy/a/b;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/privacy/a/h;->c:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    const-string v2, "getCryptoeng = null, failed to get CryptoEngService"

    .line 108
    invoke-static {v0, v2}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a([B)[B
    .locals 6

    const-string v0, "RpmbChannel"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "processCmdV2: param is empty"

    .line 54
    invoke-static {v0, p1}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/privacy/a/h;->b:Lcom/coloros/settings/privacy/a/b;

    if-nez v2, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/coloros/settings/privacy/a/h;->b()Lcom/coloros/settings/privacy/a/b;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/privacy/a/h;->b:Lcom/coloros/settings/privacy/a/b;

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/coloros/settings/privacy/a/h;->b:Lcom/coloros/settings/privacy/a/b;

    if-nez v2, :cond_2

    const-string p1, "processCmdV2: mCryptoEngService = null"

    .line 61
    invoke-static {v0, p1}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 66
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 67
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_3

    .line 68
    aget-byte v5, p1, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/a/h;->b:Lcom/coloros/settings/privacy/a/b;

    invoke-interface {p1, v2}, Lcom/coloros/settings/privacy/a/b;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 74
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "processCmdV2 failed, try again, e = "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/coloros/settings/privacy/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :try_start_1
    invoke-direct {p0}, Lcom/coloros/settings/privacy/a/h;->b()Lcom/coloros/settings/privacy/a/b;

    move-result-object v4

    iput-object v4, p0, Lcom/coloros/settings/privacy/a/h;->b:Lcom/coloros/settings/privacy/a/b;

    .line 77
    iget-object v4, p0, Lcom/coloros/settings/privacy/a/h;->b:Lcom/coloros/settings/privacy/a/b;

    if-eqz v4, :cond_4

    .line 78
    iget-object v4, p0, Lcom/coloros/settings/privacy/a/h;->b:Lcom/coloros/settings/privacy/a/b;

    invoke-interface {v4, v2}, Lcom/coloros/settings/privacy/a/b;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 81
    :catch_1
    iput-object v1, p0, Lcom/coloros/settings/privacy/a/h;->b:Lcom/coloros/settings/privacy/a/b;

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "processCmdV2 failed again, e = "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/privacy/a/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_5

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 88
    new-array v1, v0, [B

    :goto_2
    if-ge v3, v0, :cond_5

    .line 90
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object v1
.end method
