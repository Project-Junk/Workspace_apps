.class public Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;
.super Ljava/lang/Object;
.source "BiometricSwitchHelper.java"


# static fields
.field private static final FINGERPRINT_UNLOCK_SWITCH:Ljava/lang/String; = "coloros_fingerprint_unlock_switch"

.field private static final FINGERPRINT_UNLOCK_SWITCH_INVALID:I = -0x1

.field private static final FINGERPRINT_UNLOCK_SWITCH_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BiometricSwitchHelper"

.field private static sInstance:Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingerprintSwitchObserver:Landroid/database/ContentObserver;

.field private mFingerprintUnlockEnabled:Landroid/util/SparseBooleanArray;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->mFingerprintUnlockEnabled:Landroid/util/SparseBooleanArray;

    .line 45
    new-instance v0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper$1;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper$1;-><init>(Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->mFingerprintSwitchObserver:Landroid/database/ContentObserver;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->watchForFingerprintSwitchState()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->handleFingerprintSwitchChange()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;
    .locals 1

    .line 58
    sget-object v0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    .line 61
    :cond_0
    sget-object p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->sInstance:Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;

    return-object p0
.end method

.method private handleFingerprintSwitchChange()V
    .locals 3

    .line 82
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->mFingerprintUnlockEnabled:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->isFingerprintSwitchOn(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private isFingerprintSwitchOn(Landroid/content/Context;)Z
    .locals 3

    .line 92
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFingerprintUnlock()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    const-string v1, "coloros_fingerprint_unlock_switch"

    invoke-static {p0, v1, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 97
    :goto_0
    sget-object v0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFingerprintSwitchOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Keyguard"

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private watchForFingerprintSwitchState()V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->mContext:Landroid/content/Context;

    const-string v1, "coloros_fingerprint_unlock_switch"

    .line 73
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->mFingerprintSwitchObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 72
    invoke-static {v0, v1, v3, v2, v4}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 78
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->handleFingerprintSwitchChange()V

    return-void
.end method


# virtual methods
.method public isFingerprintUnlockEnable()Z
    .locals 1

    .line 102
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/BiometricSwitchHelper;->mFingerprintUnlockEnabled:Landroid/util/SparseBooleanArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
