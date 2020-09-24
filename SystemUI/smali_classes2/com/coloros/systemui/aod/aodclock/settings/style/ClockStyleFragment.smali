.class public Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;
.super Landroidx/fragment/app/Fragment;
.source "ClockStyleFragment.java"


# static fields
.field private static final CLOCK_SIZE:I = 0x6

.field public static final KEY_A0D_FRAGMENT_STYLE:Ljava/lang/String; = "KEY_A0D_FRAGMENT_STYLE"

.field public static final KEY_CLOCK_SIZE:Ljava/lang/String; = "KEY_CLOCK_SIZE"

.field public static final KEY_PAGER_POSITION:Ljava/lang/String; = "KEY_PAGER_POSITION"


# instance fields
.field private mAodFragmentStyle:I

.field private mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

.field private mClockSize:I

.field private mPagerPosition:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private initBundle()V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "KEY_A0D_FRAGMENT_STYLE"

    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mAodFragmentStyle:I

    const-string v1, "KEY_CLOCK_SIZE"

    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockSize:I

    const-string v1, "KEY_PAGER_POSITION"

    .line 70
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mPagerPosition:I

    return-void
.end method

.method private initView()V
    .locals 5

    .line 74
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockSize:I

    .line 75
    iget v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mAodFragmentStyle:I

    const/4 v2, 0x2

    const/4 v3, 0x6

    if-eq v1, v2, :cond_1

    .line 83
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    iget v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mPagerPosition:I

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->setCurrentPagerPosition(I)V

    .line 84
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->setCurrentTabPosition(I)V

    .line 85
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    if-le v0, v3, :cond_0

    move v0, v3

    :cond_0
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->setClockSize(I)V

    .line 86
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addClockView()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    iget v4, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mPagerPosition:I

    invoke-virtual {v1, v4}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->setCurrentPagerPosition(I)V

    .line 78
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    invoke-virtual {v1, v2}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->setCurrentTabPosition(I)V

    .line 79
    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    if-le v0, v3, :cond_2

    move v0, v3

    :cond_2
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->setClockSize(I)V

    .line 80
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addClockView()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const p3, 0x7f0d003d

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a060f

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    iput-object p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    .line 56
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    .line 57
    iget-object p3, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    invoke-virtual {p3}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    const/high16 v0, 0x437e0000    # 254.0f

    .line 58
    invoke-static {p2, v0}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    iput p2, p3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    .line 60
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->initBundle()V

    .line 61
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->initView()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->clear()V

    .line 102
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public updateSelectedBg(I)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockStyleFragment;->mClockDigitalLayout:Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->updateSelectedBg(I)V

    :cond_0
    return-void
.end method
