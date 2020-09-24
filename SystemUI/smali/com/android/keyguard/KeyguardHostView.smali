.class public Lcom/android/keyguard/KeyguardHostView;
.super Landroid/widget/FrameLayout;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;


# static fields
.field public static final DEBUG:Z = true

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final KEYGUARD_MANAGES_VOLUME:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardViewBase"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCancelAction:Ljava/lang/Runnable;

.field private mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 56
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 62
    new-instance p2, Lcom/android/keyguard/KeyguardHostView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardHostView$1;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 111
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2

    .line 423
    monitor-enter p0

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;

    .line 428
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return-void

    :catchall_0
    move-exception p1

    .line 428
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public cancelDismissAction()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanUp()V
    .locals 0

    .line 323
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    return-void
.end method

.method public dismiss(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardHostView;->dismiss(ZI)Z

    move-result p0

    return p0
.end method

.method public dismiss(ZI)Z
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showNextSecurityScreenOrFinish(ZI)Z

    move-result p0

    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 117
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p0, :cond_0

    .line 118
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDoneDrawing()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    .line 333
    invoke-virtual {v0, p1, p0, v1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->dispatchKeyEvent(Landroid/view/KeyEvent;Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 336
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 0

    .line 434
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 436
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p1, 0x400000

    .line 437
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public finish(ZI)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0}, Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;->onDismiss()Z

    move-result v0

    const/4 v1, 0x0

    .line 231
    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 232
    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDonePending(ZI)V

    goto :goto_1

    .line 238
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(ZI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public getAccessibilityTitleForCurrentMode()Ljava/lang/CharSequence;
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 473
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object p0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public handleBackKey()Z
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 201
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->dismiss(ZI)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public hasDismissActions()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 9

    .line 347
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 348
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x7f

    const/16 v4, 0x7e

    const/16 v5, 0xde

    const/16 v6, 0x82

    const/16 v7, 0x4f

    const/4 v8, 0x1

    if-nez v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x19

    if-eq v0, v1, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_2

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 355
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_2

    return v8

    .line 372
    :cond_2
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v8

    :cond_3
    return v2

    .line 400
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 414
    :cond_5
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v8

    :cond_6
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onCancelClicked()V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->onCancelClicked()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0a0311

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 152
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V

    .line 155
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    return-void
.end method

.method public onFling(FF)V
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->onFling(FF)V

    return-void
.end method

.method public onKeyguardBackPressed()V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->onKeyguardBackPressed()V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v0, 0x2

    .line 290
    new-array v0, v0, [Ljava/lang/Object;

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "screen off, instance %s at %s"

    .line 290
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    .line 294
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->clearFocus()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen on, instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardViewBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->onResume(I)V

    .line 303
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->requestFocus()Z

    return-void
.end method

.method public onSecurityContainerFullyHidden()V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onFullyHidden()V

    return-void
.end method

.method public onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p0, :cond_0

    .line 272
    invoke-interface {p0, p2}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->resetKeyguard()V

    return-void
.end method

.method public resetSecurityContainer()V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->reset()V

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 465
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    .line 133
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostView;->mCancelAction:Ljava/lang/Runnable;

    .line 136
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setHasDismissAction(Z)V

    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 460
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->needsInput()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    return-void
.end method

.method public shouldEnableMenuKey()Z
    .locals 3

    .line 450
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05000d

    .line 451
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 452
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    .line 453
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/local/enable_menu_key"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public showErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showPrimarySecurityScreen()V
    .locals 2

    const-string v0, "KeyguardViewBase"

    const-string v1, "show()"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPromptReason(I)V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->startAppearAnimation()V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 315
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz p0, :cond_0

    .line 282
    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    :cond_0
    return-void
.end method
