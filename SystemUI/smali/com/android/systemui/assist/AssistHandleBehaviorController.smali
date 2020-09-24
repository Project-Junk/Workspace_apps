.class public final Lcom/android/systemui/assist/AssistHandleBehaviorController;
.super Ljava/lang/Object;
.source "AssistHandleBehaviorController.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistHandleCallbacks;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;
    }
.end annotation


# static fields
.field private static final DEFAULT_BEHAVIOR:Lcom/android/systemui/assist/AssistHandleBehavior;

.field private static final DEFAULT_SHOWN_FREQUENCY_THRESHOLD_MS:J = 0x0L

.field private static final DEFAULT_SHOW_AND_GO_DURATION_MS:J

.field private static final TAG:Ljava/lang/String; = "AssistHandleBehavior"


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mBehaviorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/assist/AssistHandleBehavior;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlesLastHiddenAt:J

.field private mHandlesShowing:Z

.field private final mHideHandles:Ljava/lang/Runnable;

.field private mInGesturalMode:Z

.field private final mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

.field private final mScreenDecorationsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/ScreenDecorations;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowAndGo:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_SHOW_AND_GO_DURATION_MS:J

    .line 67
    sget-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->REMINDER_EXP:Lcom/android/systemui/assist/AssistHandleBehavior;

    sput-object v0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_BEHAVIOR:Lcom/android/systemui/assist/AssistHandleBehavior;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Landroid/os/Handler;)V
    .locals 7

    .line 89
    new-instance v4, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$YVZbhjPAFxzfykYNnZr-_WVxBbM;

    invoke-direct {v4, p1}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$YVZbhjPAFxzfykYNnZr-_WVxBbM;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/systemui/assist/PhenotypeHelper;

    invoke-direct {v5}, Lcom/android/systemui/assist/PhenotypeHelper;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/assist/AssistHandleBehaviorController;-><init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/android/systemui/assist/PhenotypeHelper;Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Landroid/os/Handler;Ljava/util/function/Supplier;Lcom/android/systemui/assist/PhenotypeHelper;Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;)V
    .locals 2
    .param p6    # Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/app/AssistUtils;",
            "Landroid/os/Handler;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/ScreenDecorations;",
            ">;",
            "Lcom/android/systemui/assist/PhenotypeHelper;",
            "Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$XubZVLOT9vWCBnL-QqZRgbOELVA;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$XubZVLOT9vWCBnL-QqZRgbOELVA;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$oeveMWAQo5jd5bG1H5Ci7Dy4X74;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$oeveMWAQo5jd5bG1H5Ci7Dy4X74;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    .line 85
    sget-object v0, Lcom/android/systemui/assist/AssistHandleBehavior;->OFF:Lcom/android/systemui/assist/AssistHandleBehavior;

    iput-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    .line 106
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 108
    iput-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    .line 109
    iput-object p4, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mScreenDecorationsSupplier:Ljava/util/function/Supplier;

    .line 110
    iput-object p5, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    .line 111
    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    sget-object p4, Lcom/android/systemui/assist/AssistHandleBehavior;->OFF:Lcom/android/systemui/assist/AssistHandleBehavior;

    new-instance v0, Lcom/android/systemui/assist/AssistHandleOffBehavior;

    invoke-direct {v0}, Lcom/android/systemui/assist/AssistHandleOffBehavior;-><init>()V

    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    sget-object p4, Lcom/android/systemui/assist/AssistHandleBehavior;->LIKE_HOME:Lcom/android/systemui/assist/AssistHandleBehavior;

    new-instance v0, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;

    invoke-direct {v0}, Lcom/android/systemui/assist/AssistHandleLikeHomeBehavior;-><init>()V

    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    sget-object p4, Lcom/android/systemui/assist/AssistHandleBehavior;->REMINDER_EXP:Lcom/android/systemui/assist/AssistHandleBehavior;

    new-instance v0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-direct {v0, p3, p5}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;-><init>(Landroid/os/Handler;Lcom/android/systemui/assist/PhenotypeHelper;)V

    invoke-interface {p2, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_0

    .line 117
    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    sget-object p3, Lcom/android/systemui/assist/AssistHandleBehavior;->TEST:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {p2, p3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 129
    sget-object p2, Lcom/coloros/systemui/common/util/NavBarUtils;->Companion:Lcom/coloros/systemui/common/util/NavBarUtils$Companion;

    invoke-virtual {p2, p1}, Lcom/coloros/systemui/common/util/NavBarUtils$Companion;->isGesturalMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    .line 130
    invoke-static {}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$XmmqnuLTh5Qv7vsVkw0LLH6Z8Bo;

    invoke-direct {p2, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$XmmqnuLTh5Qv7vsVkw0LLH6Z8Bo;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->addListener(Lcom/coloros/systemui/common/observer/IObserverListener;)V

    goto :goto_0

    .line 132
    :cond_1
    const-class p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 133
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationModeController;

    new-instance p2, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$UX7PPcltnlTgxyL7MxmLbVmQRcI;

    invoke-direct {p2, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$UX7PPcltnlTgxyL7MxmLbVmQRcI;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    .line 134
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    .line 132
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    .line 138
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getBehaviorMode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->setBehavior(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    iget-object p2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/android/systemui/assist/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;

    invoke-direct {p3, p2}, Lcom/android/systemui/assist/-$$Lambda$LfzJt661qZfn2w-6SYHFbD3aMy0;-><init>(Landroid/os/Handler;)V

    new-instance p2, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$BjXttSFgwlGnsLK_jGFQ2dOOgf4;

    invoke-direct {p2, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$BjXttSFgwlGnsLK_jGFQ2dOOgf4;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    invoke-virtual {p1, p3, p2}, Lcom/android/systemui/assist/PhenotypeHelper;->addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 148
    const-class p1, Lcom/android/systemui/DumpController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/DumpController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/DumpController;->addListener(Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method private clearPendingCommands()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getBehaviorMode()Ljava/lang/String;
    .locals 2

    .line 238
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    sget-object v0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_BEHAVIOR:Lcom/android/systemui/assist/AssistHandleBehavior;

    .line 240
    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistHandleBehavior;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "assist_handles_behavior_mode"

    .line 238
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/assist/PhenotypeHelper;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getShowAndGoDuration()J
    .locals 3

    .line 232
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    sget-wide v0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->DEFAULT_SHOW_AND_GO_DURATION_MS:J

    const-string v2, "assist_handles_show_and_go_duration_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getShownFrequencyThreshold()J
    .locals 3

    .line 226
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mPhenotypeHelper:Lcom/android/systemui/assist/PhenotypeHelper;

    const-string v0, "assist_handles_shown_frequency_threshold_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/assist/PhenotypeHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private handleNavigationModeChange(I)V
    .locals 1

    .line 282
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget-object p1, Lcom/coloros/systemui/common/util/NavBarUtils;->Companion:Lcom/coloros/systemui/common/util/NavBarUtils$Companion;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/common/util/NavBarUtils$Companion;->isGesturalMode(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    .line 288
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 292
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    .line 293
    iget-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    if-eqz p1, :cond_2

    .line 294
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V

    goto :goto_1

    .line 296
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    invoke-interface {p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeDeactivated()V

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->hide()V

    :goto_1
    return-void
.end method

.method private handlesUnblocked(Z)Z
    .locals 6

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesLastHiddenAt:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShownFrequencyThreshold()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v3

    .line 220
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 221
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 222
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result p0

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method private hideHandles()V
    .locals 4

    .line 260
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mScreenDecorationsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ScreenDecorations;

    if-nez v0, :cond_1

    const-string p0, "AssistHandleBehavior"

    const-string v0, "Couldn\'t hide handles, ScreenDecorations unavailable"

    .line 266
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 268
    iput-boolean v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesLastHiddenAt:J

    .line 270
    invoke-virtual {v0, v1}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$UX7PPcltnlTgxyL7MxmLbVmQRcI(Lcom/android/systemui/assist/AssistHandleBehaviorController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->handleNavigationModeChange(I)V

    return-void
.end method

.method public static synthetic lambda$XubZVLOT9vWCBnL-QqZRgbOELVA(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->hideHandles()V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Lcom/android/systemui/ScreenDecorations;
    .locals 1

    .line 93
    const-class v0, Lcom/android/systemui/ScreenDecorations;

    invoke-static {p0, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ScreenDecorations;

    return-object p0
.end method

.method public static synthetic lambda$oeveMWAQo5jd5bG1H5Ci7Dy4X74(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->showAndGoInternal()V

    return-void
.end method

.method private maybeShowHandles(Z)V
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    if-eqz v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->handlesUnblocked(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 249
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mScreenDecorationsSupplier:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/ScreenDecorations;

    if-nez p1, :cond_1

    const-string p0, "AssistHandleBehavior"

    const-string p1, "Couldn\'t show handles, ScreenDecorations unavailable"

    .line 251
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    .line 254
    invoke-virtual {p1, v0}, Lcom/android/systemui/ScreenDecorations;->setAssistHintVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setBehavior(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 211
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/assist/AssistHandleBehavior;->valueOf(Ljava/lang/String;)Lcom/android/systemui/assist/AssistHandleBehavior;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->setBehavior(Lcom/android/systemui/assist/AssistHandleBehavior;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid behavior: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AssistHandleBehavior"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showAndGoInternal()V
    .locals 4

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->maybeShowHandles(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShowAndGoDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method areHandlesShowing()Z
    .locals 0

    .line 184
    iget-boolean p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "Current AssistHandleBehaviorController State:"

    .line 313
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mHandlesShowing="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesShowing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mHandlesLastHiddenAt="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandlesLastHiddenAt:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mInGesturalMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "   Phenotype Flags:"

    .line 319
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      assist_handles_show_and_go_duration_ms="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShowAndGoDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      assist_handles_shown_frequency_threshold_ms="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getShownFrequencyThreshold()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "      assist_handles_behavior_mode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->getBehaviorMode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   mCurrentBehavior="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-virtual {p3}, Lcom/android/systemui/assist/AssistHandleBehavior;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    iget-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    const-string p1, "   "

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public hide()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$new$1$AssistHandleBehaviorController(Z)V
    .locals 0

    const/4 p1, -0x1

    .line 130
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->handleNavigationModeChange(I)V

    return-void
.end method

.method public synthetic lambda$new$2$AssistHandleBehaviorController(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 142
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "assist_handles_behavior_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->setBehavior(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showAndStay$3$AssistHandleBehaviorController()V
    .locals 1

    const/4 v0, 0x1

    .line 180
    invoke-direct {p0, v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->maybeShowHandles(Z)V

    return-void
.end method

.method onAssistantGesturePerformed()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    invoke-interface {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onAssistantGesturePerformed()V

    return-void
.end method

.method setBehavior(Lcom/android/systemui/assist/AssistHandleBehavior;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    if-ne v0, p1, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported behavior requested: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/assist/AssistHandleBehavior;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AssistHandleBehavior"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    invoke-interface {v0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeDeactivated()V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mBehaviorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;

    iget-object v1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController$BehaviorController;->onModeActivated(Landroid/content/Context;Lcom/android/systemui/assist/AssistHandleCallbacks;)V

    .line 206
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mCurrentBehavior:Lcom/android/systemui/assist/AssistHandleBehavior;

    return-void
.end method

.method setInGesturalModeForTest(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 308
    iput-boolean p1, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mInGesturalMode:Z

    return-void
.end method

.method public showAndGo()V
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showAndGoDelayed(JZ)V
    .locals 1

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    if-eqz p3, :cond_0

    .line 172
    iget-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHideHandles:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mShowAndGo:Ljava/lang/Runnable;

    invoke-virtual {p3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showAndStay()V
    .locals 2

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/assist/AssistHandleBehaviorController;->clearPendingCommands()V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/assist/AssistHandleBehaviorController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$wyAB-EkgECkVVYYSHtFBFYUQ9Gk;

    invoke-direct {v1, p0}, Lcom/android/systemui/assist/-$$Lambda$AssistHandleBehaviorController$wyAB-EkgECkVVYYSHtFBFYUQ9Gk;-><init>(Lcom/android/systemui/assist/AssistHandleBehaviorController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
