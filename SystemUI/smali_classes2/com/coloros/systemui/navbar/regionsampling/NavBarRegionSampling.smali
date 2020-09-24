.class public Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;
.super Ljava/lang/Object;
.source "NavBarRegionSampling.java"


# static fields
.field private static final DELAY_DURATION:J = 0xc8L

.field public static final TAG:Ljava/lang/String; = "NavBarRegionSampling"

.field private static final sNavBarRegionSampling:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;


# instance fields
.field private final MEDIAN_LUMA_BLACK:F

.field private final MEDIAN_LUMA_WHITE:F

.field private mDelaySyncUtil:Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;

.field private mHasSampling:Z

.field private mIsOpaqueMode:Z

.field private mIsRegionDark:Z

.field private mLastMode:I

.field private mNavBarRect:Landroid/graphics/Rect;

.field private mNavigationBarWindowState:I

.field private mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

.field private mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

.field private mRotation:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    invoke-direct {v0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;-><init>()V

    sput-object v0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->sNavBarRegionSampling:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->MEDIAN_LUMA_WHITE:F

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->MEDIAN_LUMA_BLACK:F

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mHasSampling:Z

    .line 28
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mNavBarRect:Landroid/graphics/Rect;

    .line 29
    iput v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRotation:I

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mLastMode:I

    .line 31
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mIsOpaqueMode:Z

    .line 33
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mIsRegionDark:Z

    .line 34
    iput v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mNavigationBarWindowState:I

    .line 37
    new-instance v0, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v1, v2, v3}, Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;-><init>(Landroid/os/Handler;J)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mDelaySyncUtil:Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mIsRegionDark:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mIsOpaqueMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mDelaySyncUtil:Lcom/coloros/systemui/navbar/utils/DelaySyncUtil;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)Landroid/graphics/Rect;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mNavBarRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private beginColorSampling()V
    .locals 3

    .line 120
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mHasSampling:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mNavBarRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    iget v2, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRotation:I

    invoke-interface {v1, v2}, Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;->getNavBarRect(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 122
    iget-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mNavBarRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mHasSampling:Z

    const-string p0, "NavBar"

    const-string v0, "NavBarRegionSampling"

    const-string v1, "beginColorSampling"

    .line 124
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private endColorSampling()V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mHasSampling:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mHasSampling:Z

    const-string p0, "NavBar"

    const-string v0, "NavBarRegionSampling"

    const-string v1, "endColorSampling"

    .line 132
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;
    .locals 1

    .line 43
    sget-object v0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->sNavBarRegionSampling:Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;

    return-object v0
.end method

.method private initRegionSamplingHelper()V
    .locals 3

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mView:Landroid/view/View;

    new-instance v2, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;

    invoke-direct {v2, p0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling$1;-><init>(Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;)V

    iput-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    return-void
.end method

.method private releaseRegionSamplingHelper()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBarTransition(I)V
    .locals 1

    .line 68
    iget v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mLastMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 71
    :cond_0
    iput p1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mLastMode:I

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mIsOpaqueMode:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mIsOpaqueMode:Z

    .line 77
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "newMode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NavBar"

    const-string v0, "NavBarRegionSampling"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 2

    .line 60
    iput p1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRotation:I

    .line 61
    iget-boolean p1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mHasSampling:Z

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mNavBarRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    iget v1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRotation:I

    invoke-interface {v0, v1}, Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;->getNavBarRect(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 63
    iget-object p0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingRect()V

    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mNavigationBarWindowState:I

    .line 82
    iget p1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mNavigationBarWindowState:I

    if-nez p1, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->beginColorSampling()V

    goto :goto_0

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->endColorSampling()V

    :goto_0
    return-void
.end method

.method public updatePolicy(Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    .line 56
    iget-object p1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mRegionSamplingPolicy:Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;

    iget-boolean p0, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mIsRegionDark:Z

    invoke-interface {p1, p0}, Lcom/coloros/systemui/navbar/regionsampling/RegionSamplingPolicy;->updateIcon(Z)V

    return-void
.end method

.method public updateView(Landroid/view/View;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->mView:Landroid/view/View;

    .line 48
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->releaseRegionSamplingHelper()V

    .line 49
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->initRegionSamplingHelper()V

    .line 50
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->endColorSampling()V

    .line 51
    invoke-direct {p0}, Lcom/coloros/systemui/navbar/regionsampling/NavBarRegionSampling;->beginColorSampling()V

    return-void
.end method
