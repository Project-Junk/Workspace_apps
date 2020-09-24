.class public final Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;
.super Landroid/widget/FrameLayout;
.source "Animation5GViewGroup.kt"

# interfaces
.implements Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnimation5GViewGroup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animation5GViewGroup.kt\ncom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup\n*L\n1#1,255:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\r\u0018\u0000 62\u00020\u00012\u00020\u0002:\u00016B%\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020*H\u0002J\u0008\u0010,\u001a\u00020*H\u0002J\u0008\u0010-\u001a\u00020*H\u0002J\u0008\u0010.\u001a\u00020*H\u0014J\u0008\u0010/\u001a\u00020*H\u0014J\u0008\u00100\u001a\u00020*H\u0002J\u0010\u00101\u001a\u00020*2\u0006\u00102\u001a\u00020\u0008H\u0016J\u0008\u00103\u001a\u00020*H\u0016J\u0008\u00104\u001a\u00020*H\u0002J\u0008\u00105\u001a\u00020*H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0013\u001a\u0004\u0008\u001e\u0010\u001fR\u001b\u0010!\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0013\u001a\u0004\u0008\"\u0010\u001fR\u001b\u0010$\u001a\u00020%8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u0013\u001a\u0004\u0008&\u0010\'\u00a8\u00067"
    }
    d2 = {
        "Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;",
        "Landroid/widget/FrameLayout;",
        "Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "mAnimRunning",
        "",
        "mAnimation5GImageView",
        "Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;",
        "mAnimatorListener",
        "Landroid/animation/Animator$AnimatorListener;",
        "getMAnimatorListener",
        "()Landroid/animation/Animator$AnimatorListener;",
        "mAnimatorListener$delegate",
        "Lkotlin/Lazy;",
        "mBgView",
        "Landroid/view/View;",
        "mFrameAnimDrawable",
        "Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;",
        "mObjAnimSet",
        "Landroid/animation/AnimatorSet;",
        "mTextView",
        "Landroid/widget/TextView;",
        "mUIHandler",
        "Landroid/os/Handler;",
        "getMUIHandler",
        "()Landroid/os/Handler;",
        "mUIHandler$delegate",
        "mWorkHandler",
        "getMWorkHandler",
        "mWorkHandler$delegate",
        "mWorkRunnable",
        "Ljava/lang/Runnable;",
        "getMWorkRunnable",
        "()Ljava/lang/Runnable;",
        "mWorkRunnable$delegate",
        "cancelAnimation",
        "",
        "initFrameAnimation",
        "initObjAnimation",
        "initViews",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "resetState",
        "setVisibility",
        "i",
        "startAnimation",
        "startFrameAnimation",
        "startObjAnimation",
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

.field public static final Companion:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$Companion;

.field private static final FRAME_ANIMATION_START:I = 0x2

.field private static final OBJ_ANIMATION_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Animation5GViewGroup"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private mAnimRunning:Z

.field private mAnimation5GImageView:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;

.field private final mAnimatorListener$delegate:Lkotlin/Lazy;

.field private mBgView:Landroid/view/View;

.field private mFrameAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

.field private mObjAnimSet:Landroid/animation/AnimatorSet;

.field private mTextView:Landroid/widget/TextView;

.field private final mUIHandler$delegate:Lkotlin/Lazy;

.field private final mWorkHandler$delegate:Lkotlin/Lazy;

.field private final mWorkRunnable$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mAnimatorListener"

    const-string v4, "getMAnimatorListener()Landroid/animation/Animator$AnimatorListener;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mWorkHandler"

    const-string v4, "getMWorkHandler()Landroid/os/Handler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mWorkRunnable"

    const-string v4, "getMWorkRunnable()Ljava/lang/Runnable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mUIHandler"

    const-string v4, "getMUIHandler()Landroid/os/Handler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->Companion:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance p1, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mAnimatorListener$2;-><init>(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimatorListener$delegate:Lkotlin/Lazy;

    .line 77
    sget-object p1, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mWorkHandler$2;->INSTANCE:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mWorkHandler$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mWorkHandler$delegate:Lkotlin/Lazy;

    .line 80
    new-instance p1, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mWorkRunnable$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mWorkRunnable$2;-><init>(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mWorkRunnable$delegate:Lkotlin/Lazy;

    .line 92
    new-instance p1, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup$mUIHandler$2;-><init>(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mUIHandler$delegate:Lkotlin/Lazy;

    .line 108
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->initViews()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 41
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMUIHandler$p(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)Landroid/os/Handler;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getMUIHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initFrameAnimation(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->initFrameAnimation()V

    return-void
.end method

.method public static final synthetic access$initObjAnimation(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->initObjAnimation()V

    return-void
.end method

.method public static final synthetic access$resetState(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->resetState()V

    return-void
.end method

.method public static final synthetic access$startFrameAnimation(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->startFrameAnimation()V

    return-void
.end method

.method public static final synthetic access$startObjAnimation(Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->startObjAnimation()V

    return-void
.end method

.method private final getMAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimatorListener$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method private final getMUIHandler()Landroid/os/Handler;
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mUIHandler$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final getMWorkHandler()Landroid/os/Handler;
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mWorkHandler$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final getMWorkRunnable()Ljava/lang/Runnable;
    .locals 2

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mWorkRunnable$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method private final initFrameAnimation()V
    .locals 5

    .line 219
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f11079f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 221
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b00d4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 222
    new-instance v3, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;-><init>(Ljava/lang/String;IIZ)V

    .line 223
    new-instance v0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mFrameAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 224
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mFrameAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v4}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setOneShot(Z)V

    :cond_0
    return-void
.end method

.method private final initObjAnimation()V
    .locals 16

    move-object/from16 v0, p0

    .line 172
    iget-object v1, v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mBgView:Landroid/view/View;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 177
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 180
    iget-object v2, v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mBgView:Landroid/view/View;

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-string v4, "animBgInAlpha"

    .line 181
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0xa7

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 182
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v8, 0x3f147ae1    # 0.58f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e2e147b    # 0.17f

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 185
    iget-object v4, v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mBgView:Landroid/view/View;

    if-nez v4, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    new-array v11, v3, [F

    fill-array-data v11, :array_1

    invoke-static {v4, v5, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-string v11, "animBgOutAlpha"

    .line 186
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 187
    new-instance v11, Landroid/view/animation/PathInterpolator;

    invoke-direct {v11, v10, v10, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v11, Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, 0xa28

    .line 188
    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 191
    iget-object v13, v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-nez v13, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    new-array v14, v3, [F

    fill-array-data v14, :array_2

    invoke-static {v13, v5, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string v13, "animTextInAlpha"

    .line 192
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 193
    new-instance v13, Landroid/view/animation/PathInterpolator;

    const v14, 0x3e75c28f    # 0.24f

    invoke-direct {v13, v10, v10, v14, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v13, Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v11, 0x4f3

    .line 194
    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 196
    iget-object v13, v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-nez v13, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    new-array v15, v3, [F

    fill-array-data v15, :array_3

    const-string v8, "scaleX"

    invoke-static {v13, v8, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-string v13, "animTextInScaleX"

    .line 197
    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 198
    new-instance v13, Landroid/view/animation/PathInterpolator;

    const v15, 0x3df5c28f    # 0.12f

    invoke-direct {v13, v10, v15, v14, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v13, Landroid/animation/TimeInterpolator;

    invoke-virtual {v8, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 201
    iget-object v13, v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-nez v13, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    new-array v11, v3, [F

    fill-array-data v11, :array_4

    const-string v12, "scaleY"

    invoke-static {v13, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const-string v12, "animTextInScaleY"

    .line 202
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 203
    new-instance v12, Landroid/view/animation/PathInterpolator;

    invoke-direct {v12, v10, v15, v14, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v12, Landroid/animation/TimeInterpolator;

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0x4f3

    .line 204
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 207
    iget-object v10, v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-nez v10, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    new-array v12, v3, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v13, v12, v14

    neg-float v1, v1

    const/4 v15, 0x1

    aput v1, v12, v15

    const-string v1, "translationY"

    invoke-static {v10, v1, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-string v10, "animTextOutTranslationY"

    .line 208
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 209
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3f051eb8    # 0.52f

    const v10, 0x3f147ae1    # 0.58f

    invoke-direct {v6, v7, v13, v10, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    check-cast v6, Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xa28

    .line 210
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 212
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mObjAnimSet:Landroid/animation/AnimatorSet;

    .line 213
    iget-object v6, v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mObjAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_7

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    check-cast v2, Landroid/animation/Animator;

    aput-object v2, v7, v14

    check-cast v5, Landroid/animation/Animator;

    aput-object v5, v7, v15

    check-cast v8, Landroid/animation/Animator;

    aput-object v8, v7, v3

    const/4 v2, 0x3

    check-cast v11, Landroid/animation/Animator;

    aput-object v11, v7, v2

    const/4 v2, 0x4

    .line 214
    check-cast v4, Landroid/animation/Animator;

    aput-object v4, v7, v2

    const/4 v2, 0x5

    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v7, v2

    .line 213
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 215
    :cond_7
    iget-object v1, v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mObjAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getMAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_8
    return-void

    :cond_9
    :goto_0
    const-string v0, "Statusbar"

    const-string v1, "Animation5GViewGroup"

    const-string v2, "5g child view is null"

    .line 173
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final initViews()V
    .locals 9

    .line 112
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mBgView:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mBgView:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f080ec3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mBgView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 116
    :cond_1
    new-instance v0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "context"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimation5GImageView:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;

    .line 117
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimation5GImageView:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;

    if-eqz v0, :cond_2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimation5GImageView:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;

    if-eqz v0, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->setVisibility(I)V

    .line 120
    :cond_3
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060247

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 122
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 128
    :cond_8
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mBgView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimation5GImageView:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final resetState()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mBgView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mBgView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimation5GImageView:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->setVisibility(I)V

    :cond_7
    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimRunning:Z

    .line 149
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mObjAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    :cond_8
    const/4 v0, 0x0

    .line 150
    check-cast v0, Landroid/animation/AnimatorSet;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mObjAnimSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private final startFrameAnimation()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimation5GImageView:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mFrameAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    :cond_0
    return-void
.end method

.method private final startObjAnimation()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1107a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mBgView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mObjAnimSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public cancelAnimation()V
    .locals 3

    .line 162
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimRunning:Z

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mObjAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimation5GImageView:Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mFrameAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GImageView;->cancelAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    :cond_1
    const/4 v0, 0x0

    .line 165
    move-object v1, v0

    check-cast v1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iput-object v1, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mFrameAnimDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 166
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getMWorkHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getMWorkRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 167
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getMUIHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 239
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 240
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->Companion:Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;->getInstance()Lcom/coloros/systemui/statusbar/utils/Anim5GController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->initController()V

    .line 241
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->Companion:Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;->getInstance()Lcom/coloros/systemui/statusbar/utils/Anim5GController;

    move-result-object v0

    check-cast p0, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->addCallback(Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 245
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 246
    sget-object v0, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->Companion:Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;

    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Companion;->getInstance()Lcom/coloros/systemui/statusbar/utils/Anim5GController;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/utils/Anim5GController;->removeCallback(Lcom/coloros/systemui/statusbar/utils/Anim5GController$Callback;)V

    .line 247
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->cancelAnimation()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 252
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 154
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->mAnimRunning:Z

    .line 156
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getMWorkHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getMWorkRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getMWorkHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/anim/Animation5GViewGroup;->getMWorkRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
