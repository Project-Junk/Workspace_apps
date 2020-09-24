.class public Lcom/android/systemui/biometrics/BiometricDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "BiometricDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_BIOMETRIC_AUTHENTICATED:I = 0x2

.field private static final MSG_BIOMETRIC_ERROR:I = 0x4

.field private static final MSG_BIOMETRIC_HELP:I = 0x3

.field private static final MSG_BUTTON_NEGATIVE:I = 0x6

.field private static final MSG_BUTTON_POSITIVE:I = 0x8

.field private static final MSG_HIDE_DIALOG:I = 0x5

.field private static final MSG_SHOW_DIALOG:I = 0x1

.field private static final MSG_TRY_AGAIN_PRESSED:I = 0x9

.field private static final MSG_USER_CANCELED:I = 0x7

.field private static final TAG:Ljava/lang/String; = "BiometricDialogImpl"


# instance fields
.field private mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

.field private mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

.field private mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

.field private mDialogShowing:Z

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field private mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 72
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/systemui/biometrics/BiometricDialogImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    .line 75
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/BiometricDialogImpl$1;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/BiometricDialogImpl;Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/BiometricDialogImpl;ZLjava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricAuthenticated(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricHelp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/BiometricDialogImpl;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleBiometricError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/BiometricDialogImpl;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleButtonNegative()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleUserCanceled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleButtonPositive()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleTryAgainPressed()V

    return-void
.end method

.method private handleBiometricAuthenticated(ZLjava/lang/String;)V
    .locals 2

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 284
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mContext:Landroid/content/Context;

    .line 285
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    .line 286
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getAuthenticatedAccessibilityResourceId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 284
    invoke-virtual {p1, p2}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 287
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->requiresConfirmation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->updateState(I)V

    goto :goto_0

    .line 299
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->updateState(I)V

    .line 301
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;

    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;-><init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    .line 303
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getDelayAfterAuthenticatedDurationMs()I

    move-result p0

    int-to-long v0, p0

    .line 301
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 306
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->onAuthenticationFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleBiometricError(Ljava/lang/String;)V
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_0

    const-string p0, "Dialog already dismissed"

    .line 318
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->onErrorReceived(Ljava/lang/String;)V

    return-void
.end method

.method private handleBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->onHelpReceived(Ljava/lang/String;)V

    return-void
.end method

.method private handleButtonNegative()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v1, "BiometricDialogImpl"

    if-nez v0, :cond_0

    const-string p0, "Receiver is null"

    .line 350
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x2

    .line 354
    :try_start_0
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception when handling negative button"

    .line 356
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 358
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleButtonPositive()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-string v1, "BiometricDialogImpl"

    if-nez v0, :cond_0

    const-string p0, "Receiver is null"

    .line 363
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 367
    :try_start_0
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception when handling positive button"

    .line 369
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 371
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleHideDialog(Z)V
    .locals 4

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHideDialog, userCanceled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "use_default_biometric"

    invoke-static {v0, v3, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_0

    .line 333
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dialog already dismissed, userCanceled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 338
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "RemoteException when hiding dialog"

    .line 340
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 343
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 344
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 345
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->startDismiss()V

    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V
    .locals 6

    .line 225
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    .line 226
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    const-string v1, "BiometricDialogImpl"

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 243
    new-instance v3, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;

    iget-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    invoke-direct {v3, v4, v5}, Lcom/coloros/systemui/keyguard/biometric/ColorFaceDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_3

    .line 245
    new-instance v3, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;

    iget-object v4, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCallback:Lcom/android/systemui/biometrics/BiometricDialogImpl$Callback;

    invoke-direct {v3, v4, v5}, Lcom/coloros/systemui/keyguard/biometric/ColorFingerprintDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    .line 252
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleShowDialog,  savedState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentDialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " newDialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 261
    invoke-virtual {v3, p3}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->restoreState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 262
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    if-eqz p3, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p3}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->forceRemove()V

    .line 270
    :cond_2
    :goto_1
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p3, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iput-object p3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 271
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {v3, p3}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->setBundle(Landroid/os/Bundle;)V

    .line 272
    iget-object p3, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v3, p3}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->setRequireConfirmation(Z)V

    .line 273
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {v3, p1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->setUserId(I)V

    .line 274
    invoke-virtual {v3, p2}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->setSkipIntro(Z)V

    .line 275
    iput-object v3, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    .line 276
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-virtual {p2}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    return-void

    .line 247
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleTryAgainPressed()V
    .locals 2

    .line 380
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    invoke-interface {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onTryAgainPressed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BiometricDialogImpl"

    const-string v1, "RemoteException when handling try again"

    .line 382
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private handleUserCanceled()V
    .locals 1

    const/4 v0, 0x1

    .line 375
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method


# virtual methods
.method public hideBiometricDialog()V
    .locals 2

    const-string v0, "BiometricDialogImpl"

    const-string v1, "hideBiometricDialog"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public synthetic lambda$handleBiometricAuthenticated$0$BiometricDialogImpl()V
    .locals 1

    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method public onBiometricAuthenticated(ZLjava/lang/String;)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricAuthenticated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 199
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 200
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 201
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricError(Ljava/lang/String;)V
    .locals 2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBiometricHelp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 208
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 209
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 388
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 389
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    .line 392
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 393
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->onSaveState(Landroid/os/Bundle;)V

    .line 397
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialog:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->forceRemove()V

    const/4 v1, 0x0

    .line 399
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mDialogShowing:Z

    :cond_1
    if-eqz p1, :cond_2

    .line 403
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mCurrentDialogArgs:Lcom/android/internal/os/SomeArgs;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;ZLandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showBiometricDialog, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requireConfirmation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricDialogImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 185
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 186
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 187
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 188
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 189
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 190
    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.biometrics.face"

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.hardware.biometrics.iris"

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 167
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
