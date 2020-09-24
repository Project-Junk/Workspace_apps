.class public Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;
.super Ljava/lang/Object;
.source "OppoSecurePaymentController.java"

# interfaces
.implements Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;


# static fields
.field private static final DURATION_HIDE_IGNORE_WARNING:J = 0xbb8L

.field private static final DURATION_HIDE_TEXT_VIEW:J = 0xbb8L

.field private static final DURATION_SHOW_PAYMENT_ICON:J = 0xbb8L

.field private static final DURATION_TRANSLATE_PAYMENT_ICON:J = 0xc8L

.field private static final KEY_RISK_DETECTION_RESULT:Ljava/lang/String; = "oppo.key.result"

.field private static final MSG_HIDE_IGNORE_RISK_WARNING:I = 0x2710

.field private static final MSG_HIDE_PAYMENT_TEXT_VIEW:I = 0x2711

.field private static final MSG_RISK_DETECTION_COMPLETE:I = 0x3ec

.field private static final MSG_RISK_DETECTION_EXIT:I = 0x3ed

.field private static final MSG_RISK_DETECTION_RISK_DISCOVERY:I = 0x3e9

.field private static final MSG_RISK_DETECTION_RISK_IGNORED:I = 0x3eb

.field private static final MSG_RISK_DETECTION_RISK_RECOVERY:I = 0x3ea

.field private static final MSG_RISK_DETECTION_START:I = 0x3e8

.field private static final PAYMENT_STATE_DETECTED_NO_RISK:I = 0x2

.field private static final PAYMENT_STATE_DETECTED_RISK:I = 0x3

.field private static final PAYMENT_STATE_DETECTING:I = 0x1

.field private static final PAYMENT_STATE_NONE:I = 0x0

.field private static final PAYMENT_STATE_USER_IGNORE_RISK:I = 0x4

.field private static final SECURE_PAY_PACKAGENAME:Ljava/lang/String; = "com.coloros.securepay"

.field public static final TAG:Ljava/lang/String; = "SecurePaymentController"


# instance fields
.field private mBatteryView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field private mHighLightBgView:Landroid/view/View;

.field private mIgnoreWarningTextView:Landroid/widget/TextView;

.field private mIgnoreWarningView:Landroid/widget/LinearLayout;

.field private mPaymentCheckState:I

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSecurePayPid:I

.field private mSecurePayUid:I

.field private mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

.field private mSecurePaymentTextView:Landroid/widget/TextView;

.field private mSignalClusterView:Landroid/view/View;

.field private mStatusIconContainerView:Landroid/view/View;

.field private mSystemIconGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$1;-><init>(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mPaymentCheckState:I

    .line 114
    new-instance v0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$2;-><init>(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 145
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mContext:Landroid/content/Context;

    const p1, 0x7f0a0559

    .line 146
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mStatusIconContainerView:Landroid/view/View;

    const p1, 0x7f0a052e

    .line 147
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSignalClusterView:Landroid/view/View;

    const p1, 0x7f0a00ef

    .line 148
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mBatteryView:Landroid/view/View;

    const p1, 0x7f0a0429

    .line 150
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const p1, 0x7f0a042a

    .line 151
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentTextView:Landroid/widget/TextView;

    .line 153
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationView(Landroid/widget/TextView;)V

    .line 154
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setCallBack(Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView$CallBack;)V

    const p1, 0x7f0a042b

    .line 155
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mIgnoreWarningView:Landroid/widget/LinearLayout;

    const p1, 0x7f0a042c

    .line 156
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mIgnoreWarningTextView:Landroid/widget/TextView;

    const p1, 0x7f0a0579

    .line 158
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSystemIconGroup:Landroid/view/ViewGroup;

    const p1, 0x7f0a02b3

    .line 160
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mHighLightBgView:Landroid/view/View;

    const-string p1, "system/fonts/Roboto-Regular.ttf"

    .line 163
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 165
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mIgnoreWarningTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const p1, 0x7f0a01db

    .line 167
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    .line 168
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mIgnoreWarningView:Landroid/widget/LinearLayout;

    const p1, 0x800015

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mIgnoreWarningView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->doTranslatePaymentIconAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->updateHighlightStatus(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePayUid:I

    return p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePayPid:I

    return p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePayPid:I

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setSystemIconVisible(I)V

    return-void
.end method

.method private doTranslatePaymentIconAnimation()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSystemIconGroup:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 374
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v1, 0xc8

    .line 375
    invoke-virtual {v0, v1, v2}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 376
    new-instance v1, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$4;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$4;-><init>(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;)V

    invoke-virtual {v0, v1}, Landroid/transition/AutoTransition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 403
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSystemIconGroup:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 404
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewVisibility(I)V

    const/4 v0, 0x0

    .line 405
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setSystemIconVisible(I)V

    return-void
.end method

.method private registerProcessObserver()V
    .locals 3

    const-string v0, "com.coloros.securepay"

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePayUid:I

    .line 431
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/common/util/Util;->getPid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePayPid:I

    .line 432
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerProcessObserver exception, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecurePaymentController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setBackgroundColor(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mHighLightBgView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 241
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mHighLightBgView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mHighLightBgView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setPaymentCheckState(I)V
    .locals 1

    .line 248
    iget v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mPaymentCheckState:I

    if-eq v0, p1, :cond_0

    .line 249
    iput p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mPaymentCheckState:I

    :cond_0
    return-void
.end method

.method private setSystemIconVisible(I)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mStatusIconContainerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSignalClusterView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 337
    :goto_0
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setCircleBatteryVisibleByHighlight(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mBatteryView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private unRegisterProcessObserver()V
    .locals 2

    .line 440
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterProcessObserver exception, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecurePaymentController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateHighlightStatus(I)V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mContext:Landroid/content/Context;

    const v1, 0x7f060300

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mContext:Landroid/content/Context;

    const v2, 0x7f0601d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const/16 v2, 0x3e9

    const/4 v3, 0x1

    if-eq p1, v2, :cond_2

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 228
    invoke-direct {p0, p1, p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setBackgroundColor(ZI)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setBackgroundColor(ZI)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setBackgroundColor(ZI)V

    :goto_0
    return-void
.end method

.method private updateTranslatePaymentIcon(IIZ)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSystemIconGroup:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 345
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v1, 0xc8

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    .line 347
    new-instance v1, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController$3;-><init>(Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;ZII)V

    invoke-virtual {v0, v1}, Landroid/transition/AutoTransition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    .line 368
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSystemIconGroup:Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 369
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewText(I)V

    return-void
.end method


# virtual methods
.method public exitRiskDetection()V
    .locals 4

    .line 315
    iget v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mPaymentCheckState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 318
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setPaymentCheckState(I)V

    .line 319
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mIgnoreWarningView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2711

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 322
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setPaymentCheckState(I)V

    .line 323
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setSystemIconVisible(I)V

    .line 327
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {v1, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setRiskState(I)V

    .line 328
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewVisibility(I)V

    .line 329
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->unRegisterProcessObserver()V

    return-void
.end method

.method public handlePaymentDetectionMessage(Landroid/os/Message;)V
    .locals 3

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePaymentDetectionMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "SecurePaymentController"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 202
    :pswitch_0
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->exitRiskDetection()V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "oppo.key.result"

    .line 191
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->noRiskDetected()V

    goto :goto_0

    .line 185
    :pswitch_2
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->riskIgnore()V

    goto :goto_0

    .line 182
    :pswitch_3
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->riskRecovery()V

    goto :goto_0

    .line 179
    :pswitch_4
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->riskDiscovery()V

    goto :goto_0

    .line 176
    :pswitch_5
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->startRiskDetection()V

    .line 207
    :goto_0
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->updateHighlightStatus(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public noRiskDetected()V
    .locals 3

    .line 304
    iget v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mPaymentCheckState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setPaymentCheckState(I)V

    const v0, 0x7f110611

    const v1, 0x7f11060f

    const/4 v2, 0x1

    .line 309
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->updateTranslatePaymentIcon(IIZ)V

    .line 311
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->startNoRiskDiscoveryAnimation()V

    return-void
.end method

.method public onAnimationClear()V
    .locals 0

    return-void
.end method

.method public onAnimationEnd()V
    .locals 3

    .line 449
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x2711

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public riskDiscovery()V
    .locals 3

    .line 268
    iget v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mPaymentCheckState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setPaymentCheckState(I)V

    const v0, 0x7f110611

    const v1, 0x7f110610

    const/4 v2, 0x1

    .line 273
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->updateTranslatePaymentIcon(IIZ)V

    .line 275
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->startRiskDiscoveryAnimation()V

    return-void
.end method

.method public riskIgnore()V
    .locals 5

    .line 279
    iget v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mPaymentCheckState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setPaymentCheckState(I)V

    .line 283
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mIgnoreWarningView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2710

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setSystemIconVisible(I)V

    .line 289
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setSyncAnimationTextViewVisibility(I)V

    return-void
.end method

.method public riskRecovery()V
    .locals 3

    .line 293
    iget v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mPaymentCheckState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setPaymentCheckState(I)V

    const v0, 0x7f110610

    const v1, 0x7f11060f

    const/4 v2, 0x0

    .line 298
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->updateTranslatePaymentIcon(IIZ)V

    .line 300
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->startRiskRecoveryAnimation()V

    return-void
.end method

.method public startRiskDetection()V
    .locals 2

    .line 254
    iget v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mPaymentCheckState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-direct {p0, v1}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setPaymentCheckState(I)V

    const/16 v0, 0x8

    .line 258
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->setSystemIconVisible(I)V

    .line 262
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->setRiskState(I)V

    .line 263
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->startDetectingAnimation()V

    .line 264
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->registerProcessObserver()V

    return-void
.end method

.method public updateResources()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentIconView:Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/widget/OppoSecurePaymentIconView;->updateTextResources()V

    .line 414
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mIgnoreWarningTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const v0, 0x7f1107a1

    .line 415
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public updateTypeFace()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mSecurePaymentTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 421
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 423
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/OppoSecurePaymentController;->mIgnoreWarningTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 424
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    return-void
.end method
