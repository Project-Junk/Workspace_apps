.class public Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;
.super Ljava/lang/Object;
.source "QSFragmentHelperImpl.java"

# interfaces
.implements Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;


# static fields
.field private static volatile mInstance:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;


# instance fields
.field private mColorQSAnimator:Lcom/android/systemui/qs/ColorQSAnimator;

.field private mContainer:Lcom/coloros/systemui/qs/ColorQSContainerImpl;

.field private mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

.field private mQSExpand:Lcom/coloros/systemui/qs/ColorQSExpandImpl;

.field private mQs:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;
    .locals 2

    .line 30
    sget-object v0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mInstance:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mInstance:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;

    invoke-direct {v1}, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;-><init>()V

    sput-object v1, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mInstance:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mInstance:Lcom/coloros/systemui/qs/helper/IQSFragmentHelper;

    return-object v0
.end method


# virtual methods
.method public getQSAnimator()Lcom/android/systemui/qs/ColorQSAnimator;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mColorQSAnimator:Lcom/android/systemui/qs/ColorQSAnimator;

    return-object p0
.end method

.method public getQSBottom()Lcom/coloros/systemui/qs/ColorQSBottomImpl;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    return-object p0
.end method

.method public getQsContainer()Lcom/coloros/systemui/qs/ColorQSContainerImpl;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mContainer:Lcom/coloros/systemui/qs/ColorQSContainerImpl;

    return-object p0
.end method

.method public getQsExpand()Lcom/coloros/systemui/qs/ColorQSExpandImpl;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mQSExpand:Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    return-object p0
.end method

.method public getQsFragment()Lcom/android/systemui/qs/QSFragment;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mQs:Lcom/android/systemui/qs/QSFragment;

    return-object p0
.end method

.method public setQsAnimator(Lcom/android/systemui/qs/ColorQSAnimator;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mColorQSAnimator:Lcom/android/systemui/qs/ColorQSAnimator;

    return-void
.end method

.method public setQsBottom(Lcom/coloros/systemui/qs/ColorQSBottomImpl;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mQSBottom:Lcom/coloros/systemui/qs/ColorQSBottomImpl;

    return-void
.end method

.method public setQsContainer(Lcom/coloros/systemui/qs/ColorQSContainerImpl;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mContainer:Lcom/coloros/systemui/qs/ColorQSContainerImpl;

    return-void
.end method

.method public setQsExpand(Lcom/coloros/systemui/qs/ColorQSExpandImpl;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mQSExpand:Lcom/coloros/systemui/qs/ColorQSExpandImpl;

    return-void
.end method

.method public setQsFragment(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/QSFragmentHelperImpl;->mQs:Lcom/android/systemui/qs/QSFragment;

    return-void
.end method
