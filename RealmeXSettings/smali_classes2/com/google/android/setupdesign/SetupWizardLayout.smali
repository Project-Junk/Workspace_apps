.class public Lcom/google/android/setupdesign/SetupWizardLayout;
.super Lcom/google/android/setupcompat/internal/TemplateLayout;
.source "SetupWizardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/SetupWizardLayout$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 57
    sget p1, Lcom/google/android/setupdesign/b$a;->sudLayoutTheme:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 0

    const/4 p2, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 66
    sget p1, Lcom/google/android/setupdesign/b$a;->sudLayoutTheme:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    sget p1, Lcom/google/android/setupdesign/b$a;->sudLayoutTheme:I

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/SetupWizardLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 258
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 259
    instance-of v1, v0, Lcom/google/android/setupdesign/view/Illustration;

    if-eqz v1, :cond_0

    .line 260
    check-cast v0, Lcom/google/android/setupdesign/view/Illustration;

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 262
    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/b$b;->sudUseTabletLayout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 339
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 340
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    const/16 v3, 0x30

    .line 341
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 343
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 345
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v3, 0x33

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 347
    :cond_1
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    aput-object p1, v3, v2

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 348
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2

    .line 349
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->setAutoMirrored(Z)V

    :cond_2
    return-object v0

    .line 354
    :cond_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_4

    .line 355
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_4
    return-object p1
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 83
    const-class v0, Lcom/google/android/setupcompat/template/e;

    new-instance v1, Lcom/google/android/setupcompat/template/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/setupcompat/template/e;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 84
    const-class v0, Lcom/google/android/setupdesign/b/a;

    new-instance v1, Lcom/google/android/setupdesign/b/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupdesign/b/a;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 87
    const-class v0, Lcom/google/android/setupdesign/b/f;

    new-instance v1, Lcom/google/android/setupdesign/b/f;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/b/f;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 88
    const-class v0, Lcom/google/android/setupdesign/b/e;

    new-instance v1, Lcom/google/android/setupdesign/b/e;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/b/e;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 89
    new-instance v0, Lcom/google/android/setupdesign/b/i;

    invoke-direct {v0}, Lcom/google/android/setupdesign/b/i;-><init>()V

    .line 90
    const-class v1, Lcom/google/android/setupdesign/b/i;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v2, Lcom/google/android/setupdesign/b/j;

    invoke-direct {v2, v0, v1}, Lcom/google/android/setupdesign/b/j;-><init>(Lcom/google/android/setupdesign/b/i;Landroid/widget/ScrollView;)V

    .line 1092
    iput-object v2, v0, Lcom/google/android/setupdesign/b/i;->a:Lcom/google/android/setupdesign/b/i$b;

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupdesign/b$g;->SudSetupWizardLayout:[I

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 103
    sget p2, Lcom/google/android/setupdesign/b$g;->SudSetupWizardLayout_sudBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 105
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 107
    :cond_1
    sget p2, Lcom/google/android/setupdesign/b$g;->SudSetupWizardLayout_sudBackgroundTile:I

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 110
    invoke-direct {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_2
    :goto_0
    sget p2, Lcom/google/android/setupdesign/b$g;->SudSetupWizardLayout_sudIllustration:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 117
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 119
    :cond_3
    sget p2, Lcom/google/android/setupdesign/b$g;->SudSetupWizardLayout_sudIllustrationImage:I

    .line 120
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 121
    sget v0, Lcom/google/android/setupdesign/b$g;->SudSetupWizardLayout_sudIllustrationHorizontalTile:I

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 124
    invoke-direct {p0, p2, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_4
    :goto_1
    sget p2, Lcom/google/android/setupdesign/b$g;->SudSetupWizardLayout_sudDecorPaddingTop:I

    const/4 v0, -0x1

    .line 130
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-ne p2, v0, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/google/android/setupdesign/b$c;->sud_decor_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 134
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setDecorPaddingTop(I)V

    .line 138
    sget p2, Lcom/google/android/setupdesign/b$g;->SudSetupWizardLayout_sudIllustrationAspectRatio:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 139
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    cmpl-float v0, p2, v0

    if-nez v0, :cond_6

    .line 141
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/setupdesign/b$c;->sud_illustration_aspect_ratio:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 143
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    .line 145
    :cond_6
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->setIllustrationAspectRatio(F)V

    .line 147
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setBackgroundTile(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 321
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 322
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 324
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 175
    sget p2, Lcom/google/android/setupdesign/b$e;->sud_template:I

    .line 177
    :cond_0
    sget v0, Lcom/google/android/setupdesign/b$f;->SudThemeMaterial_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 183
    sget p1, Lcom/google/android/setupdesign/b$d;->sud_layout_content:I

    .line 185
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 216
    const-class v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/a;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 220
    const-class v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/b/a;->a()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBar()Lcom/google/android/setupdesign/view/NavigationBar;
    .locals 2

    .line 189
    const-class v0, Lcom/google/android/setupdesign/b/e;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/e;

    .line 3041
    iget-object v0, v0, Lcom/google/android/setupdesign/b/e;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/b$d;->sud_layout_navigation_bar:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 3042
    instance-of v1, v0, Lcom/google/android/setupdesign/view/NavigationBar;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/setupdesign/view/NavigationBar;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgressBarColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 391
    const-class v0, Lcom/google/android/setupdesign/b/f;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/f;

    .line 3126
    iget-object v0, v0, Lcom/google/android/setupdesign/b/f;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    .line 193
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_bottom_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 194
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ScrollView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 160
    instance-of v0, p1, Lcom/google/android/setupdesign/SetupWizardLayout$a;

    if-nez v0, :cond_0

    .line 161
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring restore instance state "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupWizardLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 166
    :cond_0
    check-cast p1, Lcom/google/android/setupdesign/SetupWizardLayout$a;

    .line 167
    invoke-virtual {p1}, Lcom/google/android/setupdesign/SetupWizardLayout$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 168
    iget-boolean p1, p1, Lcom/google/android/setupdesign/SetupWizardLayout$a;->a:Z

    .line 169
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setProgressBarShown(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 152
    invoke-super {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/google/android/setupdesign/SetupWizardLayout$a;

    invoke-direct {v1, v0}, Lcom/google/android/setupdesign/SetupWizardLayout$a;-><init>(Landroid/os/Parcelable;)V

    .line 1362
    const-class v0, Lcom/google/android/setupdesign/b/f;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/f;

    .line 2044
    iget-object v0, v0, Lcom/google/android/setupdesign/b/f;->a:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v2, Lcom/google/android/setupdesign/b$d;->sud_layout_progress:I

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2045
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    iput-boolean v0, v1, Lcom/google/android/setupdesign/SetupWizardLayout$a;->a:Z

    return-object v1
.end method

.method public setBackgroundTile(I)V
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/google/android/setupdesign/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 317
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDecorPaddingTop(I)V
    .locals 4

    .line 292
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 294
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1

    .line 208
    const-class v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/a;->a(I)V

    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 212
    const-class v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/a;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 232
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 233
    instance-of v1, v0, Lcom/google/android/setupdesign/view/Illustration;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/google/android/setupdesign/view/Illustration;

    .line 235
    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIllustrationAspectRatio(F)V
    .locals 2

    .line 274
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->b(I)Landroid/view/View;

    move-result-object v0

    .line 275
    instance-of v1, v0, Lcom/google/android/setupdesign/view/Illustration;

    if-eqz v1, :cond_0

    .line 276
    check-cast v0, Lcom/google/android/setupdesign/view/Illustration;

    .line 277
    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/view/Illustration;->setAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 304
    sget v0, Lcom/google/android/setupdesign/b$d;->sud_layout_decor:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setProgressBarColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 387
    const-class v0, Lcom/google/android/setupdesign/b/f;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/f;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/f;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1

    .line 371
    const-class v0, Lcom/google/android/setupdesign/b/f;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/b/f;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/b/f;->a(Z)V

    return-void
.end method
