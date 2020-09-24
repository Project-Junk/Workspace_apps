.class public Lcom/coloros/systemui/statusbar/widget/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$NetworkSpeedChanged;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field static final TAG:Ljava/lang/String; = "SignalClusterView"


# instance fields
.field private mActivityEnabled:Z

.field private mAirplane:Landroid/widget/ImageView;

.field private mAirplaneContentDescription:Ljava/lang/String;

.field private mAirplaneIconId:I

.field private mDarkIntensity:F

.field private mDoubleWifi:Z

.field private mDoubleWifiView:Landroid/widget/ImageView;

.field private mForceUpdate:Z

.field private mIconTint:I

.field private mIsAirplaneMode:Z

.field private mLastWifiStrengthId:I

.field private mLastWifiVisible:Z

.field private mLayoutLeft:I

.field private mMobileSignalGroup:Landroid/widget/LinearLayout;

.field private mNetworkMonitor:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

.field private mNetworkSpeedTv:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

.field private mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

.field private mNoSims:Landroid/widget/ImageView;

.field private mNoVolteIconId:I

.field private mNoVolteImag:Landroid/widget/ImageView;

.field private mPhoneStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;",
            ">;"
        }
    .end annotation
.end field

.field private mPlmnTv:Landroid/widget/TextView;

.field private mSellModeDisplay:Landroid/widget/TextView;

.field private mShouldShowSpeed:Z

.field private mShowDark:Z

.field private final mTintArea:Landroid/graphics/Rect;

.field private mVolteIconId:I

.field private mVolteImag:Landroid/widget/ImageView;

.field private mVowifiIconId:I

.field private mVowifiImag:Landroid/widget/ImageView;

.field private mWifi:Landroid/widget/ImageView;

.field private mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiDescription:Ljava/lang/String;

.field private mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiIn:Z

.field private mWifiOut:Z

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiVisible:Z

    .line 80
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mLastWifiVisible:Z

    .line 81
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiStrengthId:I

    const/4 p2, -0x1

    .line 82
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mLastWifiStrengthId:I

    .line 85
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIsAirplaneMode:Z

    .line 86
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplaneIconId:I

    .line 89
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    .line 90
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    .line 92
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mLayoutLeft:I

    .line 106
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteIconId:I

    .line 107
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVowifiIconId:I

    .line 108
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoVolteIconId:I

    const/4 p2, 0x1

    .line 118
    iput-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mShowDark:Z

    .line 119
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDoubleWifi:Z

    .line 120
    iput-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mShouldShowSpeed:Z

    .line 135
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 136
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x7f0707ca

    .line 137
    invoke-virtual {p3, v1, v0, p2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 142
    new-instance p2, Lcom/coloros/systemui/statusbar/widget/SignalClusterView$1;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p1, p3}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView$1;-><init>(Lcom/coloros/systemui/statusbar/widget/SignalClusterView;II)V

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 155
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class p2, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-virtual {p1, p2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkMonitor:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    .line 157
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->updateActivityEnabled()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/statusbar/widget/SignalClusterView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyWifiIndicators()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/statusbar/widget/SignalClusterView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyMobileDataIndicators()V

    return-void
.end method

.method private applyIconTint()V
    .locals 5

    .line 764
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    invoke-static {v1, v0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 765
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    .line 766
    invoke-static {v1, v0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 765
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 767
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    .line 768
    invoke-static {v1, v0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 767
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 769
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    .line 770
    invoke-static {v1, v0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 769
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 771
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteImag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    .line 772
    invoke-static {v1, v0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 771
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 773
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVowifiImag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    .line 774
    invoke-static {v1, v0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 773
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 775
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoVolteImag:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    .line 776
    invoke-static {v1, v0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 775
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 777
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDoubleWifiView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    .line 778
    invoke-static {v1, v0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    .line 777
    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    .line 779
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPlmnTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    invoke-static {v1, v0, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 780
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkSpeedTv:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDarkIntensity:F

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->setIconTint(IFLandroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 784
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDarkIntensity:F

    iget-object v4, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->setIconTint(IFLandroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    if-eqz v0, :cond_1

    .line 788
    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    iget v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDarkIntensity:F

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, p0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->setIconTint(IFLandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private applyMobileDataIndicators()V
    .locals 5

    .line 640
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 647
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->updateMobileIconVisibility()V

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    .line 652
    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiVisible:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiStrengthId:I

    if-eqz v3, :cond_2

    .line 653
    iput v2, v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivityId:I

    goto :goto_1

    .line 654
    :cond_2
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mLastWifiVisible:Z

    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiVisible:Z

    if-eq v2, v3, :cond_3

    if-nez v3, :cond_3

    const-string v2, "Statusbar"

    const-string v3, "SignalClusterView"

    const-string v4, "update DataActivityIcon by wifi visible change"

    .line 655
    invoke-static {v2, v3, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v2

    const-class v3, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    iget v3, v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    .line 658
    invoke-virtual {v2, v3}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->getDataActivityIcon(I)I

    move-result v2

    iput v2, v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivityId:I

    .line 660
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mForceUpdate:Z

    iget-boolean v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIsAirplaneMode:Z

    invoke-virtual {v1, v2, v3}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->apply(ZZ)Z

    goto :goto_0

    .line 662
    :cond_4
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->updateVolteAndVowifiIcon()V

    .line 664
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_5

    .line 665
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplaneIconId:I

    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 666
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 669
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 671
    :goto_2
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->updateNoSimView()V

    return-void
.end method

.method private applyWifiIndicators()V
    .locals 5

    .line 576
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiVisible:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_4

    .line 580
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiStrengthId:I

    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 581
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiActivityId:I

    if-eqz v0, :cond_1

    .line 582
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiActivityId:I

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDoubleWifiView:Landroid/widget/ImageView;

    const v1, 0x7f080f37

    invoke-direct {p0, v0, v1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    .line 586
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDoubleWifiView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDoubleWifi:Z

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mContext:Landroid/content/Context;

    const v4, 0x7f1100f7

    .line 589
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 587
    invoke-static {v0, v1, v2, v4}, Lcom/coloros/systemui/common/util/StatusBarUtils;->setContentDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 594
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private getState(I)Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;
    .locals 2

    .line 501
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    .line 502
    iget v1, v0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSubId:I

    if-ne v1, p1, :cond_0

    return-object v0

    .line 506
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected subscription "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SignalClusterView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getWifiActivityId(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const p0, 0x7f080ef1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f080ef0

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f080ef4

    return p0

    :cond_2
    const p0, 0x7f080ef3

    return p0
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 488
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 493
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    iget v3, v3, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSubId:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private inflatePhoneState(II)Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;
    .locals 2

    .line 512
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCuSignalViewLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    new-instance v0, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/coloros/systemui/statusbar/widget/CuMobileSignalGroupView;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    .line 515
    :cond_0
    new-instance v0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;-><init>(Landroid/content/Context;II)V

    .line 517
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    .line 518
    iget-object p2, v0, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private setIconForView(Landroid/widget/ImageView;I)V
    .locals 0

    if-nez p2, :cond_0

    const-string p0, "SignalClusterView"

    const-string p1, "iconId is 0"

    .line 742
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 746
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 747
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setTint(Landroid/widget/ImageView;I)V
    .locals 0

    .line 809
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateActivityEnabled()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mActivityEnabled:Z

    return-void
.end method

.method private updateMobileIconVisibility()V
    .locals 9

    .line 604
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    .line 605
    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getSimForbiddenStatus()[Z

    move-result-object v0

    .line 606
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v1

    const-class v2, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    .line 607
    invoke-virtual {v1}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getSimInsertedStatus()[Z

    move-result-object v1

    .line 609
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMobileIconVisibility SimForbin["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-boolean v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-boolean v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "] SimInserted["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v6, v1, v3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v4, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SignalClusterView"

    const-string v6, "Statusbar"

    invoke-static {v6, v4, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    if-nez v2, :cond_1

    return-void

    .line 618
    :cond_1
    aget-boolean v7, v1, v3

    if-eqz v7, :cond_0

    aget-boolean v7, v1, v5

    if-eqz v7, :cond_0

    .line 619
    aget-boolean v7, v0, v3

    if-eqz v7, :cond_2

    aget-boolean v7, v0, v5

    if-eqz v7, :cond_2

    .line 621
    iput-boolean v3, v2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileVisible:Z

    .line 622
    iget v7, v2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    if-nez v7, :cond_4

    .line 623
    iput-boolean v5, v2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileVisible:Z

    goto :goto_1

    .line 625
    :cond_2
    aget-boolean v7, v0, v3

    if-eqz v7, :cond_3

    aget-boolean v7, v0, v5

    if-nez v7, :cond_3

    iget v7, v2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    if-nez v7, :cond_3

    .line 627
    iput-boolean v3, v2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileVisible:Z

    goto :goto_1

    .line 628
    :cond_3
    aget-boolean v7, v0, v3

    if-nez v7, :cond_4

    aget-boolean v7, v0, v5

    if-eqz v7, :cond_4

    iget v7, v2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    if-ne v7, v5, :cond_4

    .line 630
    iput-boolean v3, v2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileVisible:Z

    .line 632
    :cond_4
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateMobileIconVisibility : slot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",MobileVisible = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileVisible:Z

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v4, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateNoSimView()V
    .locals 8

    .line 410
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCtaSupport()Z

    move-result v0

    const-string v1, "SignalClusterView"

    const-string v2, "Statusbar"

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCuSignalViewLayout()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSingleSimcard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    if-eqz v0, :cond_b

    .line 414
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v5, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-virtual {v0, v5}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    .line 415
    invoke-virtual {v0}, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;->getSimInsertedStatus()[Z

    move-result-object v0

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simInserted["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-boolean v7, v0, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] childCount: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 417
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mIsAirplaneMode:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIsAirplaneMode:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 416
    invoke-static {v2, v1, v5}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-boolean v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 420
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 421
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteImag:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 425
    :cond_1
    aget-boolean v1, v0, v4

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    aget-boolean v1, v0, v6

    if-eqz v1, :cond_4

    .line 426
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    .line 428
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v5, v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 431
    iget v3, v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    if-nez v3, :cond_3

    .line 432
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 434
    :cond_3
    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 439
    :cond_4
    aget-boolean v1, v0, v4

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v1, v6, :cond_7

    .line 440
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 441
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    invoke-virtual {v1, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 443
    :cond_5
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->updateVisible(I)V

    .line 444
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    .line 447
    iget-object v5, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v6, v3, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-ne v5, v2, :cond_6

    iget v5, v3, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    aget-boolean v5, v0, v5

    if-eqz v5, :cond_6

    .line 449
    iget-object v5, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v3, v3, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 452
    :cond_7
    aget-boolean v1, v0, v6

    if-eqz v1, :cond_a

    .line 453
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v2, :cond_8

    .line 454
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 456
    :cond_8
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    invoke-virtual {v1, v6}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->updateVisible(I)V

    .line 457
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    .line 460
    iget-object v4, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v5, v3, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ne v4, v2, :cond_9

    iget v4, v3, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    aget-boolean v4, v0, v4

    if-eqz v4, :cond_9

    .line 462
    iget-object v4, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v3, v3, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 465
    :cond_a
    aget-boolean v1, v0, v4

    if-nez v1, :cond_e

    aget-boolean v0, v0, v6

    if-nez v0, :cond_e

    .line 466
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 467
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteImag:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NoSimView;->updateVisible(I)V

    goto :goto_3

    .line 472
    :cond_b
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v0, :cond_c

    .line 473
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 477
    :cond_c
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "mPhoneStates\' size is 0, show no sim icon"

    .line 478
    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 482
    :cond_d
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    :goto_3
    return-void
.end method

.method private updateVolteAndVowifiIcon()V
    .locals 7

    .line 685
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteIconId:I

    const/4 v1, 0x0

    const v2, 0x7f1100f7

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteImag:Landroid/widget/ImageView;

    iget v5, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteIconId:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 687
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteImag:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteImag:Landroid/widget/ImageView;

    .line 689
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v5

    const-class v6, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v5, v6}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 690
    invoke-virtual {v5}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->getVolteContenDescription()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mContext:Landroid/content/Context;

    .line 691
    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 688
    invoke-static {v0, v5, v6, v1}, Lcom/coloros/systemui/common/util/StatusBarUtils;->setContentDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteImag:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 697
    :goto_0
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVowifiIconId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVowifiImag:Landroid/widget/ImageView;

    iget v5, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVowifiIconId:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 699
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVowifiImag:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVowifiImag:Landroid/widget/ImageView;

    .line 701
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v5

    const-class v6, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {v5, v6}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 702
    invoke-virtual {v5}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->getVowifiContenDescription()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mContext:Landroid/content/Context;

    .line 703
    invoke-virtual {v6, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 700
    invoke-static {v0, v5, v2, v1}, Lcom/coloros/systemui/common/util/StatusBarUtils;->setContentDescription(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVowifiImag:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    :goto_1
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoVolteIconId:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoVolteImag:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoVolteIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 711
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoVolteImag:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 713
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoVolteImag:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 542
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    .line 546
    invoke-virtual {v1, p1}, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 548
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$onLayout$0$SignalClusterView()V
    .locals 1

    .line 281
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkSpeedTv:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onLayout$1$SignalClusterView()V
    .locals 1

    .line 286
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkSpeedTv:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->setVisibility(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 218
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 219
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    .line 220
    iget-object v2, v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyWifiIndicators()V

    .line 226
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyMobileDataIndicators()V

    .line 227
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyIconTint()V

    .line 229
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "icon_blacklist"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 230
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mShowDark:Z

    if-eqz v0, :cond_2

    .line 231
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 233
    :cond_2
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 234
    const-class v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    .line 235
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkMonitor:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->registerNetworkSpeedObserver(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkMonitor:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->registerNetworkSpeedChanged(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$NetworkSpeedChanged;)V

    .line 241
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkMonitor:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->initNetworkSpeed()V

    return-void
.end method

.method public onChanged(JI)V
    .locals 1

    .line 209
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isVersionSellMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkSpeedTv:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    const/16 p3, 0x8

    invoke-virtual {p0, p1, p2, p3}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->speedChanged(JI)V

    goto :goto_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkSpeedTv:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mShouldShowSpeed:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->speedChanged(JI)V

    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 802
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    .line 753
    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    if-ne p3, v0, :cond_1

    iget v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDarkIntensity:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    .line 754
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 755
    :goto_1
    iput p3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIconTint:I

    .line 756
    iput p2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDarkIntensity:F

    .line 757
    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_2

    .line 758
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 759
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyIconTint()V

    :cond_2
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 794
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mForceUpdate:Z

    .line 795
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyWifiIndicators()V

    .line 796
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyMobileDataIndicators()V

    const/4 v0, 0x0

    .line 797
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mForceUpdate:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 247
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 248
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 249
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mShowDark:Z

    if-eqz v0, :cond_0

    .line 250
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 252
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 253
    const-class v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Ljava/lang/Object;)V

    .line 254
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkMonitor:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->unRegisterNetworkSpeedObserver(Landroid/content/Context;)V

    .line 257
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkMonitor:Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController;->unRegisterNetworkSpeedChanged(Lcom/coloros/systemui/statusbar/policy/NetworkSpeedMonitorController$NetworkSpeedChanged;)V

    .line 258
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 173
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0632

    .line 175
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const v0, 0x7f0a0638

    .line 176
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    const v0, 0x7f0a0636

    .line 177
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    const v0, 0x7f0a0068

    .line 178
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const v0, 0x7f0a03e8

    .line 179
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    const v0, 0x7f0a061c

    .line 180
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteImag:Landroid/widget/ImageView;

    const v0, 0x7f0a0629

    .line 181
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVowifiImag:Landroid/widget/ImageView;

    const v0, 0x7f0a03e4

    .line 182
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoVolteImag:Landroid/widget/ImageView;

    const v0, 0x7f0a0396

    .line 183
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0466

    .line 184
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPlmnTv:Landroid/widget/TextView;

    const v0, 0x7f0a03da

    .line 185
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkSpeedTv:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    const v0, 0x7f0a0633

    .line 186
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDoubleWifiView:Landroid/widget/ImageView;

    .line 195
    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCuSignalViewLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coloros/systemui/common/statusbar/feature/StatusBarFeatureOption;->isCtaSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0180

    const/4 v2, 0x0

    .line 197
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/statusbar/widget/NoSimView;

    iput-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoSimView:Lcom/coloros/systemui/statusbar/widget/NoSimView;

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 263
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 264
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->getLocationOnScreen()[I

    move-result-object p3

    .line 265
    iget p5, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mLayoutLeft:I

    const/4 v0, 0x0

    aget v1, p3, v0

    const-string v2, "SignalClusterView"

    const-string v3, "Statusbar"

    if-eq p5, v1, :cond_0

    const-string p5, "onDarkChanged before onLayout"

    .line 266
    invoke-static {v3, v2, p5}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    aget p3, p3, v0

    iput p3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mLayoutLeft:I

    .line 268
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyIconTint()V

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 274
    :cond_1
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class p3, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {p1, p3}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;

    invoke-virtual {p1}, Lcom/coloros/systemui/statusbar/helper/StatusBarHelper;->getCutoutWidth()I

    move-result p1

    if-gtz p1, :cond_2

    return-void

    .line 278
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    if-ltz p2, :cond_4

    if-le p4, p1, :cond_3

    goto :goto_0

    .line 285
    :cond_3
    iget-object p3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkSpeedTv:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    invoke-virtual {p3}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->getVisibility()I

    move-result p3

    const/4 p5, 0x4

    if-ne p3, p5, :cond_5

    .line 286
    new-instance p3, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$SignalClusterView$ijxHQ-M1WC8suCHxmQrzxzAVZUc;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$SignalClusterView$ijxHQ-M1WC8suCHxmQrzxzAVZUc;-><init>(Lcom/coloros/systemui/statusbar/widget/SignalClusterView;)V

    invoke-virtual {p0, p3}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    const/4 p3, 0x1

    .line 287
    iput-boolean p3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mShouldShowSpeed:Z

    goto :goto_1

    .line 280
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkSpeedTv:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    invoke-virtual {p3}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->getVisibility()I

    move-result p3

    if-nez p3, :cond_5

    .line 281
    new-instance p3, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$SignalClusterView$jQR7bUz1DoVBE9pzdSPebNla-1g;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/statusbar/widget/-$$Lambda$SignalClusterView$jQR7bUz1DoVBE9pzdSPebNla-1g;-><init>(Lcom/coloros/systemui/statusbar/widget/SignalClusterView;)V

    invoke-virtual {p0, p3}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 282
    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mShouldShowSpeed:Z

    .line 290
    :cond_5
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onLayout: left = "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " right = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " parentRight = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mShouldShowSpeed = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mShouldShowSpeed:Z

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " networkSpeedViewVisible = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNetworkSpeedTv:Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;

    .line 294
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/NetworkSpeedView;->getVisibility()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 290
    invoke-static {v3, v2, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    .line 553
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 556
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 557
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, -0x1

    .line 558
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mLastWifiStrengthId:I

    .line 561
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    return-void

    .line 564
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyWifiIndicators()V

    .line 567
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyMobileDataIndicators()V

    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .line 299
    new-instance v0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView$2;-><init>(Lcom/coloros/systemui/statusbar/widget/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "icon_blacklist"

    .line 166
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    :cond_0
    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0

    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 1

    .line 526
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIsAirplaneMode:Z

    .line 527
    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplaneIconId:I

    .line 528
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    const/4 p1, 0x1

    .line 529
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mForceUpdate:Z

    .line 530
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyMobileDataIndicators()V

    const/4 p1, 0x0

    .line 531
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mForceUpdate:Z

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 335
    invoke-direct {p0, p11}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->getState(I)Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 344
    :cond_0
    iget-boolean p4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean p4, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileVisible:Z

    .line 345
    iget p4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput p4, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileStrengthId:I

    .line 346
    iput p3, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileTypeId:I

    .line 347
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileDescription:Ljava/lang/String;

    .line 348
    iput-object p8, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileTypeDescription:Ljava/lang/String;

    .line 349
    iput-boolean p12, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mRoaming:Z

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p5, :cond_1

    .line 350
    iget-boolean p4, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mActivityEnabled:Z

    if-eqz p4, :cond_1

    move p4, p1

    goto :goto_0

    :cond_1
    move p4, p3

    :goto_0
    iput-boolean p4, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mActivityIn:Z

    if-eqz p6, :cond_2

    .line 351
    iget-boolean p4, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mActivityEnabled:Z

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    move p1, p3

    :goto_1
    iput-boolean p1, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mActivityOut:Z

    .line 352
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class p3, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {p1, p3}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    iget p3, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    .line 353
    invoke-virtual {p1, p3}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->getDataActivityIcon(I)I

    move-result p1

    iput p1, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mDataActivityId:I

    .line 354
    iput-object p9, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mNetworkName:Ljava/lang/String;

    .line 355
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class p3, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {p1, p3}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 356
    invoke-virtual {p1}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->getVolteIcon()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVolteIconId:I

    .line 357
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class p3, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {p1, p3}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 358
    invoke-virtual {p1}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->getVowifiIcon()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mVowifiIconId:I

    .line 359
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    const-class p3, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    invoke-virtual {p1, p3}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;

    .line 360
    invoke-virtual {p1}, Lcom/coloros/systemui/statusbar/policy/MobileSignalControllerEx;->getNoVolteIcon()I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mNoVolteIconId:I

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setMobileDataIndicators: slotId = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mSlotId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",subId = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",mobileTypeId = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileTypeId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",mobileStrengthId = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;->mMobileStrengthId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    .line 365
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mIsAirplaneMode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mIsAirplaneMode:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Statusbar"

    const-string p3, "SignalClusterView"

    .line 361
    invoke-static {p2, p3, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyMobileDataIndicators()V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 0

    .line 378
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyMobileDataIndicators()V

    return-void
.end method

.method public setShowDark(Ljava/lang/Boolean;)V
    .locals 0

    .line 161
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mShowDark:Z

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 384
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set subinfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v3, "SignalClusterView"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mPhoneStates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 393
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 395
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 397
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->inflatePhoneState(II)Lcom/coloros/systemui/statusbar/widget/MobileSignalGroupView;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 399
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 400
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyIconTint()V

    :cond_4
    return-void
.end method

.method public setWifiDouble(Z)V
    .locals 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiDouble:  doubleWifi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "SignalClusterView"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDoubleWifi:Z

    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 316
    iget-boolean p1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiVisible:Z

    .line 317
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mDoubleWifi:Z

    const/4 p3, 0x1

    const/4 p6, 0x0

    if-nez p1, :cond_0

    iget p1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_WIFI_SIGNAL_STRENGTH:[[I

    aget-object p1, p1, p6

    sget-object p7, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_WIFI_SIGNAL_STRENGTH:[[I

    aget-object p7, p7, p6

    array-length p7, p7

    sub-int/2addr p7, p3

    aget p1, p1, p7

    :goto_0
    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiStrengthId:I

    .line 320
    iget-object p1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 321
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mActivityEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiVisible:Z

    if-eqz p1, :cond_1

    move p1, p3

    goto :goto_1

    :cond_1
    move p1, p6

    :goto_1
    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiIn:Z

    if-eqz p5, :cond_2

    .line 322
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mActivityEnabled:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiVisible:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p3, p6

    :goto_2
    iput-boolean p3, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiOut:Z

    .line 323
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiIn:Z

    iget-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiOut:Z

    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->getWifiActivityId(ZZ)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiActivityId:I

    .line 324
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyWifiIndicators()V

    .line 325
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mLastWifiVisible:Z

    iget-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiVisible:Z

    if-eq p1, p2, :cond_3

    .line 326
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->applyMobileDataIndicators()V

    .line 328
    :cond_3
    iget-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mWifiVisible:Z

    iput-boolean p1, p0, Lcom/coloros/systemui/statusbar/widget/SignalClusterView;->mLastWifiVisible:Z

    return-void
.end method
