.class public Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFaceUnlockSwitchListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardFaceUnlockSwitchListener"

.field protected static final sWorkerHandler:Landroid/os/Handler;

.field protected static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mFaceUnlockCustomizeDisable:Z

.field private mFaceUnlockCustomizeDisableSwitchObserver:Landroid/database/ContentObserver;

.field protected mFaceUnlockEnable:Z

.field protected mFaceUnlockFillLightEnable:Z

.field private mFaceUnlockFillLightSwitchObserver:Landroid/database/ContentObserver;

.field protected mFaceUnlockSlideToDetect:Z

.field protected mFaceUnlockStayOn:Z

.field private mFaceUnlockStayOnSwitchObserver:Landroid/database/ContentObserver;

.field private mFaceUnlockSwitchObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Keyguard FaceUnlock WorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->sWorkerThread:Landroid/os/HandlerThread;

    .line 42
    sget-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->sWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 74
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 46
    new-instance v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$1;

    sget-object v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->sWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$1;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockSwitchObserver:Landroid/database/ContentObserver;

    .line 53
    new-instance v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$2;

    sget-object v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->sWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$2;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockStayOnSwitchObserver:Landroid/database/ContentObserver;

    .line 60
    new-instance v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$3;

    sget-object v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->sWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$3;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockFillLightSwitchObserver:Landroid/database/ContentObserver;

    .line 67
    new-instance v0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$4;

    sget-object v1, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->sWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener$4;-><init>(Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockCustomizeDisableSwitchObserver:Landroid/database/ContentObserver;

    .line 75
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mContext:Landroid/content/Context;

    const-string v0, "coloros_face_unlock_switch"

    .line 80
    invoke-static {v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockSwitchObserver:Landroid/database/ContentObserver;

    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 79
    invoke-static {p1, v0, v3, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 84
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mContext:Landroid/content/Context;

    const-string v0, "coloros_face_unlock_remain_unlock_switch"

    .line 85
    invoke-static {v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockStayOnSwitchObserver:Landroid/database/ContentObserver;

    .line 84
    invoke-static {p1, v0, v3, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 89
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mContext:Landroid/content/Context;

    const-string v0, "coloros_face_unlock_screen_fill_light"

    .line 90
    invoke-static {v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockFillLightSwitchObserver:Landroid/database/ContentObserver;

    .line 89
    invoke-static {p1, v0, v3, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->handleFaceUnlockSwitchChange(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->handleFaceUnlockStayOnSwitchChange()V

    .line 97
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->handleFaceUnlockFillLightSwitchChange()V

    .line 99
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mContext:Landroid/content/Context;

    const-string v0, "oppo_settings_manager_facelock"

    .line 100
    invoke-static {v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockCustomizeDisableSwitchObserver:Landroid/database/ContentObserver;

    .line 99
    invoke-static {p1, v0, v3, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->registerForUserSwitch(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->handleFaceUnlockCustomizeDisableSwitchChange(Z)V

    return-void
.end method


# virtual methods
.method protected handleFaceUnlockCustomizeDisableSwitchChange(Z)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;->getFaceunlockCustomizeSwitchEnable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 143
    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockCustomizeDisable:Z

    .line 144
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->handleFaceUnlockSwitchChange(Z)V

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFaceUnlockCustomizeDisableSwitchChange : val="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , disable="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockCustomizeDisable:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardFaceUnlockSwitchListener"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected handleFaceUnlockFillLightSwitchChange()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;->getFaceUnlockFillLightSwitchEnable(Landroid/content/Context;)I

    move-result v0

    .line 133
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockFillLightEnable:Z

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFaceUnlockFillLightSwitchChange : val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , enable="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockFillLightEnable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardFaceUnlockSwitchListener"

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected handleFaceUnlockSlideToDetectSwitchChange()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;->getFaceUnlockStayOnSwitchEnable(Landroid/content/Context;)I

    move-result v0

    .line 151
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 152
    :goto_0
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockSlideToDetect:Z

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFaceUnlockSlideToDetectSwitchChange : SlideToDetect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockSlideToDetect:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardFaceUnlockSwitchListener"

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected handleFaceUnlockStayOnSwitchChange()V
    .locals 4

    .line 108
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->handleFaceUnlockSlideToDetectSwitchChange()V

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;->getFaceUnlockStayOnSwitchEnable(Landroid/content/Context;)I

    move-result v0

    .line 114
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 115
    :goto_0
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockStayOn:Z

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFaceUnlockStayOnSwitchChange : val="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , enable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockStayOn:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " , supportFaceUnlock="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardFaceUnlockSwitchListener"

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected handleFaceUnlockSwitchChange(Z)V
    .locals 3

    .line 121
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/settingsvalue/FaceUnlockSettingsValueProxy;->getFaceUnlockSwitchEnable(Landroid/content/Context;)I

    move-result p1

    .line 122
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportFaceUnlock()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 123
    iget-boolean v2, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockCustomizeDisable:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockEnable:Z

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFaceUnlockSwitchChange : val="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , enable="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockEnable:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , supportFaceUnlock="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , customizeDisable="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockCustomizeDisable:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardFaceUnlockSwitchListener"

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isFaceUnlockByScreenOn()Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockSlideToDetect:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFaceUnlockEnable()Z
    .locals 0

    .line 162
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockEnable:Z

    return p0
.end method

.method public isFaceUnlockFillLightEnable()Z
    .locals 0

    .line 166
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockFillLightEnable:Z

    return p0
.end method

.method public isFaceUnlockStayOn()Z
    .locals 0

    .line 173
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockSwitchListener;->mFaceUnlockStayOn:Z

    return p0
.end method
