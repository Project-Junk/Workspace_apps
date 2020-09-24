.class public Lcom/github/javiersantos/licensing/LibraryChecker;
.super Ljava/lang/Object;
.source "LibraryChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat",
        "HardwareIds"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LICENSE_ERROR:Z = false

.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final TAG:Ljava/lang/String; = "LibraryChecker"

.field private static final TIMEOUT_MS:I = 0x2710


# instance fields
.field private final mChecksInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/github/javiersantos/licensing/LibraryValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mPendingChecks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/github/javiersantos/licensing/LibraryValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicy:Lcom/github/javiersantos/licensing/Policy;

.field private mPublicKey:Ljava/security/PublicKey;

.field private mService:Lcom/android/vending/licensing/ILicensingService;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/github/javiersantos/licensing/LibraryChecker;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/github/javiersantos/licensing/Policy;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/github/javiersantos/licensing/Policy;
    .param p3, "encodedPublicKey"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mChecksInProgress:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPendingChecks:Ljava/util/Queue;

    .line 96
    iput-object p1, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPolicy:Lcom/github/javiersantos/licensing/Policy;

    .line 98
    invoke-static {p3}, Lcom/github/javiersantos/licensing/LibraryChecker;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPublicKey:Ljava/security/PublicKey;

    .line 99
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPackageName:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/github/javiersantos/licensing/LibraryChecker;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mVersionCode:Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mHandler:Landroid/os/Handler;

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/github/javiersantos/licensing/LibraryChecker;Lcom/github/javiersantos/licensing/LibraryValidator;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/javiersantos/licensing/LibraryChecker;
    .param p1, "x1"    # Lcom/github/javiersantos/licensing/LibraryValidator;

    .line 60
    invoke-direct {p0, p1}, Lcom/github/javiersantos/licensing/LibraryChecker;->handleServiceConnectionError(Lcom/github/javiersantos/licensing/LibraryValidator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/github/javiersantos/licensing/LibraryChecker;Lcom/github/javiersantos/licensing/LibraryValidator;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/javiersantos/licensing/LibraryChecker;
    .param p1, "x1"    # Lcom/github/javiersantos/licensing/LibraryValidator;

    .line 60
    invoke-direct {p0, p1}, Lcom/github/javiersantos/licensing/LibraryChecker;->finishCheck(Lcom/github/javiersantos/licensing/LibraryValidator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/github/javiersantos/licensing/LibraryChecker;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/github/javiersantos/licensing/LibraryChecker;

    .line 60
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mChecksInProgress:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/github/javiersantos/licensing/LibraryChecker;)Ljava/security/PublicKey;
    .locals 1
    .param p0, "x0"    # Lcom/github/javiersantos/licensing/LibraryChecker;

    .line 60
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method static synthetic access$600(Lcom/github/javiersantos/licensing/LibraryChecker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/github/javiersantos/licensing/LibraryChecker;

    .line 60
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cleanupService()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    if-eqz v0, :cond_0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "LibraryChecker"

    const-string v2, "Unable to unbind from licensing service (already unbound)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    .line 297
    :cond_0
    return-void
.end method

.method private declared-synchronized finishCheck(Lcom/github/javiersantos/licensing/LibraryValidator;)V
    .locals 1
    .param p1, "validator"    # Lcom/github/javiersantos/licensing/LibraryValidator;

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryChecker;->cleanupService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local p0    # "this":Lcom/github/javiersantos/licensing/LibraryChecker;
    :cond_0
    monitor-exit p0

    return-void

    .line 250
    .end local p1    # "validator":Lcom/github/javiersantos/licensing/LibraryValidator;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private generateNonce()I
    .locals 1

    .line 314
    sget-object v0, Lcom/github/javiersantos/licensing/LibraryChecker;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method private static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .line 117
    const-string v0, "LibraryChecker"

    :try_start_0
    invoke-static {p0}, Lcom/github/javiersantos/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 118
    .local v1, "decodedKey":[B
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 120
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/github/javiersantos/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 127
    .end local v1    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v2, "Invalid key specification."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 124
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v1

    .line 125
    .local v1, "e":Lcom/github/javiersantos/licensing/util/Base64DecoderException;
    const-string v2, "Could not decode from Base64."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 121
    .end local v1    # "e":Lcom/github/javiersantos/licensing/util/Base64DecoderException;
    :catch_2
    move-exception v0

    .line 123
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 143
    nop

    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 143
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "LibraryChecker"

    const-string v2, "Package not found. could not get version code."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v1, ""

    return-object v1
.end method

.method private declared-synchronized handleServiceConnectionError(Lcom/github/javiersantos/licensing/LibraryValidator;)V
    .locals 3
    .param p1, "validator"    # Lcom/github/javiersantos/licensing/LibraryValidator;

    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPolicy:Lcom/github/javiersantos/licensing/Policy;

    const/4 v1, 0x0

    const/16 v2, 0xc48

    invoke-interface {v0, v2, v1}, Lcom/github/javiersantos/licensing/Policy;->processServerResponse(ILcom/github/javiersantos/licensing/ResponseData;)V

    .line 277
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPolicy:Lcom/github/javiersantos/licensing/Policy;

    invoke-interface {v0}, Lcom/github/javiersantos/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/github/javiersantos/licensing/LibraryValidator;->getCallback()Lcom/github/javiersantos/licensing/LibraryCheckerCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/github/javiersantos/licensing/LibraryCheckerCallback;->allow(I)V

    goto :goto_0

    .line 280
    .end local p0    # "this":Lcom/github/javiersantos/licensing/LibraryChecker;
    :cond_0
    invoke-virtual {p1}, Lcom/github/javiersantos/licensing/LibraryValidator;->getCallback()Lcom/github/javiersantos/licensing/LibraryCheckerCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/github/javiersantos/licensing/LibraryCheckerCallback;->dontAllow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    :goto_0
    monitor-exit p0

    return-void

    .line 274
    .end local p1    # "validator":Lcom/github/javiersantos/licensing/LibraryValidator;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private runChecks()V
    .locals 7

    .line 221
    const-string v0, "LibraryChecker"

    :goto_0
    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javiersantos/licensing/LibraryValidator;

    move-object v2, v1

    .local v2, "validator":Lcom/github/javiersantos/licensing/LibraryValidator;
    if-eqz v1, :cond_0

    .line 223
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling checkLicense on service for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/github/javiersantos/licensing/LibraryValidator;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    .line 225
    invoke-virtual {v2}, Lcom/github/javiersantos/licensing/LibraryValidator;->getNonce()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Lcom/github/javiersantos/licensing/LibraryValidator;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    invoke-direct {v6, p0, v2}, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;-><init>(Lcom/github/javiersantos/licensing/LibraryChecker;Lcom/github/javiersantos/licensing/LibraryValidator;)V

    .line 224
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/vending/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/android/vending/licensing/ILicenseResultListener;)V

    .line 227
    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException in checkLicense call."

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    invoke-direct {p0, v2}, Lcom/github/javiersantos/licensing/LibraryChecker;->handleServiceConnectionError(Lcom/github/javiersantos/licensing/LibraryValidator;)V

    .line 231
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkAccess(Lcom/github/javiersantos/licensing/LibraryCheckerCallback;)V
    .locals 8
    .param p1, "callback"    # Lcom/github/javiersantos/licensing/LibraryCheckerCallback;

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPolicy:Lcom/github/javiersantos/licensing/Policy;

    invoke-interface {v0}, Lcom/github/javiersantos/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "LibraryChecker"

    const-string v1, "Using cached license response"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/16 v0, 0xb8a

    invoke-interface {p1, v0}, Lcom/github/javiersantos/licensing/LibraryCheckerCallback;->allow(I)V

    goto/16 :goto_1

    .line 164
    .end local p0    # "this":Lcom/github/javiersantos/licensing/LibraryChecker;
    :cond_0
    new-instance v7, Lcom/github/javiersantos/licensing/LibraryValidator;

    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPolicy:Lcom/github/javiersantos/licensing/Policy;

    new-instance v2, Lcom/github/javiersantos/licensing/NullDeviceLimiter;

    invoke-direct {v2}, Lcom/github/javiersantos/licensing/NullDeviceLimiter;-><init>()V

    .line 165
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryChecker;->generateNonce()I

    move-result v4

    iget-object v5, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mVersionCode:Ljava/lang/String;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/github/javiersantos/licensing/LibraryValidator;-><init>(Lcom/github/javiersantos/licensing/Policy;Lcom/github/javiersantos/licensing/DeviceLimiter;Lcom/github/javiersantos/licensing/LibraryCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 168
    .local v0, "validator":Lcom/github/javiersantos/licensing/LibraryValidator;
    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    if-nez v1, :cond_2

    .line 169
    const-string v1, "LibraryChecker"

    const-string v2, "Binding to licensing service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/String;

    const-string v4, "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="

    .line 180
    invoke-static {v4}, Lcom/github/javiersantos/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    const-string v4, "Y29tLmFuZHJvaWQudmVuZGluZw=="

    .line 197
    invoke-static {v4}, Lcom/github/javiersantos/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 192
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    .line 172
    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 201
    .local v1, "bindResult":Z
    if-eqz v1, :cond_1

    .line 202
    iget-object v2, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_1
    const-string v2, "LibraryChecker"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0, v0}, Lcom/github/javiersantos/licensing/LibraryChecker;->handleServiceConnectionError(Lcom/github/javiersantos/licensing/LibraryValidator;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/github/javiersantos/licensing/util/Base64DecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 209
    .end local v1    # "bindResult":Z
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Lcom/github/javiersantos/licensing/util/Base64DecoderException;
    :try_start_2
    invoke-virtual {v1}, Lcom/github/javiersantos/licensing/util/Base64DecoderException;->printStackTrace()V

    .end local v1    # "e":Lcom/github/javiersantos/licensing/util/Base64DecoderException;
    goto :goto_0

    .line 207
    :catch_1
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Lcom/github/javiersantos/licensing/LibraryCheckerCallback;->applicationError(I)V

    .line 211
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    goto :goto_1

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 214
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryChecker;->runChecks()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    .end local v0    # "validator":Lcom/github/javiersantos/licensing/LibraryValidator;
    :goto_1
    monitor-exit p0

    return-void

    .line 159
    .end local p1    # "callback":Lcom/github/javiersantos/licensing/LibraryCheckerCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized finishAllChecks()V
    .locals 3

    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javiersantos/licensing/LibraryValidator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .local v1, "validator":Lcom/github/javiersantos/licensing/LibraryValidator;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/github/javiersantos/licensing/LibraryChecker;->finishCheck(Lcom/github/javiersantos/licensing/LibraryValidator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    goto :goto_1

    .line 239
    .end local p0    # "this":Lcom/github/javiersantos/licensing/LibraryChecker;
    :catch_0
    move-exception v2

    .line 241
    .end local v1    # "validator":Lcom/github/javiersantos/licensing/LibraryValidator;
    :goto_1
    goto :goto_0

    .line 242
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javiersantos/licensing/LibraryValidator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    .restart local v1    # "validator":Lcom/github/javiersantos/licensing/LibraryValidator;
    :try_start_3
    iget-object v2, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    goto :goto_3

    .line 245
    :catch_1
    move-exception v2

    .line 247
    .end local v1    # "validator":Lcom/github/javiersantos/licensing/LibraryValidator;
    :goto_3
    goto :goto_2

    .line 248
    :cond_1
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 306
    :try_start_0
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryChecker;->cleanupService()V

    .line 307
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 305
    .end local p0    # "this":Lcom/github/javiersantos/licensing/LibraryChecker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 258
    :try_start_0
    invoke-static {p2}, Lcom/android/vending/licensing/ILicensingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/licensing/ILicensingService;

    move-result-object v0

    iput-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mService:Lcom/android/vending/licensing/ILicensingService;

    .line 259
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryChecker;->runChecks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 257
    .end local p0    # "this":Lcom/github/javiersantos/licensing/LibraryChecker;
    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    monitor-enter p0

    .line 266
    :try_start_0
    const-string v0, "LibraryChecker"

    const-string v1, "Service unexpectedly disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker;->mService:Lcom/android/vending/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 265
    .end local p0    # "this":Lcom/github/javiersantos/licensing/LibraryChecker;
    .end local p1    # "name":Landroid/content/ComponentName;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
