.class public Lcom/coloros/systemui/statusbar/widget/ColorClock;
.super Lcom/coloros/systemui/statusbar/widget/OppoClock;
.source "ColorClock.java"


# instance fields
.field private mIsQSClock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/statusbar/widget/OppoClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/R$styleable;->ColorClock:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 46
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/systemui/statusbar/widget/ColorClock;->mIsQSClock:Z

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateFontSize()V
    .locals 2

    .line 81
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    .line 82
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->getAdapterTextSizeSp(I)F

    move-result v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 66
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/ColorClock;->mIsQSClock:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/widget/ColorClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->getClockNumFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 71
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object v0

    const-class v1, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    .line 72
    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/qs/helper/ColorQSFontHelper;->setFontScale(F)V

    .line 73
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->updateFontSize()V

    :cond_0
    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/statusbar/widget/ColorClock;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const p3, 0x7f0602ee

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->setTextColor(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/coloros/systemui/statusbar/widget/OppoClock;->onFinishInflate()V

    .line 53
    iget-boolean v0, p0, Lcom/coloros/systemui/statusbar/widget/ColorClock;->mIsQSClock:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/widget/ColorClock;->updateFontSize()V

    :cond_0
    return-void
.end method
