.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
.super Ljava/lang/Object;
.source "NotificationWakeUpCoordinator.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationWakeUpCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationWakeUpCoordinator.kt\ncom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n1582#2,2:246\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationWakeUpCoordinator.kt\ncom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator\n*L\n185#1,2:246\n*E\n"
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
        "\u0000g\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u001c*\u0001\u0016\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010,\u001a\u00020\rJ\u0008\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020\u001aH\u0002J\u0018\u00101\u001a\u00020.2\u0006\u00102\u001a\u00020\u00122\u0006\u00103\u001a\u00020\u001aH\u0016J\u0018\u00104\u001a\u00020.2\u0006\u00105\u001a\u00020\r2\u0006\u00106\u001a\u00020\rH\u0016J\u0010\u00107\u001a\u00020.2\u0006\u00108\u001a\u00020\u001aH\u0016J \u00109\u001a\u00020.2\u0006\u0010:\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020\u001a2\u0006\u0010<\u001a\u00020\u001aH\u0002J\u001e\u0010=\u001a\u00020.2\u0006\u0010:\u001a\u00020\u001a2\u0006\u0010;\u001a\u00020\u001a2\u0006\u0010<\u001a\u00020\u001aJ\u000e\u0010>\u001a\u00020\r2\u0006\u0010?\u001a\u00020\rJ\u000e\u0010@\u001a\u00020.2\u0006\u0010A\u001a\u00020\u001dJ\u0010\u0010B\u001a\u00020.2\u0006\u0010C\u001a\u00020\rH\u0002J\u000e\u0010D\u001a\u00020.2\u0006\u0010E\u001a\u00020\u001aJ\u0008\u0010F\u001a\u00020\u001aH\u0002J\u0010\u0010G\u001a\u00020.2\u0006\u0010<\u001a\u00020\u001aH\u0002J\u0008\u0010H\u001a\u00020.H\u0002J\u0018\u0010I\u001a\u00020.2\u0006\u0010;\u001a\u00020\u001a2\u0006\u0010<\u001a\u00020\u001aH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\n !*\u0004\u0018\u00010 0 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010$\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u001a@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R$\u0010)\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u001a@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010&\"\u0004\u0008+\u0010(\u00a8\u0006J"
    }
    d2 = {
        "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
        "Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;",
        "Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;",
        "mContext",
        "Landroid/content/Context;",
        "mAmbientPulseManager",
        "Lcom/android/systemui/statusbar/AmbientPulseManager;",
        "mStatusBarStateController",
        "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
        "(Landroid/content/Context;Lcom/android/systemui/statusbar/AmbientPulseManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V",
        "mDarkAnimator",
        "Landroid/animation/ObjectAnimator;",
        "mDozeAmount",
        "",
        "mDozeParameters",
        "Lcom/android/systemui/statusbar/phone/DozeParameters;",
        "mEntrySetToClearWhenFinished",
        "",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        "mLinearDozeAmount",
        "mLinearVisibilityAmount",
        "mNotificationVisibility",
        "com/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1",
        "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;",
        "mNotificationVisibleAmount",
        "mNotificationsVisible",
        "",
        "mNotificationsVisibleForExpansion",
        "mStackScroller",
        "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;",
        "mVisibilityAmount",
        "mVisibilityInterpolator",
        "Landroid/view/animation/Interpolator;",
        "kotlin.jvm.PlatformType",
        "mWakingUp",
        "value",
        "pulsing",
        "getPulsing",
        "()Z",
        "setPulsing",
        "(Z)V",
        "willWakeUp",
        "getWillWakeUp",
        "setWillWakeUp",
        "getWakeUpHeight",
        "handleAnimationFinished",
        "",
        "notifyAnimationStart",
        "awake",
        "onAmbientStateChanged",
        "entry",
        "isPulsing",
        "onDozeAmountChanged",
        "linear",
        "eased",
        "onDozingChanged",
        "isDozing",
        "setNotificationsVisible",
        "visible",
        "animate",
        "increaseSpeed",
        "setNotificationsVisibleForExpansion",
        "setPulseHeight",
        "height",
        "setStackScroller",
        "stackScroller",
        "setVisibilityAmount",
        "visibilityAmount",
        "setWakingUp",
        "wakingUp",
        "shouldAnimateVisibility",
        "startVisibilityAnimation",
        "updateDarkAmount",
        "updateNotificationVisibility",
        "SystemUI_realmeReleaseExp"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

.field private final mContext:Landroid/content/Context;

.field private mDarkAnimator:Landroid/animation/ObjectAnimator;

.field private mDozeAmount:F

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mEntrySetToClearWhenFinished:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mLinearDozeAmount:F

.field private mLinearVisibilityAmount:F

.field private final mNotificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

.field private mNotificationVisibleAmount:F

.field private mNotificationsVisible:Z

.field private mNotificationsVisibleForExpansion:Z

.field private mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mVisibilityAmount:F

.field private mVisibilityInterpolator:Landroid/view/animation/Interpolator;

.field private mWakingUp:Z

.field private pulsing:Z

.field private willWakeUp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/AmbientPulseManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/AmbientPulseManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mAmbientPulseManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mStatusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 42
    new-instance p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

    const-string p2, "notificationVisibility"

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

    .line 53
    sget-object p1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    .line 87
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    move-object p2, p0

    check-cast p2, Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/AmbientPulseManager;->addListener(Lcom/android/systemui/statusbar/AmbientPulseManager$OnAmbientChangedListener;)V

    .line 88
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object p2, p0

    check-cast p2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p1

    const-string p2, "DozeParameters.getInstance(mContext)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-void
.end method

.method public static final synthetic access$getMLinearVisibilityAmount$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    return p0
.end method

.method public static final synthetic access$setMLinearVisibilityAmount$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;F)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    return-void
.end method

.method public static final synthetic access$setVisibilityAmount(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;F)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setVisibilityAmount(F)V

    return-void
.end method

.method private final handleAnimationFinished()V
    .locals 3

    .line 184
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 246
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    const/4 v2, 0x0

    .line 185
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setAmbientGoingAway(Z)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_2
    return-void
.end method

.method private final notifyAnimationStart(Z)V
    .locals 1

    .line 201
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez p0, :cond_0

    const-string v0, "mStackScroller"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyDarkAnimationStart(Z)V

    return-void
.end method

.method private final setNotificationsVisible(ZZZ)V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 129
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDarkAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    if-eqz p2, :cond_2

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifyAnimationStart(Z)V

    .line 133
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->startVisibilityAnimation(Z)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 135
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setVisibilityAmount(F)V

    :goto_1
    return-void
.end method

.method private final setVisibilityAmount(F)V
    .locals 1

    .line 176
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->handleAnimationFinished()V

    .line 180
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateDarkAmount()V

    return-void
.end method

.method private final shouldAnimateVisibility()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final startVisibilityAnimation(Z)V
    .locals 4

    .line 157
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationVisibleAmount:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    cmpg-float v0, v0, v3

    if-nez v0, :cond_2

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 161
    :cond_1
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 158
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    .line 163
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz v0, :cond_3

    move v1, v3

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

    check-cast v0, Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v1, 0x1f4

    int-to-long v1, v1

    if-eqz p1, :cond_4

    long-to-float p1, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr p1, v1

    float-to-long v1, p1

    .line 170
    :cond_4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 171
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 172
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDarkAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private final updateDarkAmount()V
    .locals 3

    .line 195
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 196
    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez p0, :cond_0

    const-string v2, "mStackScroller"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDarkAmount(FF)V

    return-void
.end method

.method private final updateNotificationVisibility(ZZ)V
    .locals 3

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AmbientPulseManager;->hasNotifications()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 116
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mWakingUp:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-eqz v1, :cond_3

    return-void

    .line 121
    :cond_3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    return-void
.end method


# virtual methods
.method public final getPulsing()Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    return p0
.end method

.method public final getWakeUpHeight()F
    .locals 1

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez p0, :cond_0

    const-string v0, "mStackScroller"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPulseHeight()F

    move-result p0

    return p0
.end method

.method public final getWillWakeUp()Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    return p0
.end method

.method public onAmbientStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 226
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    const/4 v2, 0x0

    cmpg-float p2, p2, v2

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    cmpg-float p2, p2, v2

    if-eqz p2, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 231
    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mWakingUp:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 232
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setAmbientGoingAway(Z)V

    .line 233
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 237
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setAmbientGoingAway(Z)V

    .line 240
    :cond_2
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    return-void
.end method

.method public onDozeAmountChanged(FF)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    cmpg-float v1, p1, v2

    if-eqz v1, :cond_2

    .line 141
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    cmpg-float v4, v1, v2

    if-eqz v4, :cond_0

    cmpg-float v1, v1, v0

    if-nez v1, :cond_2

    .line 143
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    cmpg-float v0, v1, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifyAnimationStart(Z)V

    .line 145
    :cond_2
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    .line 146
    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    .line 147
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez p2, :cond_3

    const-string v0, "mStackScroller"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDozeAmount(F)V

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateDarkAmount()V

    cmpg-float p1, p1, v2

    if-nez p1, :cond_4

    .line 150
    invoke-direct {p0, v3, v3, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    .line 151
    invoke-virtual {p0, v3, v3, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    :cond_4
    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 206
    invoke-direct {p0, p1, p1, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    :cond_0
    return-void
.end method

.method public final setNotificationsVisibleForExpansion(ZZZ)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    .line 104
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    if-nez p1, :cond_0

    .line 105
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz p1, :cond_0

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mAmbientPulseManager:Lcom/android/systemui/statusbar/AmbientPulseManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AmbientPulseManager;->releaseAllImmediately()V

    :cond_0
    return-void
.end method

.method public final setPulseHeight(F)F
    .locals 1

    .line 211
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez p0, :cond_0

    const-string v0, "mStackScroller"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulseHeight(F)F

    move-result p0

    return p0
.end method

.method public final setPulsing(Z)V
    .locals 1

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    if-eqz p1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    :cond_0
    return-void
.end method

.method public final setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stackScroller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public final setWakingUp(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWillWakeUp(Z)V

    .line 216
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mWakingUp:Z

    if-eqz p1, :cond_1

    .line 217
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    if-nez p1, :cond_1

    .line 219
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-nez p0, :cond_0

    const-string p1, "mStackScroller"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->wakeUpFromPulse()V

    :cond_1
    return-void
.end method

.method public final setWillWakeUp(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 68
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    :cond_1
    return-void
.end method
