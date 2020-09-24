.class public final Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;
.super Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.source "PhoneStatusBarViewEx.kt"

# interfaces
.implements Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;
.implements Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhoneStatusBarViewEx.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneStatusBarViewEx.kt\ncom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx\n*L\n1#1,359:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u000c\u0018\u0000 T2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001TB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010:\u001a\u00020;H\u0016J\u0008\u0010<\u001a\u00020;H\u0002J\u0008\u0010=\u001a\u00020\nH\u0016J\u0008\u0010>\u001a\u00020\nH\u0002J\u0008\u0010?\u001a\u00020;H\u0014J\u0008\u0010@\u001a\u00020;H\u0016J\u0010\u0010A\u001a\u00020;2\u0006\u0010B\u001a\u00020CH\u0014J\u0008\u0010D\u001a\u00020;H\u0014J\u0010\u0010E\u001a\u00020\n2\u0006\u0010F\u001a\u00020GH\u0016J\u0008\u0010H\u001a\u00020;H\u0002J\u0008\u0010I\u001a\u00020;H\u0016J\u0008\u0010J\u001a\u00020;H\u0002J\u0010\u0010K\u001a\u00020;2\u0006\u0010L\u001a\u00020\u000fH\u0016J\u0010\u0010M\u001a\u00020;2\u0006\u0010L\u001a\u00020\u000fH\u0002J\u0008\u0010N\u001a\u00020;H\u0002J\u0008\u0010O\u001a\u00020;H\u0002J\u0018\u0010P\u001a\u00020;2\u0006\u0010Q\u001a\u00020R2\u0006\u0010L\u001a\u00020\u000fH\u0016J\u0008\u0010S\u001a\u00020;H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0014\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0013\u001a\u0004\u0008\u0015\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0013\u001a\u0004\u0008\u0018\u0010\u0011R\u001b\u0010\u001a\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0013\u001a\u0004\u0008\u001b\u0010\u0011R\u000e\u0010\u001d\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\'\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010\u0013\u001a\u0004\u0008(\u0010\u0011R\u001b\u0010*\u001a\u00020+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\u0013\u001a\u0004\u0008,\u0010-R\u001b\u0010/\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00083\u0010\u0013\u001a\u0004\u00081\u00102R\u001b\u00104\u001a\u00020+8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00086\u0010\u0013\u001a\u0004\u00085\u0010-R\u001b\u00107\u001a\u0002008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u0010\u0013\u001a\u0004\u00088\u00102\u00a8\u0006U"
    }
    d2 = {
        "Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;",
        "Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;",
        "Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;",
        "Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "mAnimRunning",
        "",
        "mAnimatorListener",
        "com/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mAnimatorListener$1",
        "Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mAnimatorListener$1;",
        "mHoleHeight",
        "",
        "getMHoleHeight",
        "()I",
        "mHoleHeight$delegate",
        "Lkotlin/Lazy;",
        "mHoleLeft",
        "getMHoleLeft",
        "mHoleLeft$delegate",
        "mHoleRight",
        "getMHoleRight",
        "mHoleRight$delegate",
        "mHoleTop",
        "getMHoleTop",
        "mHoleTop$delegate",
        "mLastBaseScreenWidth",
        "mLastDirection",
        "mLastRotation",
        "mLayoutParamsLeftMargin",
        "mLayoutParamsRightMargin",
        "mLeftMargin",
        "mObjAnimSet",
        "Landroid/animation/AnimatorSet;",
        "mPhysicScreenWidth",
        "mRightMargin",
        "mStatusBarHeight",
        "getMStatusBarHeight",
        "mStatusBarHeight$delegate",
        "mUIHandler",
        "Landroid/os/Handler;",
        "getMUIHandler",
        "()Landroid/os/Handler;",
        "mUIHandler$delegate",
        "mUIRunnable",
        "Ljava/lang/Runnable;",
        "getMUIRunnable",
        "()Ljava/lang/Runnable;",
        "mUIRunnable$delegate",
        "mWorkHandler",
        "getMWorkHandler",
        "mWorkHandler$delegate",
        "mWorkRunnable",
        "getMWorkRunnable",
        "mWorkRunnable$delegate",
        "cancelAnimation",
        "",
        "initObjAnimation",
        "isColorOS",
        "isRtl",
        "onAttachedToWindow",
        "onBatteryVisibilityChanged",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onDetachedFromWindow",
        "onTouchEvent",
        "event",
        "Landroid/view/MotionEvent;",
        "resetState",
        "startAnimation",
        "startObjAnimation",
        "updateContentsPadding",
        "orientation",
        "updateHolePadding",
        "updateLandscapePadding",
        "updatePortraitPadding",
        "updateSafeInsets",
        "layoutParams",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "updateViewParams",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$Companion;

.field private static final TAG:Ljava/lang/String; = "PhoneStatusBarViewEx"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mAnimRunning:Z

.field private final mAnimatorListener:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mAnimatorListener$1;

.field private final mHoleHeight$delegate:Lkotlin/Lazy;

.field private final mHoleLeft$delegate:Lkotlin/Lazy;

.field private final mHoleRight$delegate:Lkotlin/Lazy;

.field private final mHoleTop$delegate:Lkotlin/Lazy;

.field private mLastBaseScreenWidth:I

.field private mLastDirection:I

.field private mLastRotation:I

.field private mLayoutParamsLeftMargin:I

.field private mLayoutParamsRightMargin:I

.field private mLeftMargin:I

.field private mObjAnimSet:Landroid/animation/AnimatorSet;

.field private mPhysicScreenWidth:I

.field private mRightMargin:I

.field private final mStatusBarHeight$delegate:Lkotlin/Lazy;

.field private final mUIHandler$delegate:Lkotlin/Lazy;

.field private final mUIRunnable$delegate:Lkotlin/Lazy;

.field private final mWorkHandler$delegate:Lkotlin/Lazy;

.field private final mWorkRunnable$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mStatusBarHeight"

    const-string v4, "getMStatusBarHeight()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mHoleHeight"

    const-string v4, "getMHoleHeight()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mHoleRight"

    const-string v4, "getMHoleRight()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mHoleLeft"

    const-string v4, "getMHoleLeft()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mHoleTop"

    const-string v4, "getMHoleTop()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mWorkHandler"

    const-string v4, "getMWorkHandler()Landroid/os/Handler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mUIHandler"

    const-string v4, "getMUIHandler()Landroid/os/Handler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mWorkRunnable"

    const-string v4, "getMWorkRunnable()Ljava/lang/Runnable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mUIRunnable"

    const-string v4, "getMUIRunnable()Ljava/lang/Runnable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->Companion:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance p1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mStatusBarHeight$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mStatusBarHeight$2;-><init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mStatusBarHeight$delegate:Lkotlin/Lazy;

    .line 61
    sget-object p1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleHeight$2;->INSTANCE:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleHeight$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mHoleHeight$delegate:Lkotlin/Lazy;

    .line 62
    sget-object p1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleRight$2;->INSTANCE:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleRight$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mHoleRight$delegate:Lkotlin/Lazy;

    .line 63
    sget-object p1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleLeft$2;->INSTANCE:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleLeft$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mHoleLeft$delegate:Lkotlin/Lazy;

    .line 64
    sget-object p1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleTop$2;->INSTANCE:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mHoleTop$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mHoleTop$delegate:Lkotlin/Lazy;

    .line 65
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class p2, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ColorOSSystemUiManager.g\u2026enSizeHelper::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    invoke-virtual {p1}, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->getStableDisplayWidthSize()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mPhysicScreenWidth:I

    const/4 p1, -0x1

    .line 72
    iput p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLastDirection:I

    .line 76
    new-instance p1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mAnimatorListener$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mAnimatorListener$1;-><init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mAnimatorListener:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mAnimatorListener$1;

    .line 90
    sget-object p1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkHandler$2;->INSTANCE:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkHandler$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mWorkHandler$delegate:Lkotlin/Lazy;

    .line 92
    sget-object p1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mUIHandler$2;->INSTANCE:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mUIHandler$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mUIHandler$delegate:Lkotlin/Lazy;

    .line 94
    new-instance p1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;-><init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mWorkRunnable$delegate:Lkotlin/Lazy;

    .line 102
    new-instance p1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mUIRunnable$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mUIRunnable$2;-><init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mUIRunnable$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMContext$p(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMUIHandler$p(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)Landroid/os/Handler;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMUIHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMUIRunnable$p(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMUIRunnable()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initObjAnimation(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->initObjAnimation()V

    return-void
.end method

.method public static final synthetic access$resetState(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->resetState()V

    return-void
.end method

.method public static final synthetic access$setMContext$p(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;Landroid/content/Context;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$startObjAnimation(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->startObjAnimation()V

    return-void
.end method

.method private final getMHoleHeight()I
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mHoleHeight$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMHoleLeft()I
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mHoleLeft$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMHoleRight()I
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mHoleRight$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMHoleTop()I
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mHoleTop$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMStatusBarHeight()I
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mStatusBarHeight$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final getMUIHandler()Landroid/os/Handler;
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mUIHandler$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final getMUIRunnable()Ljava/lang/Runnable;
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mUIRunnable$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private final getMWorkHandler()Landroid/os/Handler;
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mWorkHandler$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final getMWorkRunnable()Ljava/lang/Runnable;
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mWorkRunnable$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private final initObjAnimation()V
    .locals 9

    .line 337
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mObjAnimSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    .line 339
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v3, "animOutAlpha"

    .line 340
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x53

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 341
    new-instance v5, Landroid/view/animation/PathInterpolator;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f147ae1    # 0.58f

    const v8, 0x3e2e147b    # 0.17f

    invoke-direct {v5, v8, v8, v7, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 343
    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {p0, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v5, "animInAlpha"

    .line 344
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 345
    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v8, v8, v7, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v3, Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xb22

    .line 346
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 348
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mObjAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    check-cast v2, Landroid/animation/Animator;

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mObjAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mAnimatorListener:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mAnimatorListener$1;

    check-cast p0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final isRtl()Z
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-string v0, "resources.configuration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final resetState()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 353
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->setAlpha(F)V

    const/4 v0, 0x0

    .line 354
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mAnimRunning:Z

    .line 355
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mObjAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :cond_0
    const/4 v0, 0x0

    .line 356
    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mObjAnimSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private final startObjAnimation()V
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mObjAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private final updateHolePadding(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ColorOSSystemUiManager.g\u2026ryController::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {p1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->isLeftHole()Z

    move-result p1

    const v1, 0x7f070162

    if-eqz p1, :cond_2

    .line 150
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v2

    const-class v3, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v2}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->getCircleBatteryRight()I

    move-result v0

    .line 151
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMHoleRight()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    .line 154
    :cond_1
    iget v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLayoutParamsLeftMargin:I

    .line 151
    :goto_0
    iput v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLeftMargin:I

    goto :goto_2

    .line 157
    :cond_2
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v2

    const-class v3, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v2}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->getCircleBatteryLeft()I

    move-result v0

    .line 158
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mContext.resources"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v0, v2, v0

    .line 159
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMHoleLeft()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 160
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_1

    .line 162
    :cond_3
    iget v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLayoutParamsLeftMargin:I

    .line 159
    :goto_1
    iput v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mRightMargin:I

    .line 165
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHolePadding :isLeftHole = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",padding ="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mRightMargin = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mRightMargin:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mLeftMargin = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLeftMargin:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string v0, "PhoneStatusBarViewEx"

    .line 165
    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateLandscapePadding()V
    .locals 5

    .line 274
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLandscapePadding display.rotation= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getDisplay()Landroid/view/Display;

    move-result-object v2

    const-string v3, "display"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isRtl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->isRtl()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v4, "PhoneStatusBarViewEx"

    .line 277
    invoke-static {v2, v4, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 283
    sget v1, Lcom/android/systemui/R$id;->status_bar_contents:I

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMStatusBarHeight()I

    move-result v3

    invoke-virtual {v1, v3, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    .line 287
    :cond_0
    sget v1, Lcom/android/systemui/R$id;->status_bar_contents:I

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMStatusBarHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 289
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMHoleHeight()I

    move-result v0

    if-lez v0, :cond_3

    .line 290
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ColorOSSystemUiManager.g\u2026enSizeHelper::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->getBaseDisplayHeightSize()I

    move-result v0

    .line 291
    sget v1, Lcom/android/systemui/R$id;->system_icon_area:I

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/AlphaOptimizedLinearLayout;

    const-string v2, "system_icon_area"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 292
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0707b6

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_1

    .line 291
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private final updatePortraitPadding()V
    .locals 5

    .line 237
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0707b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 238
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0707b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 256
    sget v3, Lcom/android/systemui/R$id;->status_bar_contents:I

    invoke-virtual {p0, v3}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget v4, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLeftMargin:I

    if-lez v4, :cond_0

    move v0, v4

    .line 258
    :cond_0
    iget v4, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mRightMargin:I

    if-lez v4, :cond_1

    move v2, v4

    :cond_1
    const/4 v4, 0x0

    .line 256
    invoke-virtual {v3, v0, v4, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 260
    :cond_2
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMHoleHeight()I

    move-result v0

    if-lez v0, :cond_4

    .line 261
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v2, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "ColorOSSystemUiManager.g\u2026enSizeHelper::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->getBaseDisplayWidthSize()I

    move-result v0

    .line 262
    sget v2, Lcom/android/systemui/R$id;->system_icon_area:I

    invoke-virtual {p0, v2}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/AlphaOptimizedLinearLayout;

    const-string v3, "system_icon_area"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 263
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 262
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method private final updateViewParams()V
    .locals 4

    .line 212
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMHoleHeight()I

    move-result v0

    if-lez v0, :cond_3

    .line 213
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ColorOSSystemUiManager.g\u2026enSizeHelper::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/common/helper/ScreenSizeHelper;->getBaseDisplayWidthSize()I

    move-result v0

    .line 214
    iget v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLastBaseScreenWidth:I

    if-ne v1, v0, :cond_0

    return-void

    .line 217
    :cond_0
    iput v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLastBaseScreenWidth:I

    .line 218
    sget v1, Lcom/android/systemui/R$id;->status_bar_contents:I

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v2, "status_bar_contents"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 219
    iget v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mPhysicScreenWidth:I

    if-eq v2, v0, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMHoleHeight()I

    move-result v2

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mPhysicScreenWidth:I

    div-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 221
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMHoleTop()I

    move-result v2

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mPhysicScreenWidth:I

    div-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMHoleHeight()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 224
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMHoleTop()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 227
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateViewParams :currentScreenWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",physicScreenWidth = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mPhysicScreenWidth:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",height = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",topMargin = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Statusbar"

    const-string v2, "PhoneStatusBarViewEx"

    .line 227
    invoke-static {v0, v2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x30

    .line 232
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 218
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public cancelAnimation()V
    .locals 2

    .line 325
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mAnimRunning:Z

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mObjAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMWorkHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMWorkRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMUIHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMUIRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public isColorOS()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 298
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onAttachedToWindow()V

    .line 299
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->Companion:Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;->getInstance()Lcom/coloros/systemui/statusbar/utils/Anim5GController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->initController()V

    .line 300
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->Companion:Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;->getInstance()Lcom/coloros/systemui/statusbar/utils/Anim5GController;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->addCallback(Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;)V

    .line 301
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    move-object v1, p0

    check-cast v1, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->setBatteryChangeListener(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;)V

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->updateViewParams()V

    return-void
.end method

.method public onBatteryVisibilityChanged()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mContext.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->updateHolePadding(I)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatteryVisibilityChanged: mLeftMargin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLeftMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mRightMargin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mRightMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "PhoneStatusBarViewEx"

    .line 138
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->updatePortraitPadding()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->updateOrientationAndCutout(I)Z

    move-result v0

    const-string v1, "display"

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLastDirection:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLastRotation:I

    if-eq v0, v2, :cond_1

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLastDirection:I

    .line 202
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLastRotation:I

    .line 203
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->updateLayoutForCutout()V

    .line 204
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->updateContentsPadding(I)V

    .line 205
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->requestLayout()V

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->updateViewParams()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 308
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onDetachedFromWindow()V

    .line 309
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->Companion:Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;->getInstance()Lcom/coloros/systemui/statusbar/utils/Anim5GController;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->removeCallback(Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;)V

    .line 310
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;

    move-object v1, p0

    check-cast v1, Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/policy/CirCleBatteryController;->removeBatterChangeListener(Lcom/coloros/systemui/statusbar/widget/CircleBatteryView$BatteryChangeListener;)V

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->cancelAnimation()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "PhoneStatusBarViewEx"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "mBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getInstance()Lcom/coloros/systemui/notification/NotificationCenterManager;

    move-result-object v0

    .line 115
    const-class v2, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/notification/NotificationCenterManager;->getHelper(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "NotificationCenterManage\u2026elPullHelper::class.java)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/notification/helper/PanelPullHelper;->getDisablePullStatusBarOnShade()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v2, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v2}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->onTouchEvent(Landroid/view/MotionEvent;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public startAnimation()V
    .locals 2

    .line 317
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mAnimRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mAnimRunning:Z

    .line 319
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMWorkHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMWorkRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMWorkHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->getMWorkRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateContentsPadding(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->updatePortraitPadding()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->updateLandscapePadding()V

    :goto_0
    return-void
.end method

.method public updateSafeInsets(Landroid/widget/FrameLayout$LayoutParams;I)V
    .locals 3
    .param p1    # Landroid/widget/FrameLayout$LayoutParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "layoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSafeInsets(), leftMargin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rightMargin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "PhoneStatusBarViewEx"

    .line 170
    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLeftMargin:I

    .line 174
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mRightMargin:I

    .line 175
    iget v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLeftMargin:I

    iput v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLayoutParamsLeftMargin:I

    .line 176
    iget v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mRightMargin:I

    iput v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLayoutParamsRightMargin:I

    .line 178
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCircleBatteryView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0, p2}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->updateHolePadding(I)V

    .line 182
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mLeftMargin:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 183
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 186
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->mRightMargin:I

    if-lez v0, :cond_2

    .line 187
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_2
    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    .line 191
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->updatePortraitPadding()V

    :cond_3
    return-void
.end method
