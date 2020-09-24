.class public Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;
.super Ljava/lang/Object;
.source "RpmbChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RpmbChannel"

.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;


# instance fields
.field private mCryptoEng:Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

.field private mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel$1;-><init>(Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;)Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->mCryptoEng:Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    return-object p1
.end method

.method private static asInterface(Landroid/os/IHwBinder;)Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.oppo.hardware.cryptoeng@1.0::ICryptoeng"

    .line 120
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 121
    instance-of v3, v2, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    if-eqz v3, :cond_1

    .line 122
    check-cast v2, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    return-object v2

    .line 124
    :cond_1
    new-instance v2, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Proxy;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 126
    :try_start_0
    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng$Proxy;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

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
    move-exception p0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asInterface RemoteException, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RpmbChannel"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private getCryptoeng()Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;
    .locals 5

    const-string v0, "RpmbChannel"

    :try_start_0
    const-string v1, "vendor.oppo.hardware.cryptoeng@1.0::ICryptoeng"

    const-string v2, "default"

    .line 98
    invoke-static {v1, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->asInterface(Landroid/os/IHwBinder;)Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v1}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v2, p0, v3, v4}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    goto :goto_0

    :cond_0
    const-string p0, "cryptoEng == null."

    .line 102
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCryptoeng(), e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string p0, "getCryptoeng = null, failed to get CryptoEngService"

    .line 111
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public static getInstance()Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;
    .locals 2

    .line 37
    sget-object v0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->sInstance:Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->sInstance:Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    invoke-direct {v1}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;-><init>()V

    sput-object v1, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->sInstance:Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->sInstance:Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;

    return-object v0
.end method


# virtual methods
.method processCmdV2([B)[B
    .locals 7

    const-string v0, "RpmbChannel"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p0, "processCmdV2(), param is empty"

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->mCryptoEng:Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    if-nez v2, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->getCryptoeng()Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->mCryptoEng:Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->mCryptoEng:Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    if-nez v2, :cond_2

    const-string p0, "processCmdV2(), mCryptoEngService = null"

    .line 59
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 64
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-byte v6, p1, v5

    .line 66
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->mCryptoEng:Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    invoke-interface {p1, v2}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;->cryptoeng_invoke_command(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCmdV2(), failed, try again, e = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :try_start_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->getCryptoeng()Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->mCryptoEng:Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    .line 75
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->mCryptoEng:Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    if-eqz v3, :cond_4

    .line 76
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->mCryptoEng:Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    invoke-interface {v3, v2}, Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;->cryptoeng_invoke_command(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 79
    :catch_1
    iput-object v1, p0, Lcom/coloros/systemui/keyguard/security/verify/RpmbChannel;->mCryptoEng:Lcom/coloros/systemui/keyguard/security/verify/ICryptoeng;

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCmdV2(), failed again, e = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_5

    .line 84
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 86
    new-array v1, p1, [B

    :goto_2
    if-ge v4, p1, :cond_5

    .line 88
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return-object v1
.end method
