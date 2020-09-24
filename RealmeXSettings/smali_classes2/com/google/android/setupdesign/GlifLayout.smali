.class public Lcom/google/android/setupdesign/GlifLayout;
.super Lcom/google/android/setupcompat/PartnerCustomizationLayout;
.source "GlifLayout.java"


# instance fields
.field public a:Z

.field private b:Landroid/content/res/ColorStateList;

.field private c:Z

.field private d:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->a:Z

    .line 91
    sget p1, Lcom/google/android/setupdesign/b$a;->sudLayoutTheme:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->a:Z

    .line 96
    sget p1, Lcom/google/android/setupdesign/b$a;->sudLayoutTheme:I

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->a:Z

    .line 102
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 5

    .line 110
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupdesign/b$g;->SudGlifLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    sget v1, Lcom/google/android/setupdesign/b$g;->SudGlifLayout_sudUsePartnerHeavyTheme:I

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 113
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->a()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->a:Z

    .line 115
    const-class v1, Lcom/google/android/setupdesign/b/a;

    new-instance v3, Lcom/google/android/setupdesign/b/a;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/setupdesign/b/a;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v1, v3}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 118
    const-class v1, Lcom/google/android/setupdesign/b/b;

    new-instance v3, Lcom/google/android/setupdesign/b/b;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/setupdesign/b/b;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v1, v3}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 120
    const-class p1, Lcom/google/android/setupdesign/b/f;

    new-instance p2, Lcom/google/android/setupdesign/b/f;

    invoke-direct {p2, p0}, Lcom/google/android/setupdesign/b/f;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 121
    new-instance p1, Lcom/google/android/setupdesign/b/i;

    invoke-direct {p1}, Lcom/google/android/setupdesign/b/i;-><init>()V

    .line 122
    const-class p2, Lcom/google/android/setupdesign/b/i;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 126
    new-instance v1, Lcom/google/android/setupdesign/b/j;

    invoke-direct {v1, p1, p2}, Lcom/google/android/setupdesign/b/j;-><init>(Lcom/google/android/setupdesign/b/i;Landroid/widget/ScrollView;)V

    .line 1092
    iput-object v1, p1, Lcom/google/android/setupdesign/b/i;->a:Lcom/google/android/setupdesign/b/i$b;

    .line 130
    :cond_1
    sget p1, Lcom/google/android/setupdesign/b$g;->SudGlifLayout_sudColorPrimary:I

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    .line 135
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->a:Z

    if-eqz p1, :cond_3

    .line 136
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->d()V

    .line 139
    :cond_3
    sget p1, Lcom/google/android/setupdesign/b$g;->SudGlifLayout_sudBackgroundBaseColor:I

    .line 140
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V

    .line 143
    sget p1, Lcom/google/android/setupdesign/b$g;->SudGlifLayout_sudBackgroundPatterned:I

    .line 144
    invoke-virtual {v0, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setBackgroundPatterned(Z)V

    .line 147
    sget p1, Lcom/google/android/setupdesign/b$g;->SudGlifLayout_sudStickyHeader:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_4

    .line 149
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->c(I)Landroid/view/View;

    .line 151
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 193
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_layout_sticky_header:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 194
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 195
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .locals 2

    .line 286
    sget v0, Lcom/google/android/setupdesign/b$d;->suc_layout_status:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifLayout;->d:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    goto :goto_0

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifLayout;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 294
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/setupdesign/a;

    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/a;-><init>(I)V

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 298
    :goto_1
    const-class v0, Lcom/google/android/setupcompat/template/d;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/d;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/d;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private d()V
    .locals 3

    .line 325
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    .line 326
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/b/a;->x:Lcom/google/android/setupcompat/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result v0

    .line 327
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 171
    sget p2, Lcom/google/android/setupdesign/b$e;->sud_glif_template:I

    .line 173
    :cond_0
    sget v0, Lcom/google/android/setupdesign/b$f;->SudThemeGlif_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupdesign/GlifLayout;->a(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 179
    sget p1, Lcom/google/android/setupdesign/b$d;->sud_layout_content:I

    .line 181
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundBaseColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHeaderColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 224
    const-class v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/a;

    .line 5214
    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/a;->a()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5215
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 216
    const-class v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/a;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 204
    const-class v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/a;->a()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 232
    const-class v0, Lcom/google/android/setupdesign/b/b;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/b;

    .line 6145
    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6146
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    .line 199
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 200
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ScrollView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 9

    .line 156
    invoke-super {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->onFinishInflate()V

    .line 158
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_layout_description:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 160
    iget-boolean v1, p0, Lcom/google/android/setupdesign/GlifLayout;->a:Z

    if-eqz v1, :cond_0

    .line 161
    invoke-static {v0}, Lcom/google/android/setupdesign/util/a;->a(Landroid/widget/TextView;)V

    .line 164
    :cond_0
    const-class v0, Lcom/google/android/setupdesign/b/b;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/b;

    .line 2091
    iget-object v1, v0, Lcom/google/android/setupdesign/b/b;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2092
    iget-object v2, v0, Lcom/google/android/setupdesign/b/b;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v3, Lcom/google/android/setupdesign/b$d;->sud_layout_icon:I

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 2105
    iget-object v3, v0, Lcom/google/android/setupdesign/b/b;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    instance-of v3, v3, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/google/android/setupdesign/b/b;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    .line 2318
    iget-boolean v0, v0, Lcom/google/android/setupdesign/GlifLayout;->a:Z

    if-eqz v0, :cond_1

    .line 2108
    invoke-static {v1}, Lcom/google/android/setupdesign/util/c;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2110
    invoke-static {v2, v0}, Lcom/google/android/setupdesign/b/b;->a(Landroid/widget/ImageView;I)V

    .line 165
    :cond_1
    const-class v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/a;

    .line 3080
    iget-object v1, v0, Lcom/google/android/setupdesign/b/a;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3081
    iget-object v2, v0, Lcom/google/android/setupdesign/b/a;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v3, Lcom/google/android/setupcompat/b$b;->suc_layout_title:I

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_b

    .line 3094
    iget-object v3, v0, Lcom/google/android/setupdesign/b/a;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    instance-of v3, v3, Lcom/google/android/setupdesign/GlifLayout;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/google/android/setupdesign/b/a;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    check-cast v3, Lcom/google/android/setupdesign/GlifLayout;

    .line 3318
    iget-boolean v3, v3, Lcom/google/android/setupdesign/GlifLayout;->a:Z

    if-eqz v3, :cond_b

    .line 3098
    invoke-static {v1}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/b/a;->y:Lcom/google/android/setupcompat/b/a;

    .line 3099
    invoke-virtual {v3, v1, v4}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 3101
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/setupdesign/b/a;->a(Landroid/content/res/ColorStateList;)V

    .line 3105
    :cond_2
    invoke-static {v1}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/b/a;->z:Lcom/google/android/setupcompat/b/a;

    .line 3106
    invoke-virtual {v3, v1, v4}, Lcom/google/android/setupcompat/b/b;->e(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 4175
    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/a;->a()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4177
    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3112
    :cond_3
    invoke-static {v1}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/b/a;->A:Lcom/google/android/setupcompat/b/a;

    .line 3113
    invoke-virtual {v3, v1, v4}, Lcom/google/android/setupcompat/b/b;->c(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3115
    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 4206
    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/a;->a()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4208
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3119
    :cond_4
    invoke-static {v1}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v3

    sget-object v4, Lcom/google/android/setupcompat/b/a;->B:Lcom/google/android/setupcompat/b/a;

    invoke-virtual {v3, v1, v4}, Lcom/google/android/setupcompat/b/b;->c(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 3121
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x514d33ab

    const/4 v8, 0x1

    if-eq v6, v7, :cond_6

    const v5, 0x68ac462

    if-eq v6, v5, :cond_5

    goto :goto_0

    :cond_5
    const-string v5, "start"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v4, v8

    goto :goto_0

    :cond_6
    const-string v6, "center"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v4, v5

    :cond_7
    :goto_0
    if-eqz v4, :cond_9

    if-eq v4, v8, :cond_8

    goto :goto_1

    :cond_8
    const v3, 0x800003

    .line 3126
    invoke-static {v2, v3}, Lcom/google/android/setupdesign/b/a;->a(Landroid/widget/TextView;I)V

    goto :goto_1

    :cond_9
    const/16 v3, 0x11

    .line 3123
    invoke-static {v2, v3}, Lcom/google/android/setupdesign/b/a;->a(Landroid/widget/TextView;I)V

    .line 3133
    :cond_a
    :goto_1
    invoke-static {v1}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/b/a;->C:Lcom/google/android/setupcompat/b/a;

    .line 3134
    invoke-virtual {v2, v1, v3}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result v1

    .line 5196
    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/a;->a()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 5198
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5199
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_b

    .line 5200
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_b
    return-void
.end method

.method public setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 258
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->d:Landroid/content/res/ColorStateList;

    .line 259
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->c()V

    return-void
.end method

.method public setBackgroundPatterned(Z)V
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/google/android/setupdesign/GlifLayout;->c:Z

    .line 277
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->c()V

    return-void
.end method

.method public setHeaderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 220
    const-class v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/a;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setHeaderText(I)V
    .locals 1

    .line 208
    const-class v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/a;->a(I)V

    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 212
    const-class v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 228
    const-class v0, Lcom/google/android/setupdesign/b/b;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/b;

    .line 6121
    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/b;->a()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6123
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 6124
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setPrimaryColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 240
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout;->b:Landroid/content/res/ColorStateList;

    .line 241
    invoke-direct {p0}, Lcom/google/android/setupdesign/GlifLayout;->c()V

    .line 242
    const-class v0, Lcom/google/android/setupdesign/b/f;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/f;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/f;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1

    .line 307
    const-class v0, Lcom/google/android/setupdesign/b/f;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/f;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/f;->a(Z)V

    return-void
.end method
