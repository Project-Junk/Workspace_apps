.class public Lcom/android/setupwizardlib/GlifLayout;
.super Lcom/android/setupwizardlib/TemplateLayout;
.source "GlifLayout.java"


# instance fields
.field private a:Landroid/content/res/ColorStateList;

.field private b:Z

.field private c:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->b:Z

    .line 80
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->d:Z

    .line 92
    sget p1, Lcom/android/setupwizardlib/b$a;->suwLayoutTheme:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/GlifLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->b:Z

    .line 80
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->d:Z

    .line 97
    sget p1, Lcom/android/setupwizardlib/b$a;->suwLayoutTheme:I

    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/GlifLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->b:Z

    .line 80
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->d:Z

    .line 103
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 293
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_pattern_bg:I

    .line 5109
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 296
    iget-object v2, p0, Lcom/android/setupwizardlib/GlifLayout;->c:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_0

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/setupwizardlib/GlifLayout;->a:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 299
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 301
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/setupwizardlib/GlifLayout;->b:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/setupwizardlib/a;

    invoke-direct {v2, v1}, Lcom/android/setupwizardlib/a;-><init>(I)V

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 304
    :goto_1
    instance-of v1, v0, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    if-eqz v1, :cond_3

    .line 305
    check-cast v0, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 307
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 109
    const-class v0, Lcom/android/setupwizardlib/b/c;

    new-instance v1, Lcom/android/setupwizardlib/b/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/setupwizardlib/b/b;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;Lcom/android/setupwizardlib/b/g;)V

    .line 110
    const-class v0, Lcom/android/setupwizardlib/b/d;

    new-instance v1, Lcom/android/setupwizardlib/b/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/setupwizardlib/b/d;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;Lcom/android/setupwizardlib/b/g;)V

    .line 111
    const-class v0, Lcom/android/setupwizardlib/b/i;

    new-instance v1, Lcom/android/setupwizardlib/b/i;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/b/i;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;Lcom/android/setupwizardlib/b/g;)V

    .line 112
    const-class v0, Lcom/android/setupwizardlib/b/a;

    new-instance v1, Lcom/android/setupwizardlib/b/a;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/b/a;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;Lcom/android/setupwizardlib/b/g;)V

    .line 113
    new-instance v0, Lcom/android/setupwizardlib/b/j;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/b/j;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    .line 114
    const-class v1, Lcom/android/setupwizardlib/b/j;

    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;Lcom/android/setupwizardlib/b/g;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v2, Lcom/android/setupwizardlib/b/k;

    invoke-direct {v2, v0, v1}, Lcom/android/setupwizardlib/b/k;-><init>(Lcom/android/setupwizardlib/b/j;Landroid/widget/ScrollView;)V

    .line 1101
    iput-object v2, v0, Lcom/android/setupwizardlib/b/j;->a:Lcom/android/setupwizardlib/b/j$b;

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/setupwizardlib/b$g;->SuwGlifLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 125
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwGlifLayout_suwColorPrimary:I

    .line 126
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    .line 131
    :cond_1
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwGlifLayout_suwBackgroundBaseColor:I

    .line 132
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 133
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/GlifLayout;->setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V

    .line 135
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwGlifLayout_suwBackgroundPatterned:I

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 137
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/GlifLayout;->setBackgroundPatterned(Z)V

    .line 139
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwGlifLayout_suwFooter:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_2

    .line 141
    invoke-direct {p0, p2}, Lcom/android/setupwizardlib/GlifLayout;->b(I)Landroid/view/View;

    .line 144
    :cond_2
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwGlifLayout_suwStickyHeader:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_3

    .line 146
    invoke-direct {p0, p2}, Lcom/android/setupwizardlib/GlifLayout;->c(I)Landroid/view/View;

    .line 149
    :cond_3
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwGlifLayout_suwLayoutFullscreen:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/setupwizardlib/GlifLayout;->d:Z

    .line 151
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_4

    iget-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->d:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x400

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->setSystemUiVisibility(I)V

    :cond_4
    return-void
.end method

.method private b(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 182
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_layout_footer:I

    .line 1109
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    check-cast v0, Landroid/view/ViewStub;

    .line 183
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 184
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private c(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 196
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_layout_sticky_header:I

    .line 2109
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    check-cast v0, Landroid/view/ViewStub;

    .line 197
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 161
    sget p2, Lcom/android/setupwizardlib/b$e;->suw_glif_template:I

    .line 163
    :cond_0
    sget v0, Lcom/android/setupwizardlib/b$f;->SuwThemeGlif_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/setupwizardlib/GlifLayout;->a(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 169
    sget p1, Lcom/android/setupwizardlib/b$d;->suw_layout_content:I

    .line 171
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundBaseColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifLayout;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHeaderColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 228
    const-class v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/b;

    .line 4070
    invoke-virtual {v0}, Lcom/android/setupwizardlib/b/b;->a()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4071
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 219
    const-class v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/b/c;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 207
    const-class v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/b/c;->a()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 237
    const-class v0, Lcom/android/setupwizardlib/b/d;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/d;

    .line 5089
    invoke-virtual {v0}, Lcom/android/setupwizardlib/b/d;->a()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5090
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifLayout;->a:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    .line 202
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_scroll_view:I

    .line 3109
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ScrollView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 263
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifLayout;->c:Landroid/content/res/ColorStateList;

    .line 264
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->a()V

    return-void
.end method

.method public setBackgroundPatterned(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->b:Z

    .line 282
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->a()V

    return-void
.end method

.method public setHeaderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 223
    const-class v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/b;

    .line 224
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/b/b;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setHeaderText(I)V
    .locals 1

    .line 211
    const-class v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/b/c;->a(I)V

    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 215
    const-class v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/b/c;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 233
    const-class v0, Lcom/android/setupwizardlib/b/d;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/d;

    .line 5063
    invoke-virtual {v0}, Lcom/android/setupwizardlib/b/d;->a()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5065
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 5066
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

    .line 245
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifLayout;->a:Landroid/content/res/ColorStateList;

    .line 246
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->a()V

    .line 247
    const-class v0, Lcom/android/setupwizardlib/b/i;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/i;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/b/i;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1

    .line 317
    const-class v0, Lcom/android/setupwizardlib/b/i;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/i;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/b/i;->a(Z)V

    return-void
.end method
