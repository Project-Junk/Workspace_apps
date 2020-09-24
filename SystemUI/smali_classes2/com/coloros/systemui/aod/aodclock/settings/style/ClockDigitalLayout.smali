.class public Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;
.super Landroid/view/ViewGroup;
.source "ClockDigitalLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockDigitalLayout"

.field private static final mImageViewSize:I = 0xfa


# instance fields
.field private mAodBaseClockViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;",
            ">;"
        }
    .end annotation
.end field

.field private mClockSize:I

.field private mCurrentPagerPosition:I

.field private mCurrentTabPosition:I

.field private mDp23:I

.field private mDp32:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->updateDisplayConfiguration(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42000000    # 32.0f

    invoke-static {p1, p2}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mDp32:I

    .line 57
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41b80000    # 23.0f

    invoke-static {p1, p2}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mDp23:I

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    return-void
.end method

.method private addFifthImage()V
    .locals 4

    .line 175
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;-><init>(Landroid/content/Context;)V

    .line 176
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xfa

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {v2, v3}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 178
    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->initFifthImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    .line 179
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addFirstImage()V
    .locals 4

    .line 138
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xfa

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v2, v3}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 141
    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->initFirstImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    .line 142
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addFourthImage()V
    .locals 4

    .line 166
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xfa

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 168
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v2, v3}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 169
    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->initFourthImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    .line 170
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addSecondImage()V
    .locals 4

    .line 147
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xfa

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {v2, v3}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 150
    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->initSecondImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    .line 151
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addSixthImage()V
    .locals 4

    .line 184
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xfa

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {v2, v3}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 187
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v2, v3}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 188
    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->initSixthImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    .line 189
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addThirdImage()V
    .locals 4

    .line 156
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;

    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xfa

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {v2, v3}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 159
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v2, v3}, Lcom/coloros/systemui/aod/aodclock/util/CommonUtils;->dpToPixels(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 160
    invoke-direct {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->initThirdImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    .line 161
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initFifthImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 336
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$cKHLcoYFC5QFDzQy11b5sUyWYlE;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$cKHLcoYFC5QFDzQy11b5sUyWYlE;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    const v1, 0x7f08049a

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_1

    goto/16 :goto_4

    .line 348
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 349
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 350
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    const/4 v5, 0x2

    if-ne v0, v4, :cond_2

    move v3, v5

    :cond_2
    invoke-virtual {p1, v3}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 351
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    move v2, v5

    :goto_0
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 352
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_4

    .line 353
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804ec

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 354
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 352
    :goto_1
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 339
    :cond_5
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 340
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 341
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p1, v3}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 342
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 343
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_8

    .line 344
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804c4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_3

    .line 345
    :cond_8
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 343
    :goto_3
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    return-void
.end method

.method private initFirstImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 224
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$qJeLJi4Qh03XUg3J7B41EzBK5zo;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$qJeLJi4Qh03XUg3J7B41EzBK5zo;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    const v1, 0x7f080496

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_1

    goto :goto_2

    .line 236
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 237
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 238
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 239
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 240
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v3, :cond_3

    .line 241
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804e8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 242
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 240
    :goto_0
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 227
    :cond_4
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 228
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 229
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 230
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 231
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v3, :cond_5

    .line 232
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804c0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 233
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 231
    :goto_1
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method private initFourthImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 308
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$XXxzFrsE7ryVtXd666vc5agaTHs;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$XXxzFrsE7ryVtXd666vc5agaTHs;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    const v1, 0x7f080499

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_1

    goto/16 :goto_5

    .line 320
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 321
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 322
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 323
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 324
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_4

    .line 325
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804eb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    .line 326
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 324
    :goto_2
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 311
    :cond_5
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 312
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 313
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p1, v3}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 314
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x3

    :goto_3
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 315
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_8

    .line 316
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804c3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_4

    .line 317
    :cond_8
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 315
    :goto_4
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    return-void
.end method

.method private initSecondImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$dPD7tAx5Vka93NvZM0yMf8YJ7F8;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$dPD7tAx5Vka93NvZM0yMf8YJ7F8;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    const v1, 0x7f080497

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_1

    goto/16 :goto_5

    .line 264
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 265
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 266
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v3, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 267
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 268
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v3, :cond_3

    .line 269
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804e9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 268
    :goto_1
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 255
    :cond_4
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 256
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 257
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v3, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 258
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v3, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 259
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v3, :cond_7

    .line 260
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804c1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_4

    .line 261
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 259
    :goto_4
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    return-void
.end method

.method private initSixthImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 364
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$Xu4TtEdc_Ej3aMri4X5Hyvow0Bw;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$Xu4TtEdc_Ej3aMri4X5Hyvow0Bw;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    const v1, 0x7f08049b

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_1

    goto/16 :goto_4

    .line 376
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 377
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 378
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_2

    const/4 v3, 0x2

    :cond_2
    invoke-virtual {p1, v3}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 379
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    :goto_0
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 380
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_4

    .line 381
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804ed

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 382
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 380
    :goto_1
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 367
    :cond_5
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 368
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 369
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p1, v3}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 370
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x5

    :goto_2
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 371
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_8

    .line 372
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804c5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_3

    .line 373
    :cond_8
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 371
    :goto_3
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    return-void
.end method

.method private initThirdImageSrc(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 280
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$fMk3INKOd8wXb5K_7lcG1QK9HJQ;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/aod/aodclock/settings/style/-$$Lambda$ClockDigitalLayout$fMk3INKOd8wXb5K_7lcG1QK9HJQ;-><init>(Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;)V

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    const v1, 0x7f080498

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_1

    goto/16 :goto_3

    .line 292
    :cond_1
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 293
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 294
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 295
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p1, v3}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 296
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804ea

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 298
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 296
    :goto_1
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 283
    :cond_5
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockTab(I)V

    .line 284
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPager(I)V

    .line 285
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {p1, v3}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockType(I)V

    .line 286
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_7

    move v2, v4

    :cond_7
    invoke-virtual {p1, v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setClockPosition(I)V

    .line 287
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    if-ne v0, v4, :cond_8

    .line 288
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804c2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    .line 289
    :cond_8
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 287
    :goto_2
    invoke-virtual {p1, p0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setImageSrc(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public addClockView()V
    .locals 3

    .line 92
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addImage()V

    .line 93
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mContext:Landroid/content/Context;

    const-string v1, "Setting_AodClockMode"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->updateSelectedBg(I)V

    return-void
.end method

.method public addImage()V
    .locals 1

    .line 98
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mClockSize:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addFirstImage()V

    .line 126
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addSecondImage()V

    .line 127
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addThirdImage()V

    .line 128
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addFourthImage()V

    .line 129
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addFifthImage()V

    .line 130
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addSixthImage()V

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addFirstImage()V

    .line 119
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addSecondImage()V

    .line 120
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addThirdImage()V

    .line 121
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addFourthImage()V

    .line 122
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addFifthImage()V

    goto :goto_0

    .line 112
    :pswitch_2
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addFirstImage()V

    .line 113
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addSecondImage()V

    .line 114
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addThirdImage()V

    .line 115
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addFourthImage()V

    goto :goto_0

    .line 107
    :pswitch_3
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addFirstImage()V

    .line 108
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addSecondImage()V

    .line 109
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addThirdImage()V

    goto :goto_0

    .line 103
    :pswitch_4
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addFirstImage()V

    .line 104
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addSecondImage()V

    goto :goto_0

    .line 100
    :pswitch_5
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->addFirstImage()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->removeAllViews()V

    return-void
.end method

.method public getCurrentPagerPosition()I
    .locals 0

    .line 194
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    return p0
.end method

.method public getCurrentTabPosition()I
    .locals 0

    .line 202
    iget p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    return p0
.end method

.method public synthetic lambda$initFifthImageSrc$4$ClockDigitalLayout(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;Landroid/view/View;)V
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->getPreviewSetting()I

    move-result p1

    const-string p2, "Setting_AodPreviewClockMode"

    invoke-static {p0, p2, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$initFirstImageSrc$0$ClockDigitalLayout(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;Landroid/view/View;)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->getPreviewSetting()I

    move-result p1

    const-string p2, "Setting_AodPreviewClockMode"

    invoke-static {p0, p2, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$initFourthImageSrc$3$ClockDigitalLayout(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;Landroid/view/View;)V
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->getPreviewSetting()I

    move-result p1

    const-string p2, "Setting_AodPreviewClockMode"

    invoke-static {p0, p2, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$initSecondImageSrc$1$ClockDigitalLayout(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;Landroid/view/View;)V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->getPreviewSetting()I

    move-result p1

    const-string p2, "Setting_AodPreviewClockMode"

    invoke-static {p0, p2, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$initSixthImageSrc$5$ClockDigitalLayout(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;Landroid/view/View;)V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->getPreviewSetting()I

    move-result p1

    const-string p2, "Setting_AodPreviewClockMode"

    invoke-static {p0, p2, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$initThirdImageSrc$2$ClockDigitalLayout(Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;Landroid/view/View;)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->getPreviewSetting()I

    move-result p1

    const-string p2, "Setting_AodPreviewClockMode"

    invoke-static {p0, p2, p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getMeasuredWidth()I

    move-result p1

    add-int/lit16 p1, p1, -0x2ee

    .line 73
    iget p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mDp23:I

    const/4 p3, 0x2

    mul-int/2addr p2, p3

    sub-int p2, p1, p2

    div-int/2addr p2, p3

    .line 74
    iget p4, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mDp32:I

    const/4 p5, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getChildCount()I

    move-result v0

    if-ge p5, v0, :cond_1

    .line 76
    invoke-virtual {p0, p5}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit16 v1, p2, 0xfa

    add-int/lit16 v2, p4, 0xfa

    .line 77
    invoke-virtual {v0, p2, p4, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 78
    rem-int/lit8 v0, p5, 0x3

    if-ne v0, p3, :cond_0

    .line 79
    iget p2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mDp23:I

    mul-int/lit8 v0, p2, 0x2

    sub-int v0, p1, v0

    div-int/2addr v0, p3

    add-int/lit16 p2, p2, 0xfa

    add-int/2addr p4, p2

    move p2, v0

    goto :goto_1

    .line 82
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mDp23:I

    add-int/lit16 v0, v0, 0xfa

    add-int/2addr p2, v0

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 63
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/4 v0, 0x0

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 65
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 66
    invoke-virtual {p0, v1, p1, p2}, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClockSize(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mClockSize:I

    return-void
.end method

.method public setCurrentPagerPosition(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentPagerPosition:I

    return-void
.end method

.method public setCurrentTabPosition(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mCurrentTabPosition:I

    return-void
.end method

.method public updateSelectedBg(I)V
    .locals 4

    .line 210
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSelectedBg: clockSetting is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aod"

    const-string v2, "ClockDigitalLayout"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 212
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;

    invoke-virtual {v2}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->getPreviewSetting()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setCheck(Z)V

    goto :goto_1

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/settings/style/ClockDigitalLayout;->mAodBaseClockViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;

    invoke-virtual {v2, v0}, Lcom/coloros/systemui/aod/aodclock/widget/AodBaseClockView;->setCheck(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
