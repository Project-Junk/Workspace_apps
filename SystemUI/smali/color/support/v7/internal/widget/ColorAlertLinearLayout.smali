.class public Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ColorAlertLinearLayout.java"


# static fields
.field public static final TYPE_SHADOW_WITH_CORNER:I


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRadius:I

.field private mFixedBottom:I

.field private mFixedLeft:I

.field private mFixedRight:I

.field private mFixedTop:I

.field private mHasShadow:Z

.field private mNeedClip:Z

.field private mShadowBottom:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:I

.field private mShadowRight:I

.field private mShadowTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowLeft:I

    .line 41
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowTop:I

    .line 42
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowRight:I

    .line 43
    iput v0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowBottom:I

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$dimen;->color_alert_dialog_bg_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 82
    sget-object v2, Lcolor/support/v7/appcompat/R$styleable;->ColorAlertLinearLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 83
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorAlertLinearLayout_alertCornerRadius:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mBackgroundRadius:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_bottom_alert_dialog_bg_with_shadow:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorAlertLinearLayout_alertShadowDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 87
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorAlertLinearLayout_alertShadowDrawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    :cond_0
    sget p3, Lcolor/support/v7/appcompat/R$drawable;->color_bottom_alert_dialog_bg_landscape:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorAlertLinearLayout_alertBackgroundDrawable:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorAlertLinearLayout_alertBackgroundDrawable:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)I
    .locals 0

    .line 33
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedLeft:I

    return p0
.end method

.method static synthetic access$100(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)I
    .locals 0

    .line 33
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedTop:I

    return p0
.end method

.method static synthetic access$200(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)I
    .locals 0

    .line 33
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedRight:I

    return p0
.end method

.method static synthetic access$300(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)I
    .locals 0

    .line 33
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedBottom:I

    return p0
.end method

.method static synthetic access$400(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)I
    .locals 0

    .line 33
    iget p0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mBackgroundRadius:I

    return p0
.end method

.method private clipBackground()V
    .locals 2

    .line 156
    new-instance v0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout$1;-><init>(Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;)V

    const/4 v1, 0x1

    .line 162
    invoke-virtual {p0, v1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setClipToOutline(Z)V

    .line 163
    invoke-virtual {p0, v0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 169
    iget-boolean v0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mHasShadow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_bottom_alert_dialog_bg_portrait:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 171
    iget v1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedLeft:I

    iget v2, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedTop:I

    iget v3, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedRight:I

    iget v4, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    iget-object v0, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 175
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 135
    iget p3, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowLeft:I

    iput p3, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedLeft:I

    .line 136
    iget p3, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowTop:I

    iput p3, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedTop:I

    .line 137
    iget p3, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowRight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedRight:I

    .line 138
    iget p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowBottom:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mFixedBottom:I

    .line 139
    iget-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mNeedClip:Z

    if-eqz p1, :cond_0

    .line 140
    invoke-direct {p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->clipBackground()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setClipToOutline(Z)V

    :goto_0
    return-void
.end method

.method public setHasShadow(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mHasShadow:Z

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowLeft:I

    .line 107
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowRight:I

    .line 108
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowTop:I

    .line 109
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowBottom:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 112
    invoke-virtual {p0, p1, p1, p1, p1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setPadding(IIII)V

    .line 113
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowLeft:I

    .line 114
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowTop:I

    .line 115
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowRight:I

    .line 116
    iput p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mShadowBottom:I

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->requestLayout()V

    return-void
.end method

.method public setNeedClip(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->mNeedClip:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 128
    :goto_0
    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/ColorAlertLinearLayout;->setHasShadow(Z)V

    return-void
.end method
