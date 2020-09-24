.class public Lcom/coloros/settings/widget/LevelFontTextView;
.super Landroid/widget/TextView;
.source "LevelFontTextView.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/coloros/settings/widget/LevelFontTextView;->a:I

    .line 31
    invoke-direct {p0}, Lcom/coloros/settings/widget/LevelFontTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 27
    iput p1, p0, Lcom/coloros/settings/widget/LevelFontTextView;->a:I

    .line 36
    invoke-direct {p0}, Lcom/coloros/settings/widget/LevelFontTextView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/coloros/settings/widget/LevelFontTextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/widget/LevelFontTextView;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2

    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 54
    invoke-virtual {p0}, Lcom/coloros/settings/widget/LevelFontTextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    .line 55
    aget-object p3, p1, p2

    if-eqz p3, :cond_0

    .line 56
    aget-object p1, p1, p2

    .line 1061
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    .line 1062
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    .line 1063
    invoke-virtual {p0}, Lcom/coloros/settings/widget/LevelFontTextView;->getLineHeight()I

    move-result v0

    .line 1065
    invoke-virtual {p0}, Lcom/coloros/settings/widget/LevelFontTextView;->getLineCount()I

    move-result v1

    neg-int v1, v1

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    add-int/2addr p4, v1

    .line 1068
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/coloros/settings/widget/LevelFontTextView;->a:I

    .line 48
    invoke-direct {p0}, Lcom/coloros/settings/widget/LevelFontTextView;->a()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/widget/LevelFontTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 42
    iget v1, p0, Lcom/coloros/settings/widget/LevelFontTextView;->a:I

    invoke-static {p1, v0, v1}, Lcom/color/support/c/a;->a(FFI)F

    move-result p1

    const/4 v0, 0x0

    .line 43
    invoke-super {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
