.class public Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;
.super Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;
.source "ColorOppoFingerEnrollActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$UIHandler;,
        Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0x7d0

.field private static final ERROR_DELAY_TIME:I = 0x12c

.field private static final FINGERPRINT_ERROR_OFFSET_TOO_MANY:I = 0x1f4

.field private static final FINISH_DELAY:I = 0x64

.field private static final HINT_TIMEOUT_DURATION:I = 0x9c4

.field private static final ICON_TOUCH_COUNT_SHOW_UNTIL_DIALOG_SHOWN:I = 0x3

.field private static final ICON_TOUCH_DURATION_UNTIL_DIALOG_SHOWN:J = 0x1f4L

.field private static final MAX_OFFSET_COUNT:I = 0x14

.field private static final MAX_STEP_COUNT:I = 0x14

.field private static final MESSAGE_FINISH_ACTIVITY_PAUSE:I = 0x68

.field private static final MESSAGE_PUT_FINGER:I = 0x66

.field private static final MESSAGE_TAP_UP_FINGER:I = 0x67

.field private static final MSG_START_ENROLL:I = 0x65

.field private static final PROGRESS_BAR_MAX:I = 0x2710

.field private static final PROGRESS_DELAY_TIME:I = 0x64

.field public static final RESULT_SAVED_FINGERPRINT:I = 0x2

.field private static final SET_UNLOCK_PASSWORD_REQUEST:I = 0x4

.field private static final TAG:Ljava/lang/String; = "OppoEnrollActivity"

.field private static final TAG_ENROLL:Ljava/lang/String; = "enroll"


# instance fields
.field private mActivityEnrollListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

.field private mContinueButton:Landroid/widget/Button;

.field private volatile mContinueButtonShown:Z

.field private mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

.field private mFingerOffset:Z

.field private mFingerOffsetCount:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGotoSetPassWord:Z

.field private mHasDumpFinger:Z

.field private mHasFingerprint:Z

.field private mIsEnrollingShow:Z

.field private mIsFrontSensor:Z

.field private mIsPause:Z

.field private mIsShowDialog:Z

.field private mIsTimeout:Z

.field private mIsTouchSensor:Z

.field private mNextButton:Landroid/widget/Button;

.field private mOpticalColor:I

.field private mPressHomeDialog:Lcolor/support/v7/app/AlertDialog;

.field private mPromoteTextLarge:Landroid/widget/TextView;

.field private mPromoteTextLargeAnim:Landroid/widget/TextView;

.field private mPromoteTextSmall:Landroid/widget/TextView;

.field private mPromoteTextSmallAnim:Landroid/widget/TextView;

.field private mRemain:I

.field private mRestoring:Z

.field private mSavedFingerprint:Z

.field private mSetResultCalled:Z

.field private mShowTapUpFinger:Z

.field private mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

.field private mStepStatus:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

.field private mTimeoutDialog:Lcolor/support/v7/app/AlertDialog;

.field private mTouchDialog:Lcolor/support/v7/app/AlertDialog;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 153
    sget-object v0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;->NONE:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mStepStatus:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    .line 510
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$4;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;Landroid/os/Message;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mContinueButtonShown:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mHasDumpFinger:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mHasDumpFinger:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->checkDismissDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->showEnrollFingerEdge()V

    return-void
.end method

.method static synthetic access$1300(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsShowDialog:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsShowDialog:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Z
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->isEnrollStatus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->showTouchDialog()V

    return-void
.end method

.method static synthetic access$1802(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSetResultCalled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->showEnrollView()V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->handleEnrollHelp(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->handleEnrollError(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;ZII)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->onEnrollProgressChangeInternal(ZII)V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mShowTapUpFinger:Z

    return p0
.end method

.method static synthetic access$702(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mShowTapUpFinger:Z

    return p1
.end method

.method static synthetic access$800(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)Landroid/os/Handler;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->removeTapupFingerMsg()V

    return-void
.end method

.method private cancelAndRestart(Z)V
    .locals 7

    const-string v0, "OppoEnrollActivity"

    const-string v1, "handleEnrollError cancelAndRestart cancelEnroll"

    .line 636
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->removeTapupFingerMsg()V

    const/4 v0, 0x0

    .line 638
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffsetCount:I

    .line 639
    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mRemain:I

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 642
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffset:Z

    .line 643
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v4, 0x7f121723

    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    const v6, 0x7f121724

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    goto :goto_0

    .line 646
    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->resetTips(Z)V

    .line 648
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    if-eqz v1, :cond_1

    .line 649
    iget-boolean v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsFrontSensor:Z

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->reset(Z)V

    :cond_1
    if-eqz p1, :cond_3

    .line 654
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-eqz p1, :cond_2

    .line 655
    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->stop()V

    .line 658
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 661
    :cond_3
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mHasDumpFinger:Z

    return-void
.end method

.method private checkDismissDialog()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchDialog:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 527
    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchDialog:Lcolor/support/v7/app/AlertDialog;

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPressHomeDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPressHomeDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 531
    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPressHomeDialog:Lcolor/support/v7/app/AlertDialog;

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTimeoutDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTimeoutDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 535
    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTimeoutDialog:Lcolor/support/v7/app/AlertDialog;

    :cond_2
    return-void
.end method

.method private guideToEnrollView()V
    .locals 7

    .line 701
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->getModeStatus()Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    move-result-object v0

    sget-object v1, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_GUIDE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    if-ne v0, v1, :cond_1

    .line 703
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mHasFingerprint:Z

    if-nez v0, :cond_0

    .line 704
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v4, 0x7f1208fd

    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    const v6, 0x7f1208fa

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->showGuideToEnrollAnimation(Z)V

    :cond_1
    return-void
.end method

.method private handleEnrollCompleted()V
    .locals 8

    const-string v0, "OppoEnrollActivity"

    const-string v1, "handleEnrollCompleted"

    .line 669
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    .line 671
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1208f2

    goto :goto_0

    :cond_0
    const v0, 0x7f1208f1

    :goto_0
    move v7, v0

    const v5, 0x7f120855

    move-object v2, p0

    move-object v3, p0

    .line 670
    invoke-virtual/range {v2 .. v7}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    .line 672
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->enrollCompleted()V

    .line 673
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 675
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->stop()V

    .line 681
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingprintSwitchHelper;->erollComplete(Landroid/content/Context;)V

    .line 682
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->onEnrollComplete()V

    .line 683
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {}, Lcom/coloros/settings/custom/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 684
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockEnabled(Landroid/content/Context;Z)V

    .line 685
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerUnlockBackupEnabled(Landroid/content/Context;Z)V

    .line 686
    invoke-static {p0, v1, v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onOperFingerSwitch(Landroid/content/Context;IZZ)V

    :cond_2
    return-void
.end method

.method private handleEnrollError(I)V
    .locals 2

    .line 589
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->cancelAlreadyExitedFingerText()V

    .line 590
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleEnrollError errMsgId = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoEnrollActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 598
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->removeTapupFingerMsg()V

    .line 599
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->stopSideCar()V

    .line 600
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->showTimeoutDialog()V

    goto :goto_0

    .line 595
    :cond_1
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->cancelAndRestart(Z)V

    .line 605
    :goto_0
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollOtherFail(Landroid/content/Context;I)V

    return-void
.end method

.method private handleEnrollHelp(I)V
    .locals 12

    .line 541
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->cancelAlreadyExitedFingerText()V

    .line 542
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleEnrollHelp helpMsgId = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoEnrollActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x5

    if-eq p1, v2, :cond_4

    const/16 v2, 0x3e9

    if-eq p1, v2, :cond_1

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 566
    :cond_0
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v4, 0x7f1208fd

    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    const v6, 0x7f120896

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    const/4 p1, 0x0

    .line 569
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->cancelAndRestart(Z)V

    .line 570
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollDump(Landroid/content/Context;)V

    return-void

    .line 573
    :cond_1
    iput-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffset:Z

    .line 574
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const p1, 0x7f1209b2

    goto :goto_0

    :cond_2
    const p1, 0x7f1209b1

    :goto_0
    move v3, p1

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const p1, 0x7f1209b4

    goto :goto_1

    :cond_3
    const p1, 0x7f1209b3

    :goto_1
    move v5, p1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    :goto_2
    return-void

    .line 559
    :cond_4
    iput-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffset:Z

    .line 560
    iget-object v8, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v9, 0x7f1209b5

    iget-object v10, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const p1, 0x7f1209b7

    goto :goto_3

    :cond_5
    const p1, 0x7f1209b6

    :goto_3
    move v11, p1

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    .line 563
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollTooFast(Landroid/content/Context;)V

    return-void

    .line 552
    :cond_6
    iput-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffset:Z

    .line 553
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v3, 0x7f1208f8

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    const v5, 0x7f1208f9

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    .line 556
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollDirty(Landroid/content/Context;)V

    return-void

    .line 546
    :cond_7
    iput-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffset:Z

    .line 547
    iget-object v8, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v9, 0x7f1209b9

    iget-object v10, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    const v11, 0x7f1209ba

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    .line 549
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollOffset(Landroid/content/Context;)V

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 208
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoEnrollActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mGotoSetPassWord:Z

    xor-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setEnrollReslut(ZZ)V

    goto :goto_0

    :pswitch_1
    const-string p1, "handleMessage: msg.what = MESSAGE_TAP_UP_FINGER"

    .line 217
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->isEnrollStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mShowTapUpFinger:Z

    .line 221
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v4, 0x7f1208fc

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    return-void

    :pswitch_2
    const-string p1, "handleMessage: msg.what = MESSAGE_PUT_FINGER"

    .line 226
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->isEnrollStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v3, 0x7f1208fd

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    return-void

    .line 212
    :pswitch_3
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->start()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .line 786
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-string v2, "has_fingerprint"

    .line 788
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mHasFingerprint:Z

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mToken:[B

    const-string v1, "OppoEnrollActivity"

    if-nez v0, :cond_1

    const-string v0, "mToken == null finish"

    .line 792
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->finish()V

    return-void

    :cond_1
    const-string v0, "mToken not null"

    .line 796
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fingerprint"

    .line 800
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v0, 0x0

    .line 801
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSavedFingerprint:Z

    .line 802
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSetResultCalled:Z

    .line 803
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFrontSensor(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsFrontSensor:Z

    .line 804
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isTouchSensor(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsTouchSensor:Z

    .line 806
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->initEnrollListener()V

    .line 807
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->initSideCar()V

    .line 808
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$UIHandler;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private initEnrollListener()V
    .locals 1

    .line 243
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$1;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mActivityEnrollListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

    return-void
.end method

.method private initSideCar()V
    .locals 4

    .line 941
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 942
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mToken:[B

    iget v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUserId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;-><init>(Landroid/hardware/fingerprint/FingerprintManager;[BI)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mActivityEnrollListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->setListener(Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;)V

    return-void
.end method

.method private initToolbar(Z)V
    .locals 2

    const v0, 0x7f0a070a

    .line 879
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 881
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 882
    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    if-eqz p1, :cond_0

    .line 884
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mOpticalColor:I

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 886
    :cond_0
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->hideDivider()V

    .line 887
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 888
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 890
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f0a0525

    .line 409
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v0, 0x7f0a0527

    .line 410
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    const v0, 0x7f0a0526

    .line 411
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLargeAnim:Landroid/widget/TextView;

    const v0, 0x7f0a0528

    .line 412
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmallAnim:Landroid/widget/TextView;

    const v0, 0x7f0a025b

    .line 413
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    .line 414
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    new-instance v1, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$2;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->setEnrollLayoutListener(Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$EnrollLayoutListener;)V

    const v0, 0x7f0a0254

    .line 428
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mNextButton:Landroid/widget/Button;

    .line 429
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00f5

    .line 430
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mContinueButton:Landroid/widget/Button;

    .line 431
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 454
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 455
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f0a0298

    .line 433
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05d7

    .line 434
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 436
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 438
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v3, 0x7f07002b

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 440
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLargeAnim:Landroid/widget/TextView;

    invoke-static {v0, v2, v3, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 442
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    const v3, 0x7f070015

    invoke-static {v0, v2, v3, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 444
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmallAnim:Landroid/widget/TextView;

    invoke-static {v0, v2, v3, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 446
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mNextButton:Landroid/widget/Button;

    const v3, 0x7f070018

    invoke-static {v0, v2, v3, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 448
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mContinueButton:Landroid/widget/Button;

    invoke-static {v0, v2, v3, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 450
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070012

    invoke-static {v0, v1, v2, v4}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 457
    :goto_1
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$3;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    return-void
.end method

.method private isEnrollStatus()Z
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->getModeStatus()Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    move-result-object v0

    .line 376
    sget-object v2, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_GUIDE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;->MODE_COMPLETE:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout$MODE;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    return v1
.end method

.method static synthetic lambda$startPromoteAnimator$0(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 203
    invoke-static/range {p0 .. p5}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onEnrollProgressChangeInternal(ZII)V
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onProgressChange: remain = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRemain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mRemain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mFingerOffsetCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffsetCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromResume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoEnrollActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->onFingerInputCompleted()V

    :cond_0
    const/4 p1, 0x0

    if-ge p2, p3, :cond_3

    .line 304
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mRemain:I

    if-ne v0, p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-lez p2, :cond_4

    if-ge p2, v0, :cond_4

    .line 312
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->updateProgressForFront(II)V

    .line 313
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->resetTips(Z)V

    goto :goto_1

    .line 305
    :cond_3
    :goto_0
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffsetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffsetCount:I

    .line 306
    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffsetCount:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    const/16 p1, 0x1f4

    .line 307
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->handleEnrollError(I)V

    return-void

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    if-lez p3, :cond_5

    .line 318
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffset:Z

    .line 319
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->handleEnrollCompleted()V

    .line 321
    :cond_5
    iput p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mRemain:I

    return-void
.end method

.method private onFingerInputCompleted()V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private removeTapupFingerMsg()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private resetTips(Z)V
    .locals 7

    .line 725
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffset:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 726
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerOffset:Z

    const v0, 0x7f1208fa

    if-nez p1, :cond_0

    .line 729
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mStepStatus:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    sget-object v1, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;->OUTSIDE:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    if-ne p1, v1, :cond_0

    const v0, 0x7f1208f3

    :cond_0
    move v6, v0

    .line 734
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v4, 0x7f1208fd

    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    :cond_1
    return-void
.end method

.method private setEnrollReslut(ZZ)V
    .locals 2

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setEnrollReslut : finish = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSavedFingerprint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSavedFingerprint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", byUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoEnrollActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 815
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSetResultCalled:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 816
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSetResultCalled:Z

    .line 817
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSavedFingerprint:Z

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 818
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setResult(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 820
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setResult(I)V

    if-nez p2, :cond_1

    const-string p1, "other_v2"

    .line 822
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollCancel(Landroid/content/Context;Ljava/lang/String;)V

    .line 825
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->finish()V

    .line 826
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->zoomFadeTransition()V

    :cond_2
    return-void
.end method

.method private showEnrollFingerEdge()V
    .locals 7

    const-string v0, "OppoEnrollActivity"

    const-string v1, "showEnrollFingerEdge"

    .line 712
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->showGuideView2()V

    .line 714
    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    const v4, 0x7f1200f8

    const v6, 0x7f1200f9

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    .line 717
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mContinueButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x1

    .line 718
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mContinueButtonShown:Z

    return-void
.end method

.method private showEnrollView()V
    .locals 1

    .line 691
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSetResultCalled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 692
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mHasFingerprint:Z

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->showFingerView()V

    return-void

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->guideToEnrollView()V

    :cond_1
    return-void
.end method

.method private showPressHomeDialog()V
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPressHomeDialog:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120aeb

    .line 496
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 497
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f120f1a

    const/4 v3, 0x0

    .line 498
    invoke-virtual {v0, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 499
    new-instance v2, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorOppoFingerEnrollActivity$_a5Hl8NhwgiUqQqUlWCSpxAT6so;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorOppoFingerEnrollActivity$_a5Hl8NhwgiUqQqUlWCSpxAT6so;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 500
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPressHomeDialog:Lcolor/support/v7/app/AlertDialog;

    .line 501
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPressHomeDialog:Lcolor/support/v7/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    iput-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsShowDialog:Z

    .line 505
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPressHomeDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 506
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollClickHome(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private showTimeoutDialog()V
    .locals 4

    const/4 v0, 0x1

    .line 609
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsTimeout:Z

    .line 610
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTimeoutDialog:Lcolor/support/v7/app/AlertDialog;

    if-nez v1, :cond_0

    .line 611
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1204e3

    .line 612
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f120f1a

    const/4 v3, 0x0

    .line 613
    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 614
    new-instance v2, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$5;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$5;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 625
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTimeoutDialog:Lcolor/support/v7/app/AlertDialog;

    .line 626
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTimeoutDialog:Lcolor/support/v7/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 627
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTimeoutDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 630
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsShowDialog:Z

    .line 631
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTimeoutDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method private showTouchDialog()V
    .locals 4

    .line 474
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchDialog:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121318

    .line 476
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 477
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f120f1a

    const/4 v3, 0x0

    .line 478
    invoke-virtual {v0, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 479
    new-instance v2, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorOppoFingerEnrollActivity$fcLzlrel6gbBNIPj8V6zJOfRMzo;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorOppoFingerEnrollActivity$fcLzlrel6gbBNIPj8V6zJOfRMzo;-><init>(Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;)V

    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 480
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchDialog:Lcolor/support/v7/app/AlertDialog;

    .line 481
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchDialog:Lcolor/support/v7/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    iput-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsShowDialog:Z

    .line 485
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mTouchDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 486
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollTouchScreen(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private stopSideCar()V
    .locals 2

    .line 971
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 972
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->setListener(Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;)V

    .line 973
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->stop()V

    :cond_0
    return-void
.end method

.method private updateProgressForFront(II)V
    .locals 3

    .line 331
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->cancelAlreadyExitedFingerText()V

    const-string v0, "OppoEnrollActivity"

    const-string v1, "updateProgressForFront"

    .line 333
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v1, p2, 0x3c

    .line 334
    div-int/lit8 v1, v1, 0x64

    sub-int v2, p2, v1

    sub-int/2addr p2, p1

    if-ge p2, v1, :cond_0

    .line 337
    sget-object p2, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;->INSIDE:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mStepStatus:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    .line 338
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    sub-int/2addr p1, v2

    invoke-virtual {p2, p1, v1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->updateProgress1(II)V

    return-void

    .line 339
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mStepStatus:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    sget-object v1, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;->INSIDE:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    if-ne p2, v1, :cond_2

    .line 341
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->removeTapupFingerMsg()V

    .line 342
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-eqz p1, :cond_1

    .line 343
    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->pauseEnroll()V

    goto :goto_0

    :cond_1
    const-string p1, "updateProgressForFront mFingerEnrollLogic is null"

    .line 345
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :goto_0
    sget-object p1, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;->OUTSIDE:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mStepStatus:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    .line 348
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->inSidePartCompleted()V

    return-void

    .line 350
    :cond_2
    sget-object p2, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;->OUTSIDE:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    iput-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mStepStatus:Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity$ENROLL_STEP;

    .line 351
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-virtual {p2, p1, v2}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->updateEnrollProgress(II)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 979
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public cancelAlreadyExitedFingerText()V
    .locals 5

    .line 1036
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    .line 1037
    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->hasFingerprints(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x7f1208fa

    const v2, 0x7f1209b8

    const-string v3, "\n"

    if-eqz v0, :cond_3

    .line 1040
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v4, 0x7f1208fd

    .line 1041
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1044
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1047
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1049
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    goto :goto_1

    .line 1053
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const v1, 0x7f1208f5

    .line 1054
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1057
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1058
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1208fb

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1063
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    const v1, 0x7f1208f6

    goto :goto_1

    :cond_6
    const v1, 0x7f1208f7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf0

    return v0
.end method

.method public synthetic lambda$showPressHomeDialog$2$ColorOppoFingerEnrollActivity(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 499
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsShowDialog:Z

    return-void
.end method

.method public synthetic lambda$showTouchDialog$1$ColorOppoFingerEnrollActivity(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 479
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsShowDialog:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    .line 996
    invoke-direct {p0, v0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setEnrollReslut(ZZ)V

    const-string v0, "back_v2"

    .line 997
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollCancel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00f5

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0254

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->onCompleteClick()V

    return-void

    .line 389
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mContinueButton:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    const/4 p1, 0x0

    .line 390
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mContinueButtonShown:Z

    .line 391
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v3, 0x7f1208fd

    iget-object v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    const v5, 0x7f1208f3

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    .line 394
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->showGuideToEnrollAnimation(Z)V

    .line 396
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-eqz p1, :cond_2

    .line 397
    invoke-virtual {p1}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->continueEnroll()V

    goto :goto_0

    :cond_2
    const-string p1, "OppoEnrollActivity"

    const-string v0, "onClick btn_continue mFingerEnrollLogic is null"

    .line 399
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :goto_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollContinue(Landroid/content/Context;)V

    :goto_1
    return-void
.end method

.method public onCompleteClick()V
    .locals 1

    const/4 v0, 0x1

    .line 1022
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSetResultCalled:Z

    const/4 v0, -0x1

    .line 1023
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setResult(I)V

    .line 1024
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->finish()V

    .line 1025
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->zoomFadeTransition()V

    .line 1026
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollClickDone(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 832
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 833
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 834
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v0

    .line 835
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    const/16 v1, 0x500

    if-eqz v0, :cond_2

    const v4, 0x7f0602c6

    .line 838
    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mOpticalColor:I

    .line 839
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mOpticalColor:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 840
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget v5, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mOpticalColor:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 841
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v1, 0x7f0d0215

    .line 843
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setContentView(I)V

    goto :goto_2

    .line 845
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f0600e7

    invoke-virtual {p0, v5}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 848
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ai(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 849
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    const v1, 0x7f0d0213

    .line 853
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setContentView(I)V

    .line 855
    :goto_2
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->initToolbar(Z)V

    .line 856
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->init()V

    if-eqz p1, :cond_4

    move v2, v3

    .line 857
    :cond_4
    iput-boolean v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mRestoring:Z

    .line 858
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->initView()V

    .line 859
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    .line 861
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mRestoring:Z

    if-eqz v0, :cond_5

    .line 862
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v1, -0x1

    const-string v2, "key_ui_mode"

    .line 863
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    .line 865
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->finish()V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 741
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 742
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "extra_allow_skip_enroll"

    .line 744
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0253

    .line 745
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f1214ed

    .line 746
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 984
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->checkDismissDialog()V

    const-string v0, "OppoEnrollActivity"

    const-string v1, "onDestroy"

    .line 985
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 987
    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mActivityEnrollListener:Lcom/coloros/settings/feature/fingerprint/utils/EnrollListener;

    .line 988
    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mToken:[B

    .line 989
    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    .line 990
    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 991
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->onDestroy()V

    return-void
.end method

.method public onEnrollComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1030
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSavedFingerprint:Z

    .line 1031
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1002
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onKeyDown: keycode = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoEnrollActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsFrontSensor:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 1004
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->showEnrollView()V

    .line 1006
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsFrontSensor:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsTouchSensor:Z

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsShowDialog:Z

    if-nez v0, :cond_1

    .line 1008
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->isEnrollStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->showPressHomeDialog()V

    const/4 p1, 0x1

    return p1

    .line 1013
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 754
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0253

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "OppoEnrollActivity"

    const-string v1, "onOptionsItemSelected: R.id.enroll_cancel"

    .line 756
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "extra_boot_register_fingerprint"

    .line 758
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "extra_allow_skip_enroll"

    .line 760
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 763
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setResult(I)V

    .line 764
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 766
    invoke-direct {p0, v0, v0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setEnrollReslut(ZZ)V

    :goto_0
    const-string v0, "cancel_v2"

    .line 768
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->onEnrollCancel(Landroid/content/Context;Ljava/lang/String;)V

    .line 773
    :goto_1
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 950
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->onPause()V

    const-string v0, "OppoEnrollActivity"

    const-string v1, "onPause"

    .line 951
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 952
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsPause:Z

    .line 953
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->stopSideCar()V

    .line 954
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 955
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 957
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 958
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mHasDumpFinger:Z

    .line 960
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setHomeKeyLocked(Landroid/content/Context;I)V

    .line 961
    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSetResultCalled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsTimeout:Z

    if-eqz v1, :cond_1

    .line 963
    :cond_0
    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsTimeout:Z

    if-eqz v1, :cond_1

    .line 964
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->checkDismissDialog()V

    .line 966
    :cond_1
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {p0, v0}, Lcom/coloros/settings/custom/a;->a(Landroid/content/Context;Z)V

    .line 967
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {p0, v0}, Lcom/coloros/settings/custom/a;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a0253

    .line 778
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSavedFingerprint:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 782
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 6

    .line 897
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->onResume()V

    const-string v0, "OppoEnrollActivity"

    const-string v1, "onResume"

    .line 898
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-boolean v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsPause:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "onResume but mIsPause = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mIsPause:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 902
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mGotoSetPassWord:Z

    xor-int/2addr v0, v3

    invoke-direct {p0, v0, v2}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->setEnrollReslut(ZZ)V

    return-void

    .line 906
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-eqz v1, :cond_1

    .line 907
    iget v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->hasFingerprints(I)Z

    move-result v2

    :cond_1
    const v1, 0x7f1209b8

    const-string v4, "\n"

    if-eqz v2, :cond_3

    .line 910
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v5, 0x7f1208fd

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 911
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v2

    const v5, 0x7f1208fa

    if-eqz v2, :cond_2

    .line 912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 913
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 915
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 917
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->hideFingerView()V

    goto :goto_3

    .line 919
    :cond_3
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLarge:Landroid/widget/TextView;

    const v5, 0x7f1208f5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 921
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1208fb

    invoke-virtual {p0, v5}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 923
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 925
    :cond_4
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmall:Landroid/widget/TextView;

    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSideFingerPrint(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    const v2, 0x7f1208f6

    goto :goto_1

    :cond_5
    const v2, 0x7f1208f7

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 929
    :goto_2
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mEnrollAnimationView:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->showGuideView1()V

    .line 931
    :goto_3
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mSidecar:Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;

    if-eqz v1, :cond_6

    .line 932
    invoke-virtual {v1}, Lcom/coloros/settings/feature/fingerprint/OppoFingerprintEnrollSidecar;->start()V

    :cond_6
    const/4 v1, 0x3

    .line 934
    invoke-static {p0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setHomeKeyLocked(Landroid/content/Context;I)V

    const-string v1, "onResume end"

    .line 935
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {p0, v3}, Lcom/coloros/settings/custom/a;->a(Landroid/content/Context;Z)V

    .line 937
    invoke-static {}, Lcom/coloros/settings/custom/a;->a()Lcom/coloros/settings/custom/a;

    invoke-static {p0, v3}, Lcom/coloros/settings/custom/a;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 872
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 873
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 874
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLargeAnim:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p3, :cond_0

    .line 180
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :cond_0
    new-array v2, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLargeAnim:Landroid/widget/TextView;

    aput-object v3, v2, v1

    invoke-static {p1, v1, v2}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 183
    new-array v2, v0, [Landroid/view/View;

    aput-object p2, v2, v1

    invoke-static {p1, v0, v2}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    :cond_1
    if-eqz p4, :cond_3

    .line 187
    iget-object v2, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmallAnim:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p5, :cond_2

    .line 189
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setText(I)V

    .line 191
    :cond_2
    new-array v2, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmallAnim:Landroid/widget/TextView;

    aput-object v3, v2, v1

    invoke-static {p1, v1, v2}, Lcom/coloros/settings/utils/ag;->b(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 192
    new-array v2, v0, [Landroid/view/View;

    aput-object p4, v2, v1

    invoke-static {p1, v0, v2}, Lcom/coloros/settings/utils/ag;->b(Landroid/content/Context;Z[Landroid/view/View;)V

    :cond_3
    const/4 p1, 0x0

    if-nez p2, :cond_4

    :goto_0
    move-object v4, p1

    goto :goto_1

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextLargeAnim:Landroid/widget/TextView;

    if-nez v0, :cond_5

    goto :goto_0

    .line 196
    :cond_5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v4, v0

    :goto_1
    if-gtz p3, :cond_6

    :goto_2
    move-object v3, p1

    goto :goto_3

    :cond_6
    if-nez p2, :cond_7

    goto :goto_2

    .line 198
    :cond_7
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    move-object v3, p3

    :goto_3
    if-nez p4, :cond_8

    :goto_4
    move-object v7, p1

    goto :goto_5

    .line 199
    :cond_8
    iget-object p3, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mPromoteTextSmallAnim:Landroid/widget/TextView;

    if-nez p3, :cond_9

    goto :goto_4

    .line 200
    :cond_9
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    move-object v7, p3

    :goto_5
    if-gtz p5, :cond_a

    :goto_6
    move-object v6, p1

    goto :goto_7

    :cond_a
    if-nez p4, :cond_b

    goto :goto_6

    .line 202
    :cond_b
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_6

    .line 203
    :goto_7
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/ColorOppoFingerEnrollActivity;->mUIHandler:Landroid/os/Handler;

    new-instance p3, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorOppoFingerEnrollActivity$dyQOPUtUy6vcL8FOPRaZ28F9daw;

    move-object v1, p3

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/coloros/settings/feature/fingerprint/-$$Lambda$ColorOppoFingerEnrollActivity$dyQOPUtUy6vcL8FOPRaZ28F9daw;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-wide/16 p4, 0x19d

    invoke-virtual {p1, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
