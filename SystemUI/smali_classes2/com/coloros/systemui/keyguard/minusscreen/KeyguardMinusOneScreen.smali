.class public Lcom/coloros/systemui/keyguard/minusscreen/KeyguardMinusOneScreen;
.super Landroid/view/View;
.source "KeyguardMinusOneScreen.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/minusscreen/KeyguardMinusOneScreen;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 31
    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    const v1, -0xffff01

    .line 32
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/keyguard/minusscreen/KeyguardMinusOneScreen;->setBackgroundColor(I)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/minusscreen/KeyguardMinusOneScreen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/minusscreen/KeyguardMinusOneScreen;->pagerType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/minusscreen/KeyguardMinusOneScreen;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attached()V
    .locals 0

    return-void
.end method

.method public detached()V
    .locals 0

    return-void
.end method

.method public direction()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public hide()V
    .locals 0

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(FI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(Z)V
    .locals 0

    return-void
.end method

.method public pagerType()I
    .locals 0

    const/16 p0, 0x65

    return p0
.end method

.method public readyToShow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public show()V
    .locals 0

    return-void
.end method
