.class public final Lcom/android/systemui/statusbar/PulseExpansionHandler;
.super Ljava/lang/Object;
.source "PulseExpansionHandler.kt"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;,
        Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPulseExpansionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PulseExpansionHandler.kt\ncom/android/systemui/statusbar/PulseExpansionHandler\n*L\n1#1,275:1\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u0007\u0018\u0000 B2\u00020\u0001:\u0002BCB\u0017\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010&\u001a\u00020\'H\u0002J\u0018\u0010(\u001a\u00020\'2\u0006\u0010)\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\u000fH\u0002J\u001a\u0010+\u001a\u0004\u0018\u00010!2\u0006\u0010)\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\u000fH\u0002J\u0008\u0010,\u001a\u00020\'H\u0002J\u0010\u0010-\u001a\u00020\u00082\u0006\u0010.\u001a\u00020/H\u0002J\u0010\u00100\u001a\u00020\u00082\u0006\u0010.\u001a\u00020/H\u0016J\u0006\u00101\u001a\u00020\'J\u0010\u00102\u001a\u00020\u00082\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00103\u001a\u00020\'2\u0006\u00104\u001a\u00020!H\u0002J\u0008\u00105\u001a\u00020\'H\u0002J\u0010\u00106\u001a\u00020\'2\u0006\u00107\u001a\u00020\u000fH\u0002J\u000e\u00108\u001a\u00020\'2\u0006\u00109\u001a\u00020\u0008J\u001e\u0010:\u001a\u00020\'2\u0006\u0010;\u001a\u00020\u001f2\u0006\u0010<\u001a\u00020\u00112\u0006\u0010=\u001a\u00020\u001dJ\u0018\u0010>\u001a\u00020\'2\u0006\u00104\u001a\u00020!2\u0006\u0010?\u001a\u00020\u0008H\u0002J\u0010\u0010@\u001a\u00020\'2\u0006\u0010A\u001a\u00020\u000fH\u0002R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\nR\u001e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u000e\u0010\r\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006D"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
        "Lcom/android/systemui/Gefingerpoken;",
        "context",
        "Landroid/content/Context;",
        "mWakeUpCoordinator",
        "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
        "(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V",
        "<set-?>",
        "",
        "isExpanding",
        "()Z",
        "isFalseTouch",
        "isWakingToShadeLocked",
        "mDraggedFarEnough",
        "mEmptyDragAmount",
        "",
        "mExpansionCallback",
        "Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;",
        "mFalsingManager",
        "Lcom/android/systemui/plugins/FalsingManager;",
        "mInitialTouchX",
        "mInitialTouchY",
        "mMinDragDistance",
        "",
        "mPowerManager",
        "Landroid/os/PowerManager;",
        "mPulsing",
        "mReachedWakeUpHeight",
        "mShadeController",
        "Lcom/android/systemui/statusbar/phone/ShadeController;",
        "mStackScroller",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;",
        "mStartingChild",
        "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
        "mTemp2",
        "",
        "mTouchSlop",
        "mWakeUpHeight",
        "cancelExpansion",
        "",
        "captureStartingChild",
        "x",
        "y",
        "findView",
        "finishExpansion",
        "maybeStartExpansion",
        "event",
        "Landroid/view/MotionEvent;",
        "onInterceptTouchEvent",
        "onStartedWakingUp",
        "onTouchEvent",
        "reset",
        "child",
        "resetClock",
        "setEmptyDragAmount",
        "amount",
        "setPulsing",
        "pulsing",
        "setUp",
        "notificationStackScroller",
        "expansionCallback",
        "shadeController",
        "setUserLocked",
        "userLocked",
        "updateExpansionHeight",
        "height",
        "Companion",
        "ExpansionCallback",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;

# The value of this static final field might be set in the static constructor
.field private static final RUBBERBAND_FACTOR_STATIC:F = 0.25f

# The value of this static final field might be set in the static constructor
.field private static final SPRING_BACK_ANIMATION_LENGTH_MS:I = 0x177


# instance fields
.field private isExpanding:Z

.field private isWakingToShadeLocked:Z

.field private mDraggedFarEnough:Z

.field private mEmptyDragAmount:F

.field private mExpansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private final mMinDragDistance:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPulsing:Z

.field private mReachedWakeUpHeight:Z

.field private mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private final mTemp2:[I

.field private final mTouchSlop:F

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field private mWakeUpHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->Companion:Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;

    const/high16 v0, 0x3e800000    # 0.25f

    .line 53
    sput v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->RUBBERBAND_FACTOR_STATIC:F

    const/16 v0, 0x177

    .line 54
    sput v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mWakeUpCoordinator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    const/4 p2, 0x2

    .line 67
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0703ec

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mMinDragDistance:I

    .line 84
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    const-string v0, "ViewConfiguration.get(context)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTouchSlop:F

    .line 85
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p2

    const-string v0, "FalsingManagerFactory.getInstance(context)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 86
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public static final synthetic access$setEmptyDragAmount(Lcom/android/systemui/statusbar/PulseExpansionHandler;F)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setEmptyDragAmount(F)V

    return-void
.end method

.method public static final synthetic access$setUserLocked(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method private final cancelExpansion()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onExpansionFromPulseStopped()V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->reset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    const/4 v0, 0x0

    .line 233
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->resetClock()V

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    .line 240
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    return-void
.end method

.method private final captureStartingChild(FF)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_1

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 187
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    .line 188
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_1
    return-void
.end method

.method private final findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const-string v1, "mStackScroller"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    const/4 v2, 0x1

    .line 248
    aget v0, v0, v2

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isContentExpandable()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final finishExpansion()V
    .locals 6

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->resetClock()V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    const/4 v0, 0x0

    .line 148
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 150
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWillWakeUp(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x4

    const-string v5, "com.android.systemui:PULSEDRAG"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    .line 156
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_5

    .line 157
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez p0, :cond_4

    .line 158
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    :cond_5
    return-void
.end method

.method private final isFalseTouch()Z
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch()Z

    move-result p0

    return p0
.end method

.method private final maybeStartExpansion(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPulsing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    sub-float p1, v2, p1

    .line 111
    iget v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTouchSlop:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_3

    .line 112
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->onStartExpandingFromPulse()V

    const/4 p1, 0x1

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 114
    iget v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    iget v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->captureStartingChild(FF)V

    .line 115
    iput v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 116
    iput v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getWakeUpHeight()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    .line 118
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    return p1

    .line 102
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mDraggedFarEnough:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    const/4 p1, 0x0

    .line 104
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 105
    iput v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 106
    iput v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    :cond_3
    :goto_0
    return v1
.end method

.method private final reset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 3

    .line 199
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 200
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 203
    new-array v0, v0, [I

    .line 204
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v2

    aput v2, v0, v1

    const-string v1, "actualHeight"

    .line 203
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "anim"

    .line 205
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    sget v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 207
    new-instance v1, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;-><init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private final resetClock()V
    .locals 3

    const/4 v0, 0x2

    .line 222
    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mEmptyDragAmount:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "anim"

    .line 223
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    sget v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 225
    new-instance v1, Lcom/android/systemui/statusbar/PulseExpansionHandler$resetClock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler$resetClock$1;-><init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final setEmptyDragAmount(F)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mEmptyDragAmount:F

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mExpansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;->setEmptyDragAmount(F)V

    return-void
.end method

.method private final setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    .line 216
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 217
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_0
    return-void
.end method

.method private final updateExpansionHeight(F)V
    .locals 4

    const/4 v0, 0x0

    .line 163
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 164
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 165
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v2, :cond_2

    if-nez v2, :cond_1

    .line 168
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 169
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 170
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v0

    .line 169
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 171
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    int-to-float p1, p1

    .line 172
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_1

    .line 174
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    .line 175
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    move p1, v3

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1, v3, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    .line 178
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 180
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setPulseHeight(F)F

    move-result p1

    .line 181
    sget v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->RUBBERBAND_FACTOR_STATIC:F

    mul-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setEmptyDragAmount(F)V

    return-void
.end method


# virtual methods
.method public final isExpanding()Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    return p0
.end method

.method public final isWakingToShadeLocked()Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->maybeStartExpansion(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onStartedWakingUp()V
    .locals 1

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->maybeStartExpansion(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->cancelExpansion()V

    goto :goto_0

    .line 133
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->updateExpansionHeight(F)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isFalseTouch()Z

    move-result p1

    if-nez p1, :cond_4

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->finishExpansion()V

    goto :goto_0

    .line 137
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->cancelExpansion()V

    .line 141
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    return p0
.end method

.method public final setPulsing(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPulsing:Z

    return-void
.end method

.method public final setUp(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;Lcom/android/systemui/statusbar/phone/ShadeController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/phone/ShadeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notificationStackScroller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expansionCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadeController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mExpansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

    .line 259
    iput-object p3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 260
    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method
