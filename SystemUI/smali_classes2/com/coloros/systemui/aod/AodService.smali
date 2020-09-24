.class public Lcom/coloros/systemui/aod/AodService;
.super Landroid/service/dreams/DreamService;
.source "AodService.java"

# interfaces
.implements Lcom/coloros/systemui/aod/common/IDreamPolicy;
.implements Lcom/coloros/systemui/common/manager/ColorOSAodManager$IAodNearStateChange;


# static fields
.field private static final TAG:Ljava/lang/String; = "AodService"

.field public static sAodStarted:Z

.field private static sService:Lcom/coloros/systemui/aod/AodService;


# instance fields
.field private mAodClockLayout:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

.field private mAodFocusLayout:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

.field private mAodSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInFingerPrintOffState:Z

.field private mNearStateChangeHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSaverView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 427
    new-instance v0, Lcom/coloros/systemui/aod/AodService$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/AodService$1;-><init>(Lcom/coloros/systemui/aod/AodService;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mNearStateChangeHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService;->mAodClockLayout:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService;->mAodFocusLayout:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/aod/AodService;)Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService;->mAodSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    return-object p0
.end method

.method public static getService()Lcom/coloros/systemui/aod/AodService;
    .locals 1

    .line 80
    sget-object v0, Lcom/coloros/systemui/aod/AodService;->sService:Lcom/coloros/systemui/aod/AodService;

    return-object v0
.end method

.method private startShow()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mAodFocusLayout:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->startShowFocus()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mAodClockLayout:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mAodClockLayout:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->startShowAod()V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mAodSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodClose()Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService;->mAodSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->startShowAod()V

    :cond_2
    return-void
.end method


# virtual methods
.method public addCurvedDisplayView(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 369
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/AodService;->setDozeScreenState(I)V

    .line 370
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/AodService;->startDozing()V

    .line 372
    :try_start_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService;->mRootLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 375
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 382
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 385
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/16 v2, 0x19

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "media_session"

    .line 388
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/AodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    if-eqz p0, :cond_2

    const/high16 v0, -0x80000000

    .line 391
    invoke-virtual {p0, p1, v0, v3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    const-string p0, "Aod"

    const-string p1, "AodService"

    const-string v0, "dispatchKeyEvent: dispatchVolumeKeyEvent"

    .line 392
    invoke-static {p0, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    :goto_0
    return v3
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .line 296
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/AodService;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 299
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 301
    :cond_0
    invoke-super {p0}, Landroid/service/dreams/DreamService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onDreamingStarted$0$AodService()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/common/AodManager;->checkNotInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/coloros/systemui/aod/AodService;->startShow()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onDreamingStarted$1$AodService()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/common/AodManager;->checkNotInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0}, Lcom/coloros/systemui/aod/AodService;->startShow()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 6

    .line 130
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    const-string v0, "AodService"

    const-string v1, "Aod"

    const-string v2, "onAttachedToWindow: "

    .line 131
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 132
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/aod/AodService;->setLowProfile(Z)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/aod/AodService;->setFullscreen(Z)V

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/aod/AodService;->setScreenBright(Z)V

    .line 136
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/aod/AodService;->setInteractive(Z)V

    const v4, 0x7f0d003c

    .line 138
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/aod/AodService;->setContentView(I)V

    const v4, 0x7f0a04c4

    .line 139
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/aod/AodService;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/coloros/systemui/aod/AodService;->mRootLayout:Landroid/widget/FrameLayout;

    .line 140
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isAodTransparent()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/coloros/systemui/aod/AodService;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    .line 141
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v4, 0x7f0a01c2

    .line 143
    invoke-virtual {p0, v4}, Lcom/coloros/systemui/aod/AodService;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/coloros/systemui/aod/AodService;->mSaverView:Landroid/widget/FrameLayout;

    .line 144
    iget-object v4, p0, Lcom/coloros/systemui/aod/AodService;->mSaverView:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    .line 145
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 148
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodEnable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 149
    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusUtils;->isShowFocusClock(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, -0x2

    if-eqz v4, :cond_3

    .line 150
    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusUtils;->isInFocus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    new-instance v2, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mAodFocusLayout:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    .line 152
    iget-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mSaverView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/coloros/systemui/aod/AodService;->mAodFocusLayout:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/coloros/systemui/aod/common/DreamHelper;->initDreamHelper(Lcom/coloros/systemui/aod/common/IDreamPolicy;)V

    .line 155
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->addAodNearStateChange(Lcom/coloros/systemui/common/manager/ColorOSAodManager$IAodNearStateChange;)V

    const-string v2, "isShowFocusClock"

    .line 156
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 158
    :cond_2
    invoke-static {p0}, Lcom/coloros/systemui/aod/focusmode/FocusUtils;->resetFocusClock(Landroid/content/Context;)V

    const-string v2, "resetFocusClock"

    .line 159
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 161
    :cond_3
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->isShowSignature()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mAodSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    .line 164
    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mSaverView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/coloros/systemui/aod/AodService;->mAodSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/aod/common/DreamHelper;->initDreamHelper(Lcom/coloros/systemui/aod/common/IDreamPolicy;)V

    .line 167
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->addAodNearStateChange(Lcom/coloros/systemui/common/manager/ColorOSAodManager$IAodNearStateChange;)V

    goto :goto_1

    .line 171
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v1

    const-string v4, "my-MM"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "my-ZG"

    .line 173
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v3

    .line 172
    :cond_6
    :goto_0
    invoke-virtual {v1, v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setMyMmLanguage(Z)V

    .line 175
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mAodClockLayout:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    .line 176
    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mSaverView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/coloros/systemui/aod/AodService;->mAodClockLayout:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-static {}, Lcom/coloros/systemui/aod/common/DreamHelper;->getInstance()Lcom/coloros/systemui/aod/common/DreamHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/aod/common/DreamHelper;->initDreamHelper(Lcom/coloros/systemui/aod/common/IDreamPolicy;)V

    .line 179
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->addAodNearStateChange(Lcom/coloros/systemui/common/manager/ColorOSAodManager$IAodNearStateChange;)V

    .line 183
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/AodService;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1706

    .line 190
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onCreate()V
    .locals 6

    const-string v0, "AodService"

    const-string v1, "Aod"

    const-string v2, "onCreate"

    .line 85
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isClosedSuperFirewall()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 89
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportCurvedDisplay()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v2, "oppo_aod_curved_display_notification_switch"

    .line 90
    invoke-static {p0, v2, v4}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "Setting_AodEnableImmediate"

    .line 92
    invoke-static {p0, v5, v4}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    move v4, v3

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    const-string v2, "AodService: finish self because the curved screen for firewall"

    .line 95
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/AodService;->finish()V

    return-void

    .line 101
    :cond_2
    sput-boolean v3, Lcom/coloros/systemui/aod/AodService;->sAodStarted:Z

    .line 102
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    .line 103
    sput-object p0, Lcom/coloros/systemui/aod/AodService;->sService:Lcom/coloros/systemui/aod/AodService;

    .line 104
    iput-object p0, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->setAodIsShow(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 111
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDestroy()V

    const-string v0, "Aod"

    const-string v1, "AodService"

    const-string v2, "onDestroy: "

    .line 112
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->setAodIsShow(Z)V

    .line 114
    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mAodClockLayout:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->onAodClockLayoutDestroy()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mAodFocusLayout:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->onFocusClockLayoutDestroy()V

    .line 122
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService;->mAodSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    if-eqz p0, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->onAodClockLayoutDestroy()V

    :cond_2
    return-void
.end method

.method public onDreamingStarted()V
    .locals 9

    .line 195
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    const-wide/16 v0, 0x8

    const-string v2, "onDreamingStarted "

    .line 196
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v2, "Aod"

    const-string v3, "AodService"

    const-string v4, "onDreamingStarted"

    .line 197
    invoke-static {v2, v3, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isSupportAod()Z

    move-result v2

    const-wide/16 v3, 0x1770

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 199
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isFindModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {p0, v5}, Lcom/coloros/systemui/aod/AodService;->setAodDozeScreenState(I)V

    .line 202
    iget-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/coloros/systemui/aod/-$$Lambda$AodService$mNrgMWYUKNmB4_bqLSw9S0PAlZI;

    invoke-direct {v6, p0}, Lcom/coloros/systemui/aod/-$$Lambda$AodService$mNrgMWYUKNmB4_bqLSw9S0PAlZI;-><init>(Lcom/coloros/systemui/aod/AodService;)V

    invoke-virtual {v2, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isTpProximitySensorDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/coloros/systemui/aod/-$$Lambda$AodService$NK9XM4GLf_W4bD3KRfHj53QAT18;

    invoke-direct {v6, p0}, Lcom/coloros/systemui/aod/-$$Lambda$AodService$NK9XM4GLf_W4bD3KRfHj53QAT18;-><init>(Lcom/coloros/systemui/aod/AodService;)V

    const-wide/16 v7, 0x1f4

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/common/AodManager;->checkNotInCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    invoke-direct {p0}, Lcom/coloros/systemui/aod/AodService;->startShow()V

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0, v5}, Lcom/coloros/systemui/aod/AodService;->setAodDozeScreenState(I)V

    .line 222
    :cond_3
    :goto_0
    invoke-static {}, Lcom/coloros/systemui/aod/aodclock/feature/AodFeatureOptions;->isFindModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 223
    invoke-static {p0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    goto :goto_1

    .line 225
    :cond_4
    invoke-static {p0}, Lcom/coloros/systemui/aod/common/AodManager;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/common/AodManager;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Lcom/coloros/systemui/aod/common/AodManager;->acquireWakeLock(J)V

    .line 231
    :goto_1
    iget-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isClosedSuperFirewall()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 232
    iget-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz v2, :cond_5

    .line 234
    invoke-virtual {v2, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAodShowing(Z)V

    .line 239
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/AodService;->startDozing()V

    .line 240
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 5

    .line 260
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    const-wide/16 v0, 0x8

    const-string v2, "onDreamingStopped "

    .line 261
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v2, "Aod"

    const-string v3, "AodService"

    const-string v4, "onDreamingStopped"

    .line 262
    invoke-static {v2, v3, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mAodClockLayout:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->onAodDreamingStopped()V

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mAodFocusLayout:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {v2}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->onFocusDreamingStopped()V

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mAodSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    if-eqz v2, :cond_2

    .line 273
    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->onAodDreamingStopped()V

    .line 280
    :cond_2
    iget-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isClosedSuperFirewall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    iget-object v2, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    .line 283
    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setAodShowing(Z)V

    .line 288
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/AodService;->stopDozing()V

    .line 289
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onNearStateChange(I)V
    .locals 3

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNearStateChange: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodService"

    const-string v2, "Aod"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->isAodIsShow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onNearStateChange: return for aod is not displayed"

    .line 407
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 410
    :cond_0
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodEnableImmediateOpen()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "onNearStateChange: checkInDuration false"

    .line 411
    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 414
    :cond_1
    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->isAodEnableTimeOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->checkInDuration(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "onNearStateChange : receive systemUi command -- set aod off"

    .line 419
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService;->mNearStateChangeHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    const-string p1, "onNearStateChange : receive systemUi command -- set aod on"

    .line 422
    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService;->mNearStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onStartDozing()V
    .locals 0

    .line 335
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/AodService;->startDozing()V

    return-void
.end method

.method public removeCurvedDisplayView(Lcom/coloros/systemui/aod/aodclock/off/widget/ColorCurvedDisplayView;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/coloros/systemui/aod/AodService;->mRootLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 346
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/constant/AodData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/constant/AodData;->setShowingCurvedDisplay(Z)V

    .line 349
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService;->mAodClockLayout:Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;

    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/off/AodClockLayout;->setAodSuspendState()V

    .line 352
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService;->mAodFocusLayout:Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;

    if-eqz p1, :cond_2

    .line 353
    invoke-virtual {p1}, Lcom/coloros/systemui/aod/focusmode/FocusAodLayout;->setAodSuspendState()V

    .line 358
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService;->mAodSignatureLayout:Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;

    if-eqz p0, :cond_3

    .line 359
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/view/AodSignatureLayout;->setAodSuspendState()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setAodDozeScreenState(I)V
    .locals 0

    .line 330
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/AodService;->setDozeScreenState(I)V

    return-void
.end method

.method public updateNextPosition(I)V
    .locals 4

    .line 306
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/AodService;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 310
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 314
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x1020002

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNextPosition topInset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Aod"

    const-string v3, "AodService"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    .line 320
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sub-int/2addr p1, v0

    .line 321
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 322
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService;->mSaverView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object p1, p0, Lcom/coloros/systemui/aod/AodService;->mSaverView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    .line 324
    iget-object p0, p0, Lcom/coloros/systemui/aod/AodService;->mSaverView:Landroid/widget/FrameLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_2
    return-void
.end method
