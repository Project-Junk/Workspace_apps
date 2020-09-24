.class public Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;
.super Ljava/lang/Object;
.source "OnScreenFingerprintBaseControl.java"


# static fields
.field private static final KEY_DISABLE_FRONT_FINGER_SOUND:Ljava/lang/String; = "disable_front_finger_sound"

.field private static final KEY_ONSCREEN_FINGERPRINT_ANIM_STYLE:Ljava/lang/String; = "optical_fp_anim_style"

.field private static final KEY_SHOW_FINGERPRINT_IN_SCREEN_OFF:Ljava/lang/String; = "show_fingerprint_when_screen_off"

.field protected static final MANUFACTURER_CODE_GOODIX:Ljava/lang/String; = "G_"

.field protected static final MANUFACTURER_CODE_SILEAD:Ljava/lang/String; = "S_"

.field public static final MANUFACTURER_GOODIX:I = 0x1

.field public static final MANUFACTURER_SILEAD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OnScreenFingerprintBaseControl"

.field public static final VALUE_ANIM_PREFIX:Ljava/lang/String; = "anim_"

.field protected static sHandler:Landroid/os/Handler;

.field protected static sWorkerHandler:Landroid/os/Handler;

.field protected static sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAnimSwitchObserver:Landroid/database/ContentObserver;

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mContext:Landroid/content/Context;

.field private mFPSoundDisableObserver:Landroid/database/ContentObserver;

.field protected mFingprintHardwareModuleID:I

.field protected mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

.field protected mShowInScreenOff:Z

.field private mShowInScreenOffObserver:Landroid/database/ContentObserver;

.field private mSkipUnlockSound:Z

.field protected mSoundEnable:Z

.field protected mSoundPool:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OnScreenFingerprint WorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->sWorkerThread:Landroid/os/HandlerThread;

    .line 45
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->sWorkerHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mFingprintHardwareModuleID:I

    .line 64
    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$1;

    sget-object v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->sWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$1;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mShowInScreenOffObserver:Landroid/database/ContentObserver;

    .line 70
    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$2;

    sget-object v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->sWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$2;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mAnimSwitchObserver:Landroid/database/ContentObserver;

    .line 76
    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$3;

    sget-object v2, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->sWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$3;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mFPSoundDisableObserver:Landroid/database/ContentObserver;

    .line 84
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mContext:Landroid/content/Context;

    .line 85
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mSoundPool:Landroid/media/SoundPool;

    .line 87
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportOnScreenFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->handleShowInScreenOffSwitchChange()V

    .line 89
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_fingerprint_when_screen_off"

    .line 90
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mShowInScreenOffObserver:Landroid/database/ContentObserver;

    .line 89
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->handleOSFingerprintAnimSwitchChange()V

    .line 93
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "optical_fp_anim_style"

    .line 94
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mAnimSwitchObserver:Landroid/database/ContentObserver;

    .line 93
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->handleOSFPSoundDisbleSwitchChange()V

    .line 96
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "disable_front_finger_sound"

    .line 97
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mFPSoundDisableObserver:Landroid/database/ContentObserver;

    .line 96
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mOnFingerprintOpticalAnimCtrl:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintOpticalAnimCtrl;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->handleShowInScreenOffSwitchChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->handleOSFingerprintAnimSwitchChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->handleOSFPSoundDisbleSwitchChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;)Landroid/media/AudioManager;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method protected static execInMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 133
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 135
    :cond_0
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private handleOSFPSoundDisbleSwitchChange()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "disable_front_finger_sound"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 119
    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mSoundEnable:Z

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FPSoundEnableChange, disableVal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSoundEnable="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mSoundEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Keyguard"

    const-string v1, "OnScreenFingerprintBaseControl"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleOSFingerprintAnimSwitchChange()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "optical_fp_anim_style"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->onOSFingerprintAnimSwitchChange(Ljava/lang/String;)V

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimSwitchChange style="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Keyguard"

    const-string v1, "OnScreenFingerprintBaseControl"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleShowInScreenOffSwitchChange()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "show_fingerprint_when_screen_off"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    .line 106
    :cond_0
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mShowInScreenOff:Z

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShowInScreenOffSwitchChange val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", showInScreenOff="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mShowInScreenOff:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Keyguard"

    const-string v1, "OnScreenFingerprintBaseControl"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static readStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "OnScreenFingerprintBaseControl"

    const-string v1, "Keyguard"

    const/4 v2, 0x0

    .line 165
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readStringFromFile, not exists:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 170
    :cond_0
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v6, v3

    move-object v3, p0

    move-object p0, v6

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v3, v2

    .line 173
    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readStringFromFile, exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_1

    .line 177
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    return-object v2

    :catchall_2
    move-exception p0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 181
    :catch_4
    :cond_2
    throw p0
.end method


# virtual methods
.method protected getFingprintHardwareModuleID()I
    .locals 0

    .line 155
    iget p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mFingprintHardwareModuleID:I

    return p0
.end method

.method public isShowInScreenOffSwitch()Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mShowInScreenOff:Z

    return p0
.end method

.method protected onOSFingerprintAnimSwitchChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected playSound(I)V
    .locals 2

    .line 140
    sget-object v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->sWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$4;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl$4;-><init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected stopSound(I)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintBaseControl;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, p1}, Landroid/media/SoundPool;->stop(I)V

    return-void
.end method
