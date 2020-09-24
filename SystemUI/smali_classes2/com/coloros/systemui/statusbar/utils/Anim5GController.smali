.class public final Lcom/coloros/systemui/statusbar/utils/Anim5GController;
.super Ljava/lang/Object;
.source "Anim5GController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/coloros/systemui/common/receiver/IReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;,
        Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnim5GController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Anim5GController.kt\ncom/coloros/systemui/statusbar/utils/Anim5GController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,196:1\n1582#2,2:197\n1582#2,2:199\n1582#2,2:201\n1582#2,2:203\n1582#2,2:205\n*E\n*S KotlinDebug\n*F\n+ 1 Anim5GController.kt\ncom/coloros/systemui/statusbar/utils/Anim5GController\n*L\n98#1,2:197\n129#1,2:199\n132#1,2:201\n159#1,2:203\n162#1,2:205\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \'2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002&\'B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nJ\u0016\u0010\u0012\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0008\u0010\u0015\u001a\u00020\u000eH\u0002J\u0006\u0010\u0016\u001a\u00020\u0013J\u0008\u0010\u0017\u001a\u00020\u000cH\u0002J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u000cH\u0016J\u0010\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0006\u0010\u001d\u001a\u00020\u0013J\u001c\u0010\u001e\u001a\u00020\u00132\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u000e\u0010#\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nJ\u0016\u0010#\u001a\u00020\u00132\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0008\u0010$\u001a\u00020\u0013H\u0002J\u0008\u0010%\u001a\u00020\u0013H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/coloros/systemui/statusbar/utils/Anim5GController;",
        "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;",
        "Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;",
        "Lcom/coloros/systemui/common/receiver/IReceiverListener;",
        "()V",
        "mAnimCnt",
        "",
        "mCallbacks",
        "",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;",
        "mDisable",
        "",
        "mLastAnimTime",
        "",
        "mLastConnected",
        "mRusDisable",
        "mTestMode",
        "addCallback",
        "",
        "callback",
        "getIntervalTimeMillis",
        "initController",
        "isAnimCntEnable",
        "on5gConnected",
        "connected",
        "onConfigChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onDestroy",
        "onReceive",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "removeCallback",
        "resetAnimCnt",
        "setLastAnimTime",
        "Callback",
        "Companion",
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
.field public static final Companion:Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final SHOW_TIMES_LIMIT:I = 0x1

.field private static final SP_ANIM_CNT:Ljava/lang/String; = "Anim5GShowCount"

.field private static final SP_ANIM_LAST_TIME:Ljava/lang/String; = "Anim5GShowLastTime"

.field private static final TAG:Ljava/lang/String; = "Anim5GController"

.field private static final instance:Lcom/coloros/systemui/statusbar/utils/Anim5GController;


# instance fields
.field private mAnimCnt:I

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisable:Z

.field private mLastAnimTime:J

.field private mLastConnected:Z

.field private mRusDisable:Z

.field private mTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->Companion:Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;

    .line 40
    new-instance v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;

    invoke-direct {v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;-><init>()V

    sput-object v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->instance:Lcom/coloros/systemui/statusbar/utils/Anim5GController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mCallbacks:Ljava/util/List;

    .line 55
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 56
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/coloros/systemui/common/receiver/TestModeReceiver;->Companion:Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;

    invoke-virtual {v0}, Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;->getInstance()Lcom/coloros/systemui/common/receiver/TestModeReceiver;

    move-result-object v0

    check-cast p0, Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/receiver/TestModeReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/coloros/systemui/statusbar/utils/Anim5GController;
    .locals 1

    .line 31
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->instance:Lcom/coloros/systemui/statusbar/utils/Anim5GController;

    return-object v0
.end method

.method private final addCallback(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 168
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final getIntervalTimeMillis()J
    .locals 6

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mLastAnimTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mLastAnimTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Statusbar"

    const-string v4, "Anim5GController"

    invoke-static {v3, v4, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-wide v2, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mLastAnimTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 90
    iput-wide v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mLastAnimTime:J

    .line 91
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v2

    const-string v3, "ColorOSSystemUiManager.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mLastAnimTime:J

    const-string v5, "Anim5GShowLastTime"

    invoke-static {v2, v5, v3, v4}, Lcom/android/systemui/Prefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 93
    :cond_0
    iget-wide v2, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mLastAnimTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private final isAnimCntEnable()Z
    .locals 1

    .line 84
    iget p0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final removeCallback(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;",
            ">;)V"
        }
    .end annotation

    .line 173
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mCallbacks:Ljava/util/List;

    new-instance v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController$removeCallback$1;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$removeCallback$1;-><init>(Ljava/lang/ref/WeakReference;)V

    check-cast v0, Ljava/util/function/Predicate;

    invoke-interface {p0, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private final resetAnimCnt()V
    .locals 6

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntervalTimeMillis() > ONE_DAY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->getIntervalTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v5, "Anim5GController"

    .line 68
    invoke-static {v1, v5, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->getIntervalTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 71
    iput v2, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    .line 72
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-string v1, "ColorOSSystemUiManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    const-string v1, "Anim5GShowCount"

    invoke-static {v0, v1, p0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private final setLastAnimTime()V
    .locals 4

    .line 77
    iget v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mLastAnimTime:J

    .line 79
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-string v1, "ColorOSSystemUiManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mLastAnimTime:J

    const-string v3, "Anim5GShowLastTime"

    invoke-static {v0, v3, v1, v2}, Lcom/android/systemui/Prefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAnimCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastAnimTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mLastAnimTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    const-string v1, "Anim5GController"

    invoke-static {v0, v1, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;)V
    .locals 1
    .param p1    # Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->addCallback(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public final initController()V
    .locals 4

    .line 61
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-string v1, "ColorOSSystemUiManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "Anim5GShowCount"

    .line 62
    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    const-wide/16 v1, 0x0

    const-string v3, "Anim5GShowLastTime"

    .line 63
    invoke-static {v0, v3, v1, v2}, Lcom/android/systemui/Prefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mLastAnimTime:J

    :cond_0
    return-void
.end method

.method public on5gConnected(Z)V
    .locals 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on5gConnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTestMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mTestMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Anim5GController"

    const-string v2, "Statusbar"

    .line 110
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isStatusbar5gAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mTestMode:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mDisable:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mLastConnected:Z

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    .line 115
    :cond_0
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->INSTANCE:Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;

    const-string v3, "anim_5g"

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->isBlackListValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mRusDisable:Z

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRusDisable = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mRusDisable:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mRusDisable:Z

    if-eqz v0, :cond_1

    return-void

    .line 121
    :cond_1
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mLastConnected:Z

    if-eqz p1, :cond_4

    .line 123
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->resetAnimCnt()V

    .line 124
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->setLastAnimTime()V

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAnimCntEnable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->isAnimCntEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->isAnimCntEnable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 127
    iget p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    .line 128
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-string v0, "ColorOSSystemUiManager.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    const-string v1, "Anim5GShowCount"

    invoke-static {p1, v1, v0}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 129
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mCallbacks:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 199
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 129
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;->startAnimation()V

    goto :goto_0

    .line 132
    :cond_4
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mCallbacks:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 201
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 132
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;->cancelAnimation()V

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 98
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mCallbacks:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 197
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 98
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;->cancelAnimation()V

    goto :goto_0

    .line 99
    :cond_1
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mDisable:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 100
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mDisable:Z

    goto :goto_1

    .line 103
    :cond_2
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mDisable:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mDisable:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 186
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 187
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 188
    sget-object v0, Lcom/coloros/systemui/common/receiver/TestModeReceiver;->Companion:Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;

    invoke-virtual {v0}, Lcom/coloros/systemui/common/receiver/TestModeReceiver$Companion;->getInstance()Lcom/coloros/systemui/common/receiver/TestModeReceiver;

    move-result-object v0

    check-cast p0, Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/receiver/TestModeReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "oppo.action.open.TEST_MODE"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "type"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "anim_5g"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "test"

    .line 144
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mTestMode:Z

    .line 145
    sget-object p1, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->INSTANCE:Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->isBlackListValue(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mRusDisable:Z

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "StatusBarAnimBlackList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->INSTANCE:Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/utils/StatusBarAnimBlackList;->getStatusBarAnimBlackList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Anim5GController"

    const-string v2, "Statusbar"

    invoke-static {v2, v0, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isStatusbar5gAnimEnable()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mTestMode:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mDisable:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mRusDisable:Z

    if-eqz p1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string p1, "show"

    .line 151
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 153
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->resetAnimCnt()V

    .line 154
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->setLastAnimTime()V

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isAnimCntEnable = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->isAnimCntEnable()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->isAnimCntEnable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 157
    iget p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    .line 158
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-string p2, "ColorOSSystemUiManager.getInstance()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mAnimCnt:I

    const-string v0, "Anim5GShowCount"

    invoke-static {p1, v0, p2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 159
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mCallbacks:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 203
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 159
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;->startAnimation()V

    goto :goto_1

    .line 162
    :cond_4
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->mCallbacks:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    .line 205
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 162
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;->cancelAnimation()V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public final removeCallback(Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;)V
    .locals 1
    .param p1    # Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->removeCallback(Ljava/lang/ref/WeakReference;)V

    return-void
.end method
