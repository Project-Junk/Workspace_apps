.class public Lcom/coloros/systemui/qs/customize/CustomizerToolBar;
.super Landroid/widget/RelativeLayout;
.source "CustomizerToolBar.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

.field private mPop:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/qs/customize/CustomizerToolBar;)Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    return-object p0
.end method

.method private static getX(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :goto_0
    return p1
.end method


# virtual methods
.method public dismissPopupMenus()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mPop:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public initClick()V
    .locals 2

    const v0, 0x7f0a01d6

    .line 44
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/coloros/systemui/qs/customize/-$$Lambda$CustomizerToolBar$9K5Y3Skl_7vusaagHqaVIbopoyw;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/customize/-$$Lambda$CustomizerToolBar$9K5Y3Skl_7vusaagHqaVIbopoyw;-><init>(Lcom/coloros/systemui/qs/customize/CustomizerToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initClick$0$CustomizerToolBar(Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->showMenu(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showMenu$1$CustomizerToolBar()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mPop:Landroid/widget/PopupWindow;

    return-void
.end method

.method public setCustomizer(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mCustomizer:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    return-void
.end method

.method public showMenu(Landroid/view/View;)V
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 51
    iget-object v2, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 52
    iget-object v3, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0706f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 53
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d0205

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 55
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v4, v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mPop:Landroid/widget/PopupWindow;

    .line 56
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mPop:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f07012f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 57
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mPop:Landroid/widget/PopupWindow;

    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 58
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mPop:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mPop:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/coloros/systemui/qs/customize/-$$Lambda$CustomizerToolBar$_F9o65LIlPEwZBSF3dd3dUa_srk;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/customize/-$$Lambda$CustomizerToolBar$_F9o65LIlPEwZBSF3dd3dUa_srk;-><init>(Lcom/coloros/systemui/qs/customize/CustomizerToolBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 60
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mPop:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 61
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mPop:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 62
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mPop:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const v0, 0x7f0a04af

    .line 63
    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/coloros/systemui/qs/customize/CustomizerToolBar$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar$1;-><init>(Lcom/coloros/systemui/qs/customize/CustomizerToolBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mPop:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->getLayoutDirection()I

    move-result v1

    invoke-static {v1, v3}, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->getX(II)I

    move-result v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 73
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706fa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 74
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 75
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/CustomizerToolBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0706f9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const v1, 0x7f0a01d7

    .line 76
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 77
    invoke-virtual {v1, p0, p1, p0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
