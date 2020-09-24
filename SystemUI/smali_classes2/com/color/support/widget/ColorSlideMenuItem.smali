.class public Lcom/color/support/widget/ColorSlideMenuItem;
.super Ljava/lang/Object;
.source "ColorSlideMenuItem.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field mBackgroundStyleId:[I

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/CharSequence;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 84
    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_slide_copy_background:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [I

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_slide_delete_background:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_slide_copy_background:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_slide_rename_background:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mBackgroundStyleId:[I

    const/16 v0, 0x36

    .line 42
    iput v0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mWidth:I

    .line 102
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$drawable;->color_slide_copy_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mText:Ljava/lang/CharSequence;

    .line 106
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_slideview_menuitem_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 91
    sget v0, Lcolor/support/v7/appcompat/R$drawable;->color_slide_copy_background:I

    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/color/support/widget/ColorSlideMenuItem;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [I

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_slide_delete_background:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_slide_copy_background:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_slide_rename_background:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iput-object v0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mBackgroundStyleId:[I

    const/16 v0, 0x36

    .line 42
    iput v0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mWidth:I

    .line 53
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-object p2, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mText:Ljava/lang/CharSequence;

    .line 56
    iget-object p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcolor/support/v7/appcompat/R$dimen;->color_slideview_menuitem_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mWidth:I

    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mWidth:I

    return p0
.end method

.method public setBackground(I)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSlideMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBackgroundStyle(I)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mBackgroundStyleId:[I

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSlideMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSlideMenuItem;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/color/support/widget/ColorSlideMenuItem;->mWidth:I

    return-void
.end method
