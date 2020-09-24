.class public Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;
.super Ljava/lang/Object;
.source "ColorVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;,
        Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;,
        Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;,
        Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;,
        Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;
    }
.end annotation


# static fields
.field private static final ADJUST_DELTA_TIME:I = 0x3c

.field static final DIALOG_HIDE_ANIMATION_DURATION:I = 0xfa

.field static final DIALOG_HOVERING_TIMEOUT_MILLIS:I = 0x3e80

.field static final DIALOG_SAFETYWARNING_TIMEOUT_MILLIS:I = 0x1388

.field static final DIALOG_SHOW_ANIMATION_DURATION:I = 0x1c2

.field static final DIALOG_TIMEOUT_MILLIS:I = 0x4e20

.field private static final MAX_ADJUST_COUNT:I = 0x3c

.field static final SEEKBAR_WIDTH:I = 0x2c

.field static final SEEKBAR_WIDTH_EXPANDEED:I = 0x36

.field private static final STATISTICS_VOLUME_BUTTON:Ljava/lang/String; = "VOLUME_BUTTON_"

.field private static final TAG:Ljava/lang/String; = "ColorVolumeDialogImpl"

.field private static final UPDATE_ANIMATION_DURATION:I = 0x50

.field private static final USER_ATTEMPT_GRACE_PERIOD:J = 0x3e8L

.field private static final VIBRATE_WHEN_SILENT:Ljava/lang/String; = "vibrate_when_silent"

.field private static final VOLUME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final VOLUME_BAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final VOLUME_MAIN_HEIGHT:I = 0xfc

.field private static final VOLUME_MAIN_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private DIALOG_DENSITY_DPI:I

.field private final mAccessibility:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;

.field private final mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mActiveStream:I

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutomute:Z

.field private mBackground:Landroid/view/View;

.field private mConfigChanged:Z

.field private mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

.field private final mControllerCallbackH:Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

.field private mDialogMain:Landroid/view/ViewGroup;

.field private mDialogRowsView:Landroid/view/ViewGroup;

.field private mDialogView:Landroid/view/ViewGroup;

.field private mDismissing:Z

.field private mDivider:Landroid/view/View;

.field private mDoubleEarIcon:Landroid/widget/ImageButton;

.field private mDoubleEarView:Landroid/view/View;

.field private final mDynamic:Landroid/util/SparseBooleanArray;

.field private mExpanded:Z

.field private final mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

.field private mHovering:Z

.field private mInitialDisplayDensity:I

.field private final mKeyguard:Landroid/app/KeyguardManager;

.field private mNewContext:Landroid/content/Context;

.field private mOri:I

.field private mPrevActiveStream:I

.field private mRinger:Landroid/view/ViewGroup;

.field private mRingerIcon:Landroid/widget/ImageButton;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSafetyWarning:Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;

.field private final mSafetyWarningLock:Ljava/lang/Object;

.field private mScale:F

.field private mSettingsIcon:Landroid/widget/ImageButton;

.field private mSettingsView:Landroid/view/View;

.field private mShowA11yStream:Z

.field private mShowActiveStreamOnly:Z

.field private mShowing:Z

.field private mSilentMode:Z

.field private mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

.field private mTempImportantStrem:I

.field private mThemeChanged:Z

.field private mUiMode:I

.field private mUiModeChanged:Z

.field private mVisibleRowCount:I

.field private mVolumeDivider:Landroid/view/View;

.field private mVolumeHeaderMsg:Landroid/widget/TextView;

.field private mVolumeMain:Landroid/widget/LinearLayout;

.field private mWindow:Landroid/view/Window;

.field private transBgY:Landroid/animation/ObjectAnimator;

.field private transDmLandY:Landroid/animation/ObjectAnimator;

.field private transMainLandY:Landroid/animation/ObjectAnimator;

.field private transMainY:Landroid/animation/ObjectAnimator;

.field private volumeAnimator:Lcom/coloros/systemui/volume/VolumeAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 190
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->VOLUME_BAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 191
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v4, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->VOLUME_MAIN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 192
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->VOLUME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    .line 162
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    .line 166
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    .line 167
    new-instance v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;)V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAccessibility:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAutomute:Z

    .line 175
    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSilentMode:Z

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHovering:Z

    .line 180
    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mConfigChanged:Z

    .line 183
    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mThemeChanged:Z

    .line 193
    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVisibleRowCount:I

    const/16 v1, 0x1e0

    .line 204
    iput v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->DIALOG_DENSITY_DPI:I

    .line 205
    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mInitialDisplayDensity:I

    .line 206
    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mUiMode:I

    .line 208
    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mOri:I

    .line 209
    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mUiModeChanged:Z

    const/4 v0, -0x1

    .line 217
    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mTempImportantStrem:I

    .line 1666
    new-instance v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$5;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;

    .line 227
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f120458

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 228
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    .line 229
    const-class p1, Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ColorVolumeDialogController;

    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    .line 230
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    .line 231
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 232
    const-class p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 233
    const-class p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 234
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->showActiveStreamOnly()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowActiveStreamOnly:Z

    .line 235
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$1300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/content/Context;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Ljava/lang/Object;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;)Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSafetyWarning:Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->recheckH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->showH(I)V

    return-void
.end method

.method static synthetic access$2602(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mThemeChanged:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateOrientation()V

    return-void
.end method

.method static synthetic access$2800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    return-object p0
.end method

.method static synthetic access$2902(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mConfigChanged:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSilentMode:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;I)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->showSafetyWarningH(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowA11yStream:Z

    return p0
.end method

.method static synthetic access$3302(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Z)Z
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowA11yStream:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getActiveRow()Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateRowsH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;IZ)V
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->setStreamImportantH(IZ)V

    return-void
.end method

.method static synthetic access$3700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/plugins/ColorVolumeDialogController$State;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/widget/TextView;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeHeaderMsg:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    return p0
.end method

.method static synthetic access$4100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/view/View;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4500(Landroid/widget/SeekBar;I)I
    .locals 0

    .line 127
    invoke-static {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;I)Ljava/lang/String;
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getVolumeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/content/Context;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAccessibilityMgr:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)Landroid/widget/ImageButton;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const p2, 0x7f110894

    goto :goto_0

    :cond_0
    const p2, 0x7f110896

    goto :goto_0

    :cond_1
    const p2, 0x7f110895

    .line 1263
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1265
    new-instance p2, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$3;

    invoke-direct {p2, p0, p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$3;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private addExistingRows()V
    .locals 10

    .line 443
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 445
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 446
    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v6

    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v7

    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$600(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Z

    move-result v8

    .line 447
    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Z

    move-result v9

    move-object v3, p0

    move-object v4, v2

    .line 446
    invoke-direct/range {v3 .. v9}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->initRow(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 448
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 449
    invoke-direct {p0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateVolumeRowH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addRow(IIIZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 430
    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addRow(IIIZZZ)V

    return-void
.end method

.method private addRow(IIIZZZ)V
    .locals 9

    .line 435
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding row for stream "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    invoke-static {v0, v1, p6}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance p6, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    const/4 v0, 0x0

    invoke-direct {p6, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;)V

    move-object v2, p0

    move-object v3, p6

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 437
    invoke-direct/range {v2 .. v8}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->initRow(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;IIIZZ)V

    .line 438
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {p6}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 439
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkAndShowDoubleEarButton()V
    .locals 2

    .line 875
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isDoubleEarFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 878
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_1

    return-void

    .line 881
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->checkHasTwoEarphone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 882
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDoubleEarView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 884
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDoubleEarView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 886
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDoubleEarIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$2;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private checkHasTwoEarphone()Z
    .locals 8

    .line 904
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 912
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v3

    .line 913
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->isNormalDebug()Z

    move-result v4

    const-string v5, "DOUBLE_EAR"

    const-string v6, "Volume"

    if-eqz v4, :cond_1

    .line 914
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BluetoothAdapter connectState = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v5, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 917
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    .line 918
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->isNormalDebug()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 919
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "devices size = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    .line 920
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 919
    invoke-static {v6, v5, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 923
    invoke-direct {p0, v2, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->isBlueToothHeadSet(ZLjava/util/Set;)Z

    move-result p0

    goto :goto_2

    :cond_4
    move p0, v2

    .line 926
    :goto_2
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->isNormalDebug()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wireHeadSet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " blueToothHeadSet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v5, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    return v1
.end method

.method private computeTimeoutH()I
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAccessibility:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;

    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->access$1400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x4e20

    return p0

    .line 965
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHovering:Z

    if-eqz v0, :cond_1

    const/16 p0, 0x3e80

    return p0

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSafetyWarning:Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;

    const/16 v1, 0x1388

    if-eqz v0, :cond_2

    return v1

    .line 967
    :cond_2
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    if-eqz p0, :cond_3

    :cond_3
    return v1
.end method

.method private dp2Px(F)I
    .locals 1

    .line 2065
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mScale:F

    .line 2067
    iget p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mScale:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private enableRingerViewsH(Z)V
    .locals 0

    .line 1289
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    .line 1290
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private enableVolumeRowViewsH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)V
    .locals 0

    return-void
.end method

.method private findRow(I)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;
    .locals 2

    .line 468
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 469
    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getActiveRow()Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 455
    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v2

    iget v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mActiveStream:I

    if-ne v2, v3, :cond_0

    return-object v1

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 460
    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    return-object v1

    .line 464
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    return-object p0
.end method

.method private static getImpliedLevel(Landroid/widget/SeekBar;I)I
    .locals 2

    .line 484
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    .line 485
    div-int/lit8 v0, p0, 0x64

    add-int/lit8 v1, v0, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    int-to-float p0, v1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    add-int/lit8 v0, p0, 0x1

    :goto_0
    return v0
.end method

.method private getScreenHeight()I
    .locals 3

    .line 2071
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2072
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2073
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2074
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2075
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2076
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method private getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;
    .locals 1

    .line 1650
    new-instance v0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$6hLGUV2LPP-dv_Mnkb4JHXVQtxE;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$6hLGUV2LPP-dv_Mnkb4JHXVQtxE;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Landroid/widget/ImageButton;)V

    return-object v0
.end method

.method private getSingleUnpressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;
    .locals 0

    .line 1659
    new-instance p0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$tbIIQHPHsOIAB-Dn06LwPTW2qdQ;

    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$tbIIQHPHsOIAB-Dn06LwPTW2qdQ;-><init>(Landroid/widget/ImageButton;)V

    return-object p0
.end method

.method private getStreamLabelH(Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1638
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1639
    iget-object p0, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    return-object p0

    .line 1642
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->name:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1644
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find translation for stream "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorVolumeDialogImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getVisibleRowCount(Z)I
    .locals 3

    .line 1159
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getActiveRow()Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    move-result-object v0

    const/4 v1, 0x0

    .line 1160
    iput v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVisibleRowCount:I

    .line 1161
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 1162
    invoke-direct {p0, v2, v0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->shouldBeVisibleH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1164
    iget v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVisibleRowCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVisibleRowCount:I

    goto :goto_0

    .line 1167
    :cond_1
    iget p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVisibleRowCount:I

    return p0
.end method

.method private getVolumeName(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2032
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f1100fb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2041
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f110122

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2035
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f11050f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2038
    :cond_3
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f11072d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2047
    :cond_4
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f1107ff

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2044
    :cond_5
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const p1, 0x7f110888

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 2128
    new-array v0, v0, [I

    .line 2129
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2130
    aget v1, v0, p0

    const/4 v2, 0x1

    .line 2131
    aget v0, v0, v2

    .line 2132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v1, v3, v1

    if-gtz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    int-to-float v3, v0

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return p0
.end method

.method private incrementManualToggleCount()V
    .locals 2

    .line 748
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "manual_ringer_toggle_count"

    const/4 v1, 0x0

    .line 749
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 750
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private initDialog()V
    .locals 14

    .line 262
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mUiModeChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    .line 264
    iput-boolean v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mUiModeChanged:Z

    .line 268
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mThemeChanged:Z

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    .line 270
    iput-boolean v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mThemeChanged:Z

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->resetDensity()V

    .line 277
    new-instance v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    .line 279
    new-instance v0, Lcom/android/systemui/volume/ConfigurableTexts;

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/volume/ConfigurableTexts;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 280
    iput-boolean v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHovering:Z

    .line 281
    iput-boolean v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    .line 282
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    .line 283
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 284
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x10002

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 287
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const v3, 0x10c0508

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 293
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v3, 0x7e4

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 294
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    sget v3, Lcom/coloros/common/util/ResourceUtil;->android_style_Animation_Toast:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 295
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v3, -0x3

    .line 296
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 297
    const-class v3, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, -0x1

    .line 298
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v4, 0x33

    .line 300
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x436a0000    # 234.0f

    .line 302
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    const/16 v5, 0x13

    .line 306
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 309
    :cond_2
    invoke-direct {p0, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 315
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 316
    iget-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 317
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 318
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x700

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0d008c

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->setContentView(I)V

    .line 323
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a061d

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    .line 324
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a0369

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeMain:Landroid/widget/LinearLayout;

    .line 325
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a0206

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogMain:Landroid/view/ViewGroup;

    .line 326
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v3, 0x7f0a036b

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mBackground:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 331
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 332
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    new-instance v2, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$mUtCmMaiDDHGnJRDOA-mr6Y3h8A;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$mUtCmMaiDDHGnJRDOA-mr6Y3h8A;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 351
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$SVAdZ55brsmzWQmXiyZ_a1XWOVk;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$SVAdZ55brsmzWQmXiyZ_a1XWOVk;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 359
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v2, 0x7f0a061f

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    .line 360
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v2, 0x7f0a04ba

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    .line 361
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    const v2, 0x7f0a04bc

    .line 362
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v2, 0x7f0a0521

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsView:Landroid/view/View;

    .line 366
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v2, 0x7f0a051e

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    .line 369
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v2, 0x7f0a021e

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDoubleEarView:Landroid/view/View;

    .line 370
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v2, 0x7f0a021d

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDoubleEarIcon:Landroid/widget/ImageButton;

    .line 373
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v2, 0x7f0a0622

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeHeaderMsg:Landroid/widget/TextView;

    .line 375
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v2, 0x7f0a0620

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeDivider:Landroid/view/View;

    .line 376
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    const v2, 0x7f0a0621

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDivider:Landroid/view/View;

    .line 378
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 379
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v3, 0xa

    const v4, 0x7f081207

    const v5, 0x7f081207

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    .line 380
    invoke-direct/range {v2 .. v7}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addRow(IIIZZ)V

    :cond_4
    const/4 v9, 0x3

    const v10, 0x7f08120c

    const v11, 0x7f08120f

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v8, p0

    .line 383
    invoke-direct/range {v8 .. v13}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addRow(IIIZZ)V

    .line 385
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v3, 0x2

    const v4, 0x7f081214

    const v5, 0x7f081215

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    .line 386
    invoke-direct/range {v2 .. v7}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v9, 0x4

    const v10, 0x7f081208

    const v11, 0x7f081208

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v8, p0

    .line 388
    invoke-direct/range {v8 .. v13}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v3, 0x0

    const v4, 0x7f081218

    const v5, 0x7f081218

    const/4 v6, 0x0

    .line 390
    invoke-direct/range {v2 .. v7}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v9, 0x6

    const v10, 0x7f08120a

    const v11, 0x7f08120a

    const/4 v12, 0x0

    .line 392
    invoke-direct/range {v8 .. v13}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addRow(IIIZZ)V

    const/4 v3, 0x1

    const v4, 0x7f081214

    const v5, 0x7f081215

    .line 394
    invoke-direct/range {v2 .. v7}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addRow(IIIZZ)V

    goto :goto_0

    .line 398
    :cond_5
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addExistingRows()V

    .line 400
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getActiveRow()Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateRowsH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    .line 401
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->initRingerH()V

    .line 402
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->initSettingsH()V

    .line 403
    iput-boolean v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    return-void
.end method

.method private initRow(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;IIIZZ)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 494
    invoke-static {p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$302(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I

    .line 495
    invoke-static {p1, p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$402(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I

    .line 496
    invoke-static {p1, p4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$502(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I

    .line 497
    invoke-static {p1, p5}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$602(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z

    .line 498
    invoke-static {p1, p6}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$702(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z

    .line 499
    iget-object p4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    invoke-virtual {p4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p4

    const/4 p5, 0x0

    const p6, 0x7f0d008d

    invoke-virtual {p4, p6, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$202(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;

    .line 500
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p4

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p6

    invoke-virtual {p4, p6}, Landroid/view/View;->setId(I)V

    .line 501
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 502
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p4

    const p6, 0x7f0a0216

    invoke-virtual {p4, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout;

    invoke-static {p1, p4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$802(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 503
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p4

    const p6, 0x7f0a0627

    invoke-virtual {p4, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/SeekBar;

    invoke-static {p1, p4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$902(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;

    .line 504
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p4

    new-instance p6, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;

    invoke-direct {p6, p0, p1, p5}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;)V

    invoke-virtual {p4, p6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 505
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p4

    iget-object p6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    const v0, 0x7f08122f

    invoke-virtual {p6, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p6

    invoke-virtual {p4, p6}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 506
    invoke-static {p1, p5}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1102(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 508
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object p4

    const p5, 0x7f0a0626

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageButton;

    invoke-static {p1, p4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1202(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    .line 509
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 510
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p3

    const/16 p4, 0xa

    if-eq p3, p4, :cond_0

    .line 511
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p3

    new-instance p4, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$zdFmmw0U0J6lOgrSfJQN7js96O4;

    invoke-direct {p4, p0, p1, p2}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$zdFmmw0U0J6lOgrSfJQN7js96O4;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)V

    invoke-virtual {p3, p4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 538
    :cond_0
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method private isBlueToothHeadSet(ZLjava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)Z"
        }
    .end annotation

    .line 933
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 934
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v0

    .line 935
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->isNormalDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device is connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Bluetooth Class = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Volume"

    const-string v3, "DOUBLE_EAR"

    .line 936
    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 943
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p2

    const/16 v0, 0x400

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method private isLandscape()Z
    .locals 1

    .line 408
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getSingleUnpressFor$10(Landroid/widget/ImageButton;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1661
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method private maybeShowToastH(I)V
    .locals 5

    .line 789
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "RingerGuidanceCount"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xc

    if-le v0, v3, :cond_0

    return-void

    :cond_0
    const v3, 0x7f110292

    if-eqz p1, :cond_2

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    .line 804
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 797
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f110291

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 800
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 807
    :goto_0
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    add-int/lit8 v0, v0, 0x1

    .line 809
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private provideTouchFeedbackH(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 763
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->scheduleTouchFeedback()V

    :goto_0
    return-void
.end method

.method private recheckH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V
    .locals 4

    const-string v0, "ColorVolumeDialogImpl"

    const-string v1, "Volume"

    if-nez p1, :cond_0

    const-string p1, "recheckH ALL"

    .line 1591
    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1592
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->trimObsoleteH()V

    .line 1593
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 1594
    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateVolumeRowH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    .line 1597
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recheckH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateVolumeRowH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    :cond_1
    return-void
.end method

.method private resetDensity()V
    .locals 3

    .line 2093
    iget v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mInitialDisplayDensity:I

    if-gtz v0, :cond_0

    .line 2095
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 2096
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mInitialDisplayDensity:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultDisplay getInitialDisplayDensity, e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogImpl"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    iget v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->DIALOG_DENSITY_DPI:I

    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mInitialDisplayDensity:I

    .line 2102
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2103
    iget v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mInitialDisplayDensity:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 2104
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method private ringerResource()I
    .locals 2

    .line 2056
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibrate_when_ringing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f081216

    return p0

    :cond_0
    const p0, 0x7f081214

    return p0
.end method

.method private setStreamImportantH(IZ)V
    .locals 2

    .line 1603
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 1604
    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1605
    invoke-static {v0, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$602(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z

    :cond_1
    return-void
.end method

.method private shouldBeVisibleH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z
    .locals 5

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldBeVisibleH stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " row.stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mTempImportantStrem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mTempImportantStrem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogImpl"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v0

    invoke-static {p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1099
    :goto_0
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    .line 1100
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowA11yStream:Z

    return p0

    .line 1105
    :cond_1
    invoke-static {p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p2

    if-ne p2, v4, :cond_2

    .line 1106
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p2

    iget v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mPrevActiveStream:I

    if-ne p2, v1, :cond_2

    return v3

    :cond_2
    if-eqz v0, :cond_4

    .line 1110
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p2

    if-eqz p2, :cond_3

    .line 1111
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p2

    const/4 v1, 0x6

    if-ne p2, v1, :cond_4

    .line 1112
    :cond_3
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p2

    iput p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mTempImportantStrem:I

    :cond_4
    if-eqz v0, :cond_5

    return v3

    :cond_5
    if-eqz p3, :cond_7

    .line 1119
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$600(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Z

    move-result p2

    if-nez p2, :cond_6

    iget p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mTempImportantStrem:I

    .line 1120
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p1

    if-ne p0, p1, :cond_7

    :cond_6
    return v3

    :cond_7
    return v2
.end method

.method private showActiveStreamOnly()Z
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1085
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.television"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

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

.method private showH(I)V
    .locals 6

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showH r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/coloros/systemui/volume/Events;->SHOW_REASONS:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogImpl"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->removeMessages(I)V

    .line 823
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->removeMessages(I)V

    .line 824
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 825
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mConfigChanged:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->dismiss()V

    .line 829
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->initDialog()V

    .line 830
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mConfigurableTexts:Lcom/android/systemui/volume/ConfigurableTexts;

    invoke-virtual {v0}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    .line 831
    iput-boolean v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mConfigChanged:Z

    .line 835
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 836
    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mTempImportantStrem:I

    .line 837
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getActiveRow()Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    move-result-object v0

    .line 838
    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateRowsH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    .line 841
    :cond_2
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    if-nez v0, :cond_3

    .line 842
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    invoke-direct {p0, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getVisibleRowCount(Z)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2c

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 844
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    invoke-direct {p0, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getVisibleRowCount(Z)I

    move-result v4

    mul-int/lit8 v4, v4, 0x36

    add-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 847
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->initSettingsH()V

    .line 848
    iput-boolean v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    .line 849
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->show()V

    .line 850
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    if-eqz v0, :cond_4

    .line 851
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v5

    invoke-direct {p0, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v4

    invoke-virtual {v0, v5, v3, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 852
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 853
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 854
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 857
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 858
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 862
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 864
    :goto_1
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v3, v2}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 867
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->checkAndShowDoubleEarButton()V

    .line 870
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->notifyVisible(Z)V

    return-void
.end method

.method private showSafetyWarningH(I)V
    .locals 3

    and-int/lit16 p1, p1, 0x401

    if-nez p1, :cond_0

    .line 1612
    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_2

    .line 1614
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1615
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSafetyWarning:Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;

    if-eqz v0, :cond_1

    .line 1616
    monitor-exit p1

    return-void

    .line 1618
    :cond_1
    new-instance v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$4;

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$4;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;Landroid/content/Context;Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSafetyWarning:Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;

    .line 1627
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSafetyWarning:Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->show()V

    .line 1628
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 1629
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->recheckH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    .line 1631
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->rescheduleTimeoutH()V

    return-void

    :catchall_0
    move-exception p0

    .line 1628
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private startExpendVolumeDialogAnimator()V
    .locals 10

    const/4 v0, 0x0

    .line 599
    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getVisibleRowCount(Z)I

    move-result v1

    const/4 v2, 0x1

    .line 600
    invoke-direct {p0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getVisibleRowCount(Z)I

    move-result v3

    .line 601
    iget-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 602
    iget-object v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 603
    iget-object v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 604
    new-instance v4, Lcom/coloros/systemui/volume/VolumeAnimator;

    iget-object v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/coloros/systemui/volume/VolumeAnimator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->volumeAnimator:Lcom/coloros/systemui/volume/VolumeAnimator;

    .line 605
    iget-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->volumeAnimator:Lcom/coloros/systemui/volume/VolumeAnimator;

    iget-object v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mBackground:Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/coloros/systemui/volume/VolumeAnimator;->setView(Landroid/view/View;)Lcom/coloros/systemui/volume/VolumeAnimator;

    .line 606
    iget-object v4, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->volumeAnimator:Lcom/coloros/systemui/volume/VolumeAnimator;

    mul-int/lit8 v1, v1, 0x2c

    int-to-float v1, v1

    mul-int/lit8 v3, v3, 0x36

    add-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    const/16 v5, 0x190

    invoke-virtual {v4, v1, v3, v5}, Lcom/coloros/systemui/volume/VolumeAnimator;->setChangeWidthAnim(FFI)Lcom/coloros/systemui/volume/VolumeAnimator;

    .line 607
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->volumeAnimator:Lcom/coloros/systemui/volume/VolumeAnimator;

    const v3, 0x438255c3

    const v4, 0x4373ab85    # 243.67f

    invoke-virtual {v1, v3, v4, v5}, Lcom/coloros/systemui/volume/VolumeAnimator;->setChangeHeightAnim(FFI)Lcom/coloros/systemui/volume/VolumeAnimator;

    .line 608
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->volumeAnimator:Lcom/coloros/systemui/volume/VolumeAnimator;

    invoke-virtual {v1}, Lcom/coloros/systemui/volume/VolumeAnimator;->start()V

    .line 610
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->isLandscape()Z

    move-result v1

    const-wide/16 v3, 0x190

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "translationY"

    if-eqz v1, :cond_0

    const-string v1, "Volume"

    const-string v8, "ColorVolumeDialogImpl"

    const-string v9, "is land"

    .line 611
    invoke-static {v1, v8, v9}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogMain:Landroid/view/ViewGroup;

    new-array v8, v6, [F

    aput v5, v8, v0

    const v9, 0x417570a4    # 15.34f

    invoke-direct {p0, v9}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v8, v2

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transDmLandY:Landroid/animation/ObjectAnimator;

    .line 614
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transDmLandY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 615
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transDmLandY:Landroid/animation/ObjectAnimator;

    sget-object v8, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->VOLUME_MAIN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 616
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transDmLandY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 618
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeMain:Landroid/widget/LinearLayout;

    new-array v6, v6, [F

    aput v5, v6, v0

    const v0, 0x3ebd70a4    # 0.37f

    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v0

    int-to-float v0, v0

    aput v0, v6, v2

    invoke-static {v1, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transMainLandY:Landroid/animation/ObjectAnimator;

    .line 619
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transMainLandY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 620
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transMainLandY:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->VOLUME_MAIN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 621
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transMainLandY:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mBackground:Landroid/view/View;

    new-array v8, v6, [F

    aput v5, v8, v0

    const v9, 0x414547ae    # 12.33f

    invoke-direct {p0, v9}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v2

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transBgY:Landroid/animation/ObjectAnimator;

    .line 624
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transBgY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 625
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transBgY:Landroid/animation/ObjectAnimator;

    sget-object v8, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->VOLUME_MAIN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 626
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transBgY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 628
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeMain:Landroid/widget/LinearLayout;

    new-array v6, v6, [F

    aput v5, v6, v0

    const v0, 0x414e6666    # 12.9f

    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v0

    int-to-float v0, v0

    aput v0, v6, v2

    invoke-static {v1, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transMainY:Landroid/animation/ObjectAnimator;

    .line 629
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transMainY:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 630
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transMainY:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->VOLUME_MAIN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 631
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transMainY:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method private trimObsoleteH()V
    .locals 4

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    const-string v2, "trimObsoleteH"

    .line 1295
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1297
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 1298
    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_0

    goto :goto_1

    .line 1299
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1300
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1301
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateExpandedHAnim(ZZ)V
    .locals 2

    .line 699
    iget-boolean p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    if-ne p2, p1, :cond_0

    return-void

    .line 700
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    .line 701
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateExpandedH "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    invoke-static {v0, v1, p2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getActiveRow()Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    move-result-object p2

    .line 703
    invoke-direct {p0, p2, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateRowsHAnim(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)V

    .line 704
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->rescheduleTimeoutH()V

    return-void
.end method

.method private updateOrientation()V
    .locals 3

    .line 2110
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2114
    :cond_0
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mOri:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrientation e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogImpl"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2117
    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mOri:I

    .line 2119
    :goto_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2120
    iget v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mOri:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2121
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method private updateRealmeRingerMode()I
    .locals 3

    .line 2142
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2144
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget p0, p0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    if-ne p0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private updateRowsH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V
    .locals 6

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    const-string v2, "updateRowsH"

    .line 1127
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_0

    .line 1129
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->trimObsoleteH()V

    .line 1132
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1134
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateRowsH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)V

    return-void

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    if-ne v2, p1, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v3

    .line 1139
    :goto_1
    invoke-direct {p0, v2, p1, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->shouldBeVisibleH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z

    move-result v3

    .line 1140
    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/coloros/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1141
    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1142
    invoke-direct {p0, v2, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateVolumeRowTintH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)V

    goto :goto_0

    .line 1147
    :cond_4
    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    if-eqz p1, :cond_5

    .line 1148
    invoke-direct {p0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getVisibleRowCount(Z)I

    move-result p1

    mul-int/lit8 p1, p1, 0x36

    add-int/lit8 p1, p1, 0xa

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result p1

    const/high16 v0, 0x43740000    # 244.0f

    .line 1149
    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v0

    goto :goto_2

    .line 1151
    :cond_5
    invoke-direct {p0, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getVisibleRowCount(Z)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2c

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result p1

    const/high16 v0, 0x43820000    # 260.0f

    .line 1152
    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v0

    .line 1154
    :goto_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1155
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRowsH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)V
    .locals 5

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    const-string v2, "updateRowsH"

    .line 1171
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    if-nez v0, :cond_0

    .line 1173
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->trimObsoleteH()V

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1178
    :goto_1
    invoke-direct {p0, v1, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->shouldBeVisibleH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z

    move-result v3

    .line 1179
    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/coloros/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 1180
    invoke-static {v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1181
    invoke-direct {p0, v1, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateVolumeRowTintH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)V

    goto :goto_0

    .line 1186
    :cond_3
    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    if-eqz p1, :cond_4

    .line 1187
    invoke-direct {p0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getVisibleRowCount(Z)I

    move-result p1

    mul-int/lit8 p1, p1, 0x36

    add-int/lit8 p1, p1, 0xa

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result p1

    const/high16 p2, 0x43740000    # 244.0f

    .line 1188
    invoke-direct {p0, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result p2

    goto :goto_2

    .line 1190
    :cond_4
    invoke-direct {p0, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getVisibleRowCount(Z)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2c

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result p1

    const/high16 p2, 0x43820000    # 260.0f

    .line 1191
    invoke-direct {p0, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result p2

    .line 1193
    :goto_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1194
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateRowsHAnim(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)V
    .locals 11

    const-string v0, "ColorVolumeDialogImpl"

    const-string v1, "Volume"

    const-string v2, "updateRowsH1"

    .line 708
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-boolean v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    if-nez v2, :cond_0

    .line 710
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->trimObsoleteH()V

    .line 712
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "row size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 713
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 714
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    if-ne v2, p1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    .line 716
    :goto_1
    invoke-direct {p0, v2, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->shouldBeVisibleH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z

    move-result v5

    .line 717
    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/coloros/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 718
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 719
    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [F

    neg-int v9, v1

    mul-int/lit8 v9, v9, 0x36

    add-int/lit8 v9, v9, -0xa

    int-to-float v9, v9

    invoke-direct {p0, v9}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v0

    const/4 v9, 0x0

    aput v9, v8, v3

    const-string v9, "translationX"

    invoke-static {v6, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-string v8, "alpha"

    if-nez v1, :cond_2

    .line 722
    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v9

    new-array v10, v7, [F

    fill-array-data v10, :array_0

    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    goto :goto_2

    .line 724
    :cond_2
    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v9

    new-array v10, v7, [F

    fill-array-data v10, :array_1

    invoke-static {v9, v8, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    :goto_2
    const-wide/16 v9, 0x190

    .line 726
    invoke-virtual {v5, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 727
    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v6, v7, v0

    aput-object v8, v7, v3

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 728
    sget-object v3, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->VOLUME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 729
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 730
    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 731
    invoke-direct {p0, v2, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateVolumeRowTintH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 736
    :cond_4
    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    if-eqz p1, :cond_5

    .line 737
    invoke-direct {p0, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getVisibleRowCount(Z)I

    move-result p1

    mul-int/lit8 p1, p1, 0x36

    add-int/lit8 p1, p1, 0xa

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result p1

    const/high16 p2, 0x43740000    # 244.0f

    .line 738
    invoke-direct {p0, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result p2

    goto :goto_3

    .line 740
    :cond_5
    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getVisibleRowCount(Z)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2c

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result p1

    const/high16 p2, 0x43820000    # 260.0f

    .line 741
    invoke-direct {p0, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result p2

    .line 743
    :goto_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 744
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateVolumeRowH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVolumeRowH s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColorVolumeDialogImpl"

    const-string v4, "Volume"

    invoke-static {v4, v3, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    iget-object v2, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    if-nez v2, :cond_0

    return-void

    .line 1372
    :cond_0
    iget-object v2, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    if-nez v2, :cond_1

    return-void

    .line 1374
    :cond_1
    invoke-static {v1, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1502(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    .line 1375
    iget v5, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    if-lez v5, :cond_2

    .line 1376
    iget v5, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    invoke-static {v1, v5}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1602(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I

    .line 1378
    :cond_2
    iget v5, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v5, -0x1

    .line 1379
    invoke-static {v1, v5}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1702(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I

    .line 1381
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v5

    const/16 v6, 0xa

    const/4 v8, 0x1

    if-ne v5, v6, :cond_4

    move v5, v8

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    .line 1382
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_5

    move v6, v8

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    .line 1383
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v10

    if-ne v10, v8, :cond_6

    move v10, v8

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    .line 1384
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_7

    move v11, v8

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 1385
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    move v12, v8

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    if-eqz v6, :cond_9

    .line 1386
    iget-object v14, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v14, v14, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    if-ne v14, v8, :cond_9

    move v14, v8

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    if-eqz v6, :cond_a

    .line 1388
    iget-object v15, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v15, v15, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    .line 1390
    :cond_a
    iget-object v15, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v15, v15, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    if-ne v15, v8, :cond_b

    move v15, v8

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    .line 1391
    :goto_6
    iget-object v7, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v7, v7, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    if-ne v7, v13, :cond_c

    move v7, v8

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    .line 1392
    :goto_7
    iget-object v13, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v13, v13, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    if-ne v13, v9, :cond_d

    move v13, v8

    goto :goto_8

    :cond_d
    const/4 v13, 0x0

    :goto_8
    if-eqz v7, :cond_f

    if-nez v6, :cond_e

    if-eqz v10, :cond_14

    :cond_e
    :goto_9
    move v7, v8

    goto :goto_a

    :cond_f
    if-eqz v13, :cond_10

    if-nez v6, :cond_e

    if-nez v10, :cond_e

    if-nez v11, :cond_e

    if-eqz v12, :cond_14

    goto :goto_9

    :cond_10
    if-eqz v15, :cond_14

    if-eqz v11, :cond_11

    .line 1393
    iget-object v7, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowAlarms:Z

    if-nez v7, :cond_e

    :cond_11
    if-eqz v12, :cond_12

    iget-object v7, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowMedia:Z

    if-nez v7, :cond_e

    :cond_12
    if-eqz v6, :cond_13

    iget-object v7, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowRinger:Z

    if-nez v7, :cond_e

    :cond_13
    if-eqz v10, :cond_14

    iget-object v7, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v7, v7, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowSystem:Z

    if-eqz v7, :cond_14

    goto :goto_9

    :cond_14
    const/4 v7, 0x0

    .line 1401
    :goto_a
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v10

    if-nez v10, :cond_15

    move v10, v8

    goto :goto_b

    :cond_15
    const/4 v10, 0x0

    .line 1404
    :goto_b
    iget v11, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMax:I

    mul-int/lit8 v11, v11, 0x64

    .line 1405
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getMax()I

    move-result v13

    if-eq v11, v13, :cond_16

    .line 1406
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1410
    :cond_16
    iget-boolean v11, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAutomute:Z

    if-nez v11, :cond_17

    iget-boolean v11, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muteSupported:Z

    if-eqz v11, :cond_18

    :cond_17
    if-nez v7, :cond_18

    move v11, v8

    goto :goto_c

    :cond_18
    const/4 v11, 0x0

    .line 1411
    :goto_c
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1412
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v13

    if-eqz v11, :cond_19

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_19
    const/high16 v15, 0x3f000000    # 0.5f

    :goto_d
    invoke-virtual {v13, v15}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1413
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muted:Z

    const v15, 0x3e99999a    # 0.3f

    if-eqz v13, :cond_1a

    .line 1414
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v13

    invoke-virtual {v13, v15}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1416
    :cond_1a
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v13

    .line 1417
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stream:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v8

    invoke-static {v8}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  level:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  routedTowired:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToWired:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "  routedToBlue:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToBluetooth:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " row.ss.muted:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muted:Z

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " ringerModeExternal:"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v8, v8, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeExternal:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1417
    invoke-static {v4, v3, v8}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f08120d

    const v4, 0x7f08120e

    const v8, 0x7f081217

    if-eqz v6, :cond_1d

    .line 1421
    iget-object v9, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v9, v9, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    if-nez v9, :cond_1b

    const v13, 0x7f081215

    .line 1423
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto/16 :goto_13

    .line 1424
    :cond_1b
    iget-object v9, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v9, v9, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1c

    move v13, v8

    goto/16 :goto_13

    .line 1427
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->ringerResource()I

    move-result v13

    goto/16 :goto_13

    :cond_1d
    if-eqz v12, :cond_25

    .line 1430
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v9

    iget v9, v9, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    if-nez v9, :cond_21

    .line 1431
    iget-boolean v9, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToWired:Z

    if-eqz v9, :cond_1f

    iget-object v9, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v9, v9, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->isDeviceHasMic:Z

    if-eqz v9, :cond_1e

    const v9, 0x7f08121e

    goto :goto_e

    :cond_1e
    const v9, 0x7f08121f

    goto :goto_e

    :cond_1f
    iget-boolean v9, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v9, :cond_20

    move v13, v4

    goto :goto_f

    :cond_20
    const v9, 0x7f08120f

    :goto_e
    move v13, v9

    .line 1433
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto :goto_13

    .line 1435
    :cond_21
    iget-boolean v9, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToWired:Z

    if-eqz v9, :cond_23

    iget-object v9, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v9, v9, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->isDeviceHasMic:Z

    if-eqz v9, :cond_22

    const v9, 0x7f08121d

    goto :goto_10

    :cond_22
    const v9, 0x7f08121c

    goto :goto_10

    :cond_23
    iget-boolean v9, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToBluetooth:Z

    if-eqz v9, :cond_24

    move v13, v3

    goto :goto_13

    :cond_24
    const v9, 0x7f08120c

    :goto_10
    move v13, v9

    goto :goto_13

    :cond_25
    if-eqz v10, :cond_2a

    .line 1439
    iget-object v9, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v9

    .line 1440
    iget-boolean v10, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->routedToWired:Z

    if-eqz v10, :cond_27

    iget-object v10, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v10, v10, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->isDeviceHasMic:Z

    if-eqz v10, :cond_26

    const v10, 0x7f08121a

    goto :goto_11

    :cond_26
    const v10, 0x7f081219

    goto :goto_11

    :cond_27
    if-eqz v9, :cond_28

    const v10, 0x7f08121b

    goto :goto_11

    :cond_28
    const v10, 0x7f081218

    :goto_11
    move v13, v10

    .line 1442
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v10

    if-eqz v9, :cond_29

    const v9, 0x7f1107e4

    goto :goto_12

    :cond_29
    const v9, 0x7f1107e3

    :goto_12
    iput v9, v10, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->name:I

    .line 1445
    :cond_2a
    :goto_13
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/widget/ImageButton;->setImageResource(I)V

    if-ne v13, v8, :cond_2b

    const/4 v3, 0x3

    goto :goto_16

    :cond_2b
    if-eq v13, v4, :cond_2f

    .line 1448
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v4

    if-ne v13, v4, :cond_2c

    goto :goto_15

    :cond_2c
    if-eq v13, v3, :cond_2e

    .line 1450
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v3

    if-ne v13, v3, :cond_2d

    goto :goto_14

    :cond_2d
    const/4 v3, 0x0

    goto :goto_16

    :cond_2e
    :goto_14
    const/4 v3, 0x1

    goto :goto_16

    :cond_2f
    :goto_15
    const/4 v3, 0x2

    .line 1446
    :goto_16
    invoke-static {v1, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1802(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I

    if-eqz v11, :cond_39

    const v3, 0x7f110898

    const v4, 0x7f110897

    const v8, 0x7f110899

    if-eqz v6, :cond_34

    if-eqz v14, :cond_30

    .line 1456
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 1458
    invoke-direct {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v6, v5

    .line 1456
    invoke-virtual {v4, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1460
    :cond_30
    iget-object v5, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-interface {v5}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1461
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v5, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v5, :cond_31

    const v5, 0x7f11089b

    goto :goto_17

    :cond_31
    const v5, 0x7f11089a

    :goto_17
    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    .line 1465
    invoke-direct {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v8, v6

    .line 1461
    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1467
    :cond_32
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v5

    iget-object v6, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v8, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v8, :cond_33

    goto :goto_18

    :cond_33
    move v3, v4

    :goto_18
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/Object;

    .line 1471
    invoke-direct {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v8, v4

    .line 1467
    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_19

    :cond_34
    if-eqz v5, :cond_35

    .line 1475
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-direct {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_19
    const/4 v9, 0x0

    goto :goto_1c

    .line 1477
    :cond_35
    iget-boolean v5, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muted:Z

    if-nez v5, :cond_38

    iget-boolean v5, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAutomute:Z

    if-eqz v5, :cond_36

    iget v5, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    if-nez v5, :cond_36

    goto :goto_1b

    .line 1482
    :cond_36
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v5

    iget-object v6, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    iget-boolean v8, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowA11yStream:Z

    if-eqz v8, :cond_37

    goto :goto_1a

    :cond_37
    move v3, v4

    :goto_1a
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/Object;

    .line 1486
    invoke-direct {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 1482
    invoke-virtual {v6, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_38
    :goto_1b
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 1478
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v5, v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v6, v4, [Ljava/lang/Object;

    .line 1480
    invoke-direct {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    .line 1478
    invoke-virtual {v5, v8, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_39
    const/4 v9, 0x0

    .line 1490
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-direct {v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1c
    if-eqz v7, :cond_3a

    .line 1495
    invoke-static {v1, v9}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1902(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z

    :cond_3a
    const/4 v2, 0x1

    xor-int/lit8 v3, v7, 0x1

    .line 1497
    invoke-direct {v0, v1, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->enableVolumeRowViewsH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)V

    .line 1504
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muted:Z

    if-eqz v3, :cond_3b

    move v7, v9

    goto :goto_1d

    :cond_3b
    invoke-static/range {p1 .. p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v3

    iget v7, v3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    .line 1505
    :goto_1d
    invoke-direct {v0, v1, v2, v7}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateVolumeRowSliderH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;ZI)V

    return-void
.end method

.method private updateVolumeRowSliderH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;ZI)V
    .locals 9

    .line 1515
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1516
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p2

    iget v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mActiveStream:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateVolumeRowTintH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)V

    .line 1517
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 1520
    :cond_1
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    .line 1521
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getImpliedLevel(Landroid/widget/SeekBar;I)I

    move-result v0

    .line 1522
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1523
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$2000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v1

    .line 1525
    :goto_2
    iget-object v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 v8, 0x3

    invoke-virtual {v5, v8, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->removeMessages(ILjava/lang/Object;)V

    .line 1526
    iget-boolean v5, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    const-string p2, "Volume"

    const-string p3, "ColorVolumeDialogImpl"

    const-string v0, "inGracePeriod"

    .line 1527
    invoke-static {p2, p3, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    invoke-virtual {p0, v8, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1529
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$2000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)J

    move-result-wide v0

    add-long/2addr v0, v6

    .line 1528
    invoke-virtual {p0, p2, v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :cond_4
    if-ne p3, v0, :cond_5

    .line 1533
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    return-void

    :cond_5
    mul-int/lit8 p3, p3, 0x64

    if-eq p2, p3, :cond_c

    .line 1539
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    if-eqz p0, :cond_a

    if-eqz v3, :cond_a

    .line 1559
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_9

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p0

    if-ne p0, v8, :cond_6

    goto :goto_4

    .line 1562
    :cond_6
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1563
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p0

    if-ne p0, p3, :cond_7

    return-void

    .line 1567
    :cond_7
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-nez p0, :cond_8

    .line 1568
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    new-array v0, v0, [I

    aput p2, v0, v1

    aput p3, v0, v2

    const-string p2, "progress"

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1102(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 1569
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    .line 1571
    :cond_8
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1572
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-array v0, v0, [I

    aput p2, v0, v1

    aput p3, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 1574
    :goto_3
    invoke-static {p1, p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$2102(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I

    .line 1575
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p2, 0x50

    invoke-virtual {p0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1576
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_5

    .line 1560
    :cond_9
    :goto_4
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p3, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_5

    .line 1581
    :cond_a
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1582
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1584
    :cond_b
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p3, v2}, Landroid/widget/SeekBar;->setProgress(IZ)V

    :cond_c
    :goto_5
    return-void
.end method

.method private updateVolumeRowTintH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1510
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method composeWindowTitle()Ljava/lang/CharSequence;
    .locals 3

    .line 1366
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getActiveRow()Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getStreamLabelH(Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const p0, 0x7f11088b

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public destroy()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->removeCallback(Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;)V

    .line 257
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 258
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public dismiss(I)V
    .locals 2

    .line 817
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected dismissH(I)V
    .locals 5

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDialog.dismiss() reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mExpanded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDismissing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDismissing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogImpl"

    .line 972
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDismissing:Z

    if-eqz v0, :cond_0

    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 978
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->removeMessages(I)V

    .line 981
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->removeMessages(I)V

    .line 982
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 983
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 984
    iput-boolean v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    .line 986
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 988
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->volumeAnimator:Lcom/coloros/systemui/volume/VolumeAnimator;

    if-eqz p1, :cond_3

    .line 989
    invoke-virtual {p1}, Lcom/coloros/systemui/volume/VolumeAnimator;->cancel()V

    .line 991
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transBgY:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    .line 992
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 994
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transMainY:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_5

    .line 995
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 997
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transDmLandY:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_6

    .line 998
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1000
    :cond_6
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->transMainLandY:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_7

    .line 1001
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1003
    :cond_7
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeHeaderMsg:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeDivider:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1006
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1007
    iput-boolean v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDismissing:Z

    .line 1008
    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    const/4 v1, -0x2

    if-eqz p1, :cond_b

    .line 1009
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v0, 0x419a6666    # 19.3f

    .line 1010
    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1011
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1013
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x43828000    # 261.0f

    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v0

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1014
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeMain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1015
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeMain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 1018
    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v4, 0x42300000    # 44.0f

    invoke-direct {p0, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 1021
    :cond_8
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDivider:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1023
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1024
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mBackground:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDivider:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1028
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 1029
    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 1032
    :cond_9
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1033
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1035
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mBackground:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1036
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeMain:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1037
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1038
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogMain:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1040
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x3

    .line 1041
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1042
    const-class v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x33

    .line 1043
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v0, 0x436a0000    # 234.0f

    .line 1045
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0x13

    .line 1049
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move v0, v3

    .line 1053
    :cond_a
    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1054
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1055
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1056
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1057
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    invoke-virtual {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->dismiss()V

    .line 1058
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->notifyVisible(Z)V

    .line 1059
    iput-boolean v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDismissing:Z

    goto :goto_2

    .line 1061
    :cond_b
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1062
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v3, 0xfa

    .line 1063
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->VOLUME_BAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1064
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$QGMAcnCinqzqnc2O7H4F8FeACKY;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$QGMAcnCinqzqnc2O7H4F8FeACKY;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    .line 1065
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1071
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 1072
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1074
    :goto_2
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSafetyWarningLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1075
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSafetyWarning:Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;

    if-eqz v0, :cond_c

    const-string v0, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    const-string v3, "SafetyWarning dismissed"

    .line 1076
    invoke-static {v0, v1, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSafetyWarning:Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->dismiss()V

    .line 1079
    :cond_c
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    iput-boolean v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    return-void

    :catchall_0
    move-exception p0

    .line 1079
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mShowing: "

    .line 476
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mActiveStream: "

    .line 477
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mActiveStream:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mDynamic: "

    .line 478
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mAutomute: "

    .line 479
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAutomute:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mSilentMode: "

    .line 480
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSilentMode:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public init(ILcom/android/systemui/plugins/VolumeDialog$Callback;)V
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->initDialog()V

    .line 248
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAccessibility:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;

    invoke-virtual {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$Accessibility;->init()V

    .line 249
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    iget-object p2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mControllerCallbackH:Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;

    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->addCallback(Lcom/android/systemui/plugins/ColorVolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 250
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->getState()V

    .line 251
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public initRingerH()V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 637
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAccessibilityLiveRegion(I)V

    .line 638
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$vn3oOihvo-X4eppQEAPXDaAtYL4;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$vn3oOihvo-X4eppQEAPXDaAtYL4;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 688
    new-instance v1, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$_9DIdHlYrbBFW2U1rGsA0Fa6RGg;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$_9DIdHlYrbBFW2U1rGsA0Fa6RGg;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateRingerH()V

    return-void
.end method

.method public initSettingsH()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 544
    new-instance v1, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$7KEmp-c_aIICSAgmWfU0RKdCnsc;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$7KEmp-c_aIICSAgmWfU0RKdCnsc;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$dismissH$8$ColorVolumeDialogImpl()V
    .locals 4

    .line 1065
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    new-instance v1, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$O8skqddTfotHYlCib3ioSmeTxF8;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$O8skqddTfotHYlCib3ioSmeTxF8;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$getSinglePressFor$9$ColorVolumeDialogImpl(Landroid/widget/ImageButton;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1652
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 1653
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getSingleUnpressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/ImageButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initDialog$1$ColorVolumeDialogImpl(Landroid/content/DialogInterface;)V
    .locals 2

    .line 333
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 334
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 335
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 336
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    .line 338
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->VOLUME_BAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$FNrocXdG5TDrFD-9TOheabAWjSs;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/volume/-$$Lambda$ColorVolumeDialogImpl$FNrocXdG5TDrFD-9TOheabAWjSs;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    .line 340
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 348
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public synthetic lambda$initDialog$2$ColorVolumeDialogImpl(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 352
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p2

    .line 353
    :goto_1
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHovering:Z

    .line 355
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->rescheduleTimeoutH()V

    return p2
.end method

.method public synthetic lambda$initRingerH$5$ColorVolumeDialogImpl(Landroid/view/View;)V
    .locals 5

    .line 639
    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 640
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dismissH(I)V

    return-void

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 644
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "TouchedRingerToggle"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 645
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-object p1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    if-nez p1, :cond_1

    return-void

    .line 651
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "vibrate_when_silent"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v2

    .line 664
    :goto_0
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v3

    if-nez v3, :cond_5

    .line 665
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v3, v3, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    if-ne v3, v1, :cond_4

    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_1

    :cond_3
    move p1, v2

    goto :goto_1

    :cond_4
    move p1, v1

    goto :goto_1

    .line 675
    :cond_5
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateRealmeRingerMode()I

    move-result p1

    .line 678
    :goto_1
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VOLUME_BUTTON_SINGLE_RINGER"

    invoke-static {v1, v4, v3}, Lcom/coloros/systemui/volume/VolumeStatisticsUtil;->collectVolumePanelEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/16 v3, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v1, v3, v0}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 680
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->incrementManualToggleCount()V

    .line 681
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateRingerH()V

    .line 682
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->provideTouchFeedbackH(I)V

    .line 683
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-interface {v0, p1, v2}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->setRingerMode(IZ)V

    .line 684
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->maybeShowToastH(I)V

    return-void
.end method

.method public synthetic lambda$initRingerH$6$ColorVolumeDialogImpl(Landroid/view/View;)V
    .locals 0

    .line 689
    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 690
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dismissH(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initRow$3$ColorVolumeDialogImpl(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;ILandroid/view/View;)V
    .locals 5

    .line 512
    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x7

    invoke-static {p3, v2, v1}, Lcom/coloros/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 513
    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-interface {p3, v1}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->setActiveStream(I)V

    .line 514
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result p3

    const-string v1, "VOLUME_BUTTON_"

    if-ne p3, v0, :cond_3

    .line 516
    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v2, "vibrate_when_silent"

    invoke-static {p3, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-eqz p3, :cond_0

    move p3, v4

    goto :goto_0

    :cond_0
    move p3, v3

    .line 517
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    if-ne v2, v0, :cond_2

    if-eqz p3, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    .line 526
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-interface {p3, v0, v3}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->setRingerMode(IZ)V

    .line 527
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/coloros/systemui/volume/VolumeStatisticsUtil;->collectVolumePanelEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 530
    :cond_3
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object p3

    iget p3, p3, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMin:I

    if-ne p3, v0, :cond_4

    move v3, v4

    .line 531
    :cond_4
    iget-object p3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    if-eqz v3, :cond_5

    .line 532
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1600(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->levelMin:I

    .line 531
    :goto_2
    invoke-interface {p3, p2, v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->setStreamVolume(II)V

    .line 533
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz v3, :cond_6

    const-string p3, "0"

    goto :goto_3

    :cond_6
    const-string p3, "1"

    :goto_3
    invoke-static {p0, p2, p3}, Lcom/coloros/systemui/volume/VolumeStatisticsUtil;->collectVolumePanelEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-wide/16 p2, 0x0

    .line 535
    invoke-static {p1, p2, p3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$2002(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;J)J

    return-void
.end method

.method public synthetic lambda$initSettingsH$4$ColorVolumeDialogImpl(Landroid/view/View;)V
    .locals 5

    .line 545
    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 546
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dismissH(I)V

    :cond_0
    const-string p1, "Volume"

    const-string v1, "ColorVolumeDialogImpl"

    const-string v2, "SettingIcon clicked"

    .line 548
    invoke-static {p1, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 550
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 552
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f010082

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_2

    .line 554
    sget-object v2, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->VOLUME_MAIN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 555
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 556
    new-instance v2, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;-><init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;)V

    invoke-virtual {p1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 575
    invoke-virtual {p1}, Landroid/view/animation/AlphaAnimation;->start()V

    .line 577
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 578
    invoke-static {v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x42580000    # 54.0f

    invoke-direct {p0, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 580
    :cond_3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 581
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 582
    iget-object v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogRowsView:Landroid/view/ViewGroup;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-direct {p0, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->dp2Px(F)I

    move-result v3

    invoke-virtual {p1, v4, v2, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 584
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->startExpendVolumeDialogAnimator()V

    .line 585
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeDivider:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 587
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSettingsView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mVolumeHeaderMsg:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDoubleEarView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 592
    invoke-direct {p0, v0, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateExpandedHAnim(ZZ)V

    .line 593
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string p1, "VOLUME_BUTTON_EXPAND"

    const-string v0, "1"

    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/volume/VolumeStatisticsUtil;->collectVolumePanelEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$0$ColorVolumeDialogImpl()V
    .locals 3

    .line 341
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const-string v1, "TouchedRingerToggle"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getSinglePressFor(Landroid/widget/ImageButton;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x5dc

    .line 343
    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ImageButton;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$null$7$ColorVolumeDialogImpl()V
    .locals 2

    .line 1066
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialogView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1067
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDialog:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;

    invoke-virtual {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$CustomDialog;->dismiss()V

    .line 1068
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->notifyVisible(Z)V

    .line 1069
    iput-boolean v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDismissing:Z

    return-void
.end method

.method protected onStateChangedH(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChangedH() state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogImpl"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    iget v2, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    if-eq v0, v2, :cond_1

    iget v0, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    if-ne v0, v1, :cond_1

    .line 1314
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->vibrate(Landroid/os/VibrationEffect;)V

    .line 1317
    :cond_1
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    .line 1318
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v0, 0x0

    .line 1320
    :goto_0
    iget-object v2, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1321
    iget-object v2, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 1322
    iget-object v2, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    .line 1323
    iget-boolean v2, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->dynamic:Z

    if-nez v2, :cond_2

    goto :goto_1

    .line 1324
    :cond_2
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mDynamic:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1325
    invoke-direct {p0, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->findRow(I)Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1326
    sget v5, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_volume_remote:I

    sget v6, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_volume_remote_mute:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addRow(IIIZZZ)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1332
    :cond_4
    iget v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mActiveStream:I

    iget v1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->activeStream:I

    if-eq v0, v1, :cond_5

    .line 1333
    iget v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mActiveStream:I

    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mPrevActiveStream:I

    .line 1334
    iget p1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->activeStream:I

    iput p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mActiveStream:I

    .line 1335
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getActiveRow()Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    move-result-object p1

    .line 1336
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateRowsH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    .line 1337
    iget-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mShowing:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1339
    :cond_5
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 1340
    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateVolumeRowH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    goto :goto_2

    .line 1342
    :cond_6
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateRingerH()V

    .line 1343
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->composeWindowTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 1345
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->checkAndShowDoubleEarButton()V

    return-void
.end method

.method protected onStateChangedH(Lcom/android/systemui/plugins/ColorVolumeDialogController$State;I)V
    .locals 2

    .line 1350
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    .line 1351
    iget v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mActiveStream:I

    iget v1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->activeStream:I

    if-eq v0, v1, :cond_0

    .line 1352
    iget v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mActiveStream:I

    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mPrevActiveStream:I

    .line 1353
    iget p1, p1, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->activeStream:I

    iput p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mActiveStream:I

    .line 1354
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->getActiveRow()Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    move-result-object p1

    .line 1355
    invoke-direct {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateRowsH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    .line 1356
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1358
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;

    .line 1359
    invoke-static {v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 1360
    invoke-direct {p0, v0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->updateVolumeRowH(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUiModeChanged()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 241
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mNewContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 242
    iput-boolean v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mConfigChanged:Z

    .line 243
    iput-boolean v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mUiModeChanged:Z

    return-void
.end method

.method protected rescheduleTimeoutH()V
    .locals 5

    .line 955
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->removeMessages(I)V

    .line 956
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->computeTimeoutH()I

    move-result v0

    .line 957
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 958
    invoke-virtual {v2, v1, v3, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    int-to-long v3, v0

    .line 957
    invoke-virtual {v2, v1, v3, v4}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rescheduleTimeout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volume"

    const-string v2, "ColorVolumeDialogImpl"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->userActivity()V

    return-void
.end method

.method public setAutomute(Z)V
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAutomute:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 418
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAutomute:Z

    .line 419
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSilentMode(Z)V
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSilentMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 424
    :cond_0
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mSilentMode:Z

    .line 425
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setStreamImportant(IZ)V
    .locals 1

    .line 413
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public show(I)V
    .locals 2

    .line 813
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mHandler:Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected updateRingerH()V
    .locals 10

    .line 1198
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    if-eqz v0, :cond_b

    .line 1199
    iget-object v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->states:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    if-nez v0, :cond_0

    return-void

    .line 1204
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->zenMode:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget-boolean v2, v2, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->disallowRinger:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    :goto_1
    xor-int/lit8 v6, v2, 0x1

    .line 1208
    invoke-direct {p0, v6}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->enableRingerViewsH(Z)V

    .line 1209
    iget-boolean v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mExpanded:Z

    if-eqz v6, :cond_3

    .line 1210
    iget-object v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRinger:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 1212
    :cond_3
    iget-object v6, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mState:Lcom/android/systemui/plugins/ColorVolumeDialogController$State;

    iget v6, v6, Lcom/android/systemui/plugins/ColorVolumeDialogController$State;->ringerModeInternal:I

    const v7, 0x7f110892

    const v8, 0x7f081215

    if-eqz v6, :cond_a

    const v9, 0x7f110891

    if-eq v6, v5, :cond_9

    .line 1227
    iget-boolean v3, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mAutomute:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->level:I

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v0, v0, Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;->muted:Z

    if-eqz v0, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    if-nez v2, :cond_7

    if-eqz v4, :cond_7

    .line 1229
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1230
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1231
    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1230
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1232
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1234
    :cond_7
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->ringerResource()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1235
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mController:Lcom/android/systemui/plugins/ColorVolumeDialogController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/ColorVolumeDialogController;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1236
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    const v3, 0x7f110893

    .line 1237
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1236
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_2

    .line 1239
    :cond_8
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1240
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1239
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1242
    :goto_2
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1214
    :cond_9
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    const v1, 0x7f081217

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1215
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1216
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1215
    invoke-direct {p0, v0, v5, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    .line 1217
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 1220
    :cond_a
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1221
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 1222
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mRingerIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->mContext:Landroid/content/Context;

    .line 1223
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1222
    invoke-direct {p0, v0, v4, v1}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;->addAccessibilityDescription(Landroid/view/View;ILjava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method
