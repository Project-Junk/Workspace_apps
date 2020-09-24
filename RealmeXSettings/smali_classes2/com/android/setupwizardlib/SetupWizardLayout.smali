.class public Lcom/android/setupwizardlib/SetupWizardLayout;
.super Lcom/android/setupwizardlib/TemplateLayout;
.source "SetupWizardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/SetupWizardLayout$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 56
    sget p1, Lcom/android/setupwizardlib/b$a;->suwLayoutTheme:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;B)V
    .locals 0

    const/4 p2, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p2}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 65
    sget p1, Lcom/android/setupwizardlib/b$a;->suwLayoutTheme:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    sget p1, Lcom/android/setupwizardlib/b$a;->suwLayoutTheme:I

    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 256
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_layout_decor:I

    .line 6109
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 257
    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 260
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 82
    const-class v0, Lcom/android/setupwizardlib/b/c;

    new-instance v1, Lcom/android/setupwizardlib/b/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/setupwizardlib/b/c;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;Lcom/android/setupwizardlib/b/g;)V

    .line 83
    const-class v0, Lcom/android/setupwizardlib/b/i;

    new-instance v1, Lcom/android/setupwizardlib/b/i;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/b/i;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;Lcom/android/setupwizardlib/b/g;)V

    .line 84
    const-class v0, Lcom/android/setupwizardlib/b/h;

    new-instance v1, Lcom/android/setupwizardlib/b/h;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/b/h;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;Lcom/android/setupwizardlib/b/g;)V

    .line 85
    new-instance v0, Lcom/android/setupwizardlib/b/j;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/b/j;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    .line 86
    const-class v1, Lcom/android/setupwizardlib/b/j;

    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;Lcom/android/setupwizardlib/b/g;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v2, Lcom/android/setupwizardlib/b/k;

    invoke-direct {v2, v0, v1}, Lcom/android/setupwizardlib/b/k;-><init>(Lcom/android/setupwizardlib/b/j;Landroid/widget/ScrollView;)V

    .line 1101
    iput-object v2, v0, Lcom/android/setupwizardlib/b/j;->a:Lcom/android/setupwizardlib/b/j$b;

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/setupwizardlib/b$g;->SuwSetupWizardLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 98
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwSetupWizardLayout_suwBackground:I

    .line 99
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 101
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 103
    :cond_1
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwSetupWizardLayout_suwBackgroundTile:I

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 106
    invoke-direct {p0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_2
    :goto_0
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwSetupWizardLayout_suwIllustration:I

    .line 112
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 116
    :cond_3
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwSetupWizardLayout_suwIllustrationImage:I

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 118
    sget v0, Lcom/android/setupwizardlib/b$g;->SuwSetupWizardLayout_suwIllustrationHorizontalTile:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    .line 121
    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_4
    :goto_1
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwSetupWizardLayout_suwDecorPaddingTop:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-ne p2, v0, :cond_5

    .line 129
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/setupwizardlib/b$c;->suw_decor_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 131
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setDecorPaddingTop(I)V

    .line 136
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwSetupWizardLayout_suwIllustrationAspectRatio:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    cmpl-float v0, p2, v0

    if-nez v0, :cond_6

    .line 139
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/b$c;->suw_illustration_aspect_ratio:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 141
    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    .line 143
    :cond_6
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustrationAspectRatio(F)V

    .line 145
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/b$b;->suwUseTabletLayout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v1, 0x13

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 338
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 339
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    const/16 v3, 0x30

    .line 340
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 342
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 344
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v3, 0x33

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 346
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

.method private setBackgroundTile(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 320
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 321
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 323
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 173
    sget p2, Lcom/android/setupwizardlib/b$e;->suw_template:I

    .line 175
    :cond_0
    sget v0, Lcom/android/setupwizardlib/b$f;->SuwThemeMaterial_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 181
    sget p1, Lcom/android/setupwizardlib/b$d;->suw_layout_content:I

    .line 183
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 214
    const-class v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/b/c;->b()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 218
    const-class v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/b/c;->a()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 2

    .line 187
    const-class v0, Lcom/android/setupwizardlib/b/h;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/h;

    .line 3045
    iget-object v0, v0, Lcom/android/setupwizardlib/b/h;->a:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/b$d;->suw_layout_navigation_bar:I

    .line 3109
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3046
    instance-of v1, v0, Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/setupwizardlib/view/NavigationBar;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgressBarColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 395
    const-class v0, Lcom/android/setupwizardlib/b/i;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/i;

    .line 9136
    iget-object v0, v0, Lcom/android/setupwizardlib/b/i;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    .line 191
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_bottom_scroll_view:I

    .line 4109
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 192
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

    .line 158
    instance-of v0, p1, Lcom/android/setupwizardlib/SetupWizardLayout$a;

    if-nez v0, :cond_0

    .line 159
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ignoring restore instance state "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetupWizardLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 164
    :cond_0
    check-cast p1, Lcom/android/setupwizardlib/SetupWizardLayout$a;

    .line 165
    invoke-virtual {p1}, Lcom/android/setupwizardlib/SetupWizardLayout$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 166
    iget-boolean p1, p1, Lcom/android/setupwizardlib/SetupWizardLayout$a;->a:Z

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setProgressBarShown(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 150
    invoke-super {p0}, Lcom/android/setupwizardlib/TemplateLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 151
    new-instance v1, Lcom/android/setupwizardlib/SetupWizardLayout$a;

    invoke-direct {v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout$a;-><init>(Landroid/os/Parcelable;)V

    .line 1362
    const-class v0, Lcom/android/setupwizardlib/b/i;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/i;

    .line 2051
    iget-object v0, v0, Lcom/android/setupwizardlib/b/i;->a:Lcom/android/setupwizardlib/TemplateLayout;

    sget v2, Lcom/android/setupwizardlib/b$d;->suw_layout_progress:I

    .line 2109
    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2052
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    iput-boolean v0, v1, Lcom/android/setupwizardlib/SetupWizardLayout$a;->a:Z

    return-object v1
.end method

.method public setBackgroundTile(I)V
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 316
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDecorPaddingTop(I)V
    .locals 4

    .line 290
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_layout_decor:I

    .line 8109
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 292
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1

    .line 206
    const-class v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/b/c;->a(I)V

    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 210
    const-class v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/c;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/b/c;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 230
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_layout_decor:I

    .line 5109
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 231
    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    .line 232
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 233
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setIllustrationAspectRatio(F)V
    .locals 2

    .line 272
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_layout_decor:I

    .line 7109
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 273
    instance-of v1, v0, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v1, :cond_0

    .line 274
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 275
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->setAspectRatio(F)V

    :cond_0
    return-void
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 302
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_layout_decor:I

    .line 9109
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setProgressBarColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 391
    const-class v0, Lcom/android/setupwizardlib/b/i;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/i;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/b/i;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1

    .line 371
    const-class v0, Lcom/android/setupwizardlib/b/i;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->a(Ljava/lang/Class;)Lcom/android/setupwizardlib/b/g;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/b/i;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/b/i;->a(Z)V

    return-void
.end method
