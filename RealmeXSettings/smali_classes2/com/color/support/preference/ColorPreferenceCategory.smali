.class public Lcom/color/support/preference/ColorPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "ColorPreferenceCategory.java"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorPreferenceCategory:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 48
    sget v0, Lcolor/support/v7/appcompat/R$styleable;->ColorPreferenceCategory_isFirstCategory:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/color/support/preference/ColorPreferenceCategory;->a:Z

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->support_preference_category_padding_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/color/support/preference/ColorPreferenceCategory;->b:I

    .line 50
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static a(Landroidx/preference/PreferenceViewHolder;IIII)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {p0, p3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 69
    invoke-virtual {p0, p1, p4, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/color/support/preference/ColorPreferenceCategory;->a:Z

    .line 81
    invoke-virtual {p0}, Lcom/color/support/preference/ColorPreferenceCategory;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 55
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 56
    iget-boolean v0, p0, Lcom/color/support/preference/ColorPreferenceCategory;->a:Z

    if-eqz v0, :cond_0

    .line 57
    sget v0, Lcolor/support/v7/appcompat/R$id;->oppo_category_top_divider:I

    const/16 v1, 0x8

    sget v2, Lcolor/support/v7/appcompat/R$id;->oppo_category_root:I

    iget v3, p0, Lcom/color/support/preference/ColorPreferenceCategory;->b:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/color/support/preference/ColorPreferenceCategory;->a(Landroidx/preference/PreferenceViewHolder;IIII)V

    return-void

    .line 59
    :cond_0
    sget v0, Lcolor/support/v7/appcompat/R$id;->oppo_category_top_divider:I

    sget v1, Lcolor/support/v7/appcompat/R$id;->oppo_category_root:I

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcom/color/support/preference/ColorPreferenceCategory;->a(Landroidx/preference/PreferenceViewHolder;IIII)V

    return-void
.end method
