.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;
.super Landroid/widget/ImageView;
.source "PictorialPreloadView.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;
.implements Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;


# static fields
.field private static final ENTER_REFERER:Ljava/lang/String; = "enterReferer"

.field private static final FLAG_ACTIVITY_KEEP_RESUME_WHEN_SLEEPING:I = 0x800

.field private static final FORBID_MAX_TIME:I = 0x3e8

.field private static final IMAGE_ID:Ljava/lang/String; = "imageId"

.field private static final MIN_OFFSET:F = 0.01f

.field private static final PICTORIAL_SLIDE_ACTION:Ljava/lang/String; = "com.heytap.pictorial.action.START_PICTURE_MODE"

.field private static final PICTORIAL_SLIDE_CLASS_NAME:Ljava/lang/String; = "com.heytap.pictorial.ui.slide.PictorialSlideActivity"

.field private static final TAG:Ljava/lang/String; = "PictorialPreloadView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mOffset:F

.field private mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

.field private mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

.field private mPositionOffsetPixels:I

.field private mResetStartedPictorialSlidePageRunnable:Ljava/lang/Runnable;

.field private mScreenWidth:I

.field private mSelected:Z

.field private mStartedPictorialSlidePage:Z

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mSelected:Z

    .line 262
    new-instance v1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialPreloadView$i4bo-MTglz_O3-DEGwVSskZtyvI;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/-$$Lambda$PictorialPreloadView$i4bo-MTglz_O3-DEGwVSskZtyvI;-><init>(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mResetStartedPictorialSlidePageRunnable:Ljava/lang/Runnable;

    .line 70
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    .line 72
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-virtual {v1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->setPreloadWallpaperChangeListener(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;)V

    .line 73
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 74
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    .line 75
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 78
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getScreenSize()[I

    move-result-object p1

    aget p1, p1, v0

    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mScreenWidth:I

    .line 80
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->initView()V

    return-void
.end method

.method private checkAndStartPictorialSlide(FI)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->endScroll(FI)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mSelected:Z

    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->startPictorialSlidePage()V

    :cond_0
    return-void
.end method

.method private endScroll(FI)Z
    .locals 0

    if-eqz p2, :cond_1

    const p0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private initView()V
    .locals 2

    .line 84
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 88
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->pagerType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private resetStartedPictorialSlidePage()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mResetStartedPictorialSlidePageRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startPictorialSlidePage()V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    const-string v1, "PictorialPreloadView"

    if-nez v0, :cond_0

    const-string p0, "startPictorialSlidePage mWallpaperInfo is null"

    .line 207
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "startPictorialSlidePage not showing, so return"

    .line 211
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 215
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mStartedPictorialSlidePage:Z

    if-eqz v0, :cond_2

    return-void

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBiometricAuthenticationSucceeded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 221
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    :cond_3
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "startPictorialSlidePage is already unlock, so return"

    .line 223
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    const-string v2, "startPictorialSlidePage info "

    invoke-static {v1, v2, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialUtils;->printWallInfo(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;)V

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008800

    .line 230
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.heytap.pictorial"

    const-string v3, "com.heytap.pictorial.ui.slide.PictorialSlideActivity"

    .line 233
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.heytap.pictorial.action.START_PICTURE_MODE"

    .line 234
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "enterReferer"

    .line 237
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;->getImageId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "imageId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    :try_start_0
    iget-object v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 242
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 v3, 0x1

    .line 243
    iput-boolean v3, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mStartedPictorialSlidePage:Z

    .line 244
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "counts_slide_enter_slide_page"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seePictorialDetails. Fail to start pictorial details activity! intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Keyguard"

    invoke-static {v3, v1, v0}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iput-boolean v2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mStartedPictorialSlidePage:Z

    .line 250
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->resetStartedPictorialSlidePage()V

    return-void
.end method


# virtual methods
.method public attached()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->setPreloadWallpaperChangeListener(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;)V

    .line 106
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->dispatchPictorialPreloadViewLoad(Z)V

    return-void
.end method

.method public detached()V
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->setPreloadWallpaperChangeListener(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper$IPictorialPreloadListener;)V

    .line 113
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->dispatchPictorialPreloadViewLoad(Z)V

    return-void
.end method

.method public direction()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public hide()V
    .locals 2

    const-string v0, "PictorialPreloadView"

    const-string v1, "hide"

    .line 169
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mStartedPictorialSlidePage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->notifyEntryPictorialSlidePage(Z)V

    .line 177
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->dispatchPictorialPreloadViewLoad(Z)V

    .line 178
    iput-boolean v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mStartedPictorialSlidePage:Z

    .line 179
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mResetStartedPictorialSlidePageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mOffset:F

    .line 181
    iput v1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPositionOffsetPixels:I

    return-void
.end method

.method public isPictorialSlidePagerStarting()Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mStartedPictorialSlidePage:Z

    return p0
.end method

.method public synthetic lambda$new$0$PictorialPreloadView()V
    .locals 2

    const-string v0, "PictorialPreloadView"

    const-string v1, "resetStartedPictorialSlidePage"

    .line 263
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mStartedPictorialSlidePage:Z

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(FI)V
    .locals 0

    .line 135
    iput p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mOffset:F

    .line 136
    iput p2, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPositionOffsetPixels:I

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->checkAndStartPictorialSlide(FI)V

    return-void
.end method

.method public onPageSelected(Z)V
    .locals 1

    .line 128
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mSelected:Z

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPageSelected : mSelected = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mSelected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PictorialPreloadView"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mOffset:F

    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPositionOffsetPixels:I

    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->checkAndStartPictorialSlide(FI)V

    return-void
.end method

.method public onWallpaperChange()V
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->getPreloadWallpaperInfo()Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mWallpaperInfo:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPictorialWallpaperHelper:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperHelper;->getPreloadWallpaper()Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWallpaperChange drawable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PictorialPreloadView"

    invoke-static {v4, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-static {}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->getInstance()Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;

    move-result-object p0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/coloros/systemui/keyguard/watcher/PictorialStateWatcher;->dispatchPictorialPreloadViewLoad(Z)V

    return-void
.end method

.method public pagerType()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method public readyToShow()Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mStartedPictorialSlidePage:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public show()V
    .locals 2

    const-string v0, "PictorialPreloadView"

    const-string v1, "show"

    .line 186
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->onWallpaperChange()V

    .line 188
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPictorialMediator:Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;->notifyEntryPictorialSlidePage(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 189
    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mOffset:F

    .line 190
    iget v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mScreenWidth:I

    iput v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;->mPositionOffsetPixels:I

    return-void
.end method
