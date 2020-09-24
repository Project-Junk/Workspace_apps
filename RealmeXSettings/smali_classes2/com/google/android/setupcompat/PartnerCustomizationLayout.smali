.class public Lcom/google/android/setupcompat/PartnerCustomizationLayout;
.super Lcom/google/android/setupcompat/internal/TemplateLayout;
.source "PartnerCustomizationLayout.java"


# instance fields
.field private a:Z

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 74
    sget p1, Lcom/google/android/setupcompat/b$a;->sucLayoutTheme:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    sget p1, Lcom/google/android/setupcompat/b$a;->sucLayoutTheme:I

    invoke-direct {p0, p2, p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 91
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/b$e;->SucPartnerCustomizationLayout:[I

    const/4 v2, 0x0

    .line 92
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    sget v1, Lcom/google/android/setupcompat/b$e;->SucPartnerCustomizationLayout_sucLayoutFullscreen:I

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    if-eqz v1, :cond_0

    const/16 v0, 0x400

    .line 101
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->setSystemUiVisibility(I)V

    .line 104
    :cond_0
    const-class v0, Lcom/google/android/setupcompat/template/d;

    new-instance v1, Lcom/google/android/setupcompat/template/d;

    iget-object v3, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    .line 105
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v1, p0, v3, p1, p2}, Lcom/google/android/setupcompat/template/d;-><init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;Landroid/view/Window;Landroid/util/AttributeSet;I)V

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 106
    const-class v0, Lcom/google/android/setupcompat/template/e;

    new-instance v1, Lcom/google/android/setupcompat/template/e;

    iget-object v3, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/google/android/setupcompat/template/e;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 107
    const-class v0, Lcom/google/android/setupcompat/template/a;

    new-instance v1, Lcom/google/android/setupcompat/template/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/setupcompat/template/a;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V

    .line 109
    const-class v0, Lcom/google/android/setupcompat/template/e;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupcompat/template/e;->a(Landroid/util/AttributeSet;I)V

    .line 114
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_1

    .line 115
    iget-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, -0x80000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 116
    iget-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x4000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    .line 117
    iget-object p1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x8000000

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->c()V

    :cond_2
    return-void
.end method

.method private c()V
    .locals 3

    .line 269
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupcompat/b/a;->x:Lcom/google/android/setupcompat/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result v0

    .line 271
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 128
    sget p2, Lcom/google/android/setupcompat/b$c;->partner_customization_layout:I

    :cond_0
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 185
    sget p1, Lcom/google/android/setupcompat/b$b;->suc_layout_content:I

    .line 187
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a:Z

    .line 148
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1229
    :goto_0
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_4

    .line 1230
    check-cast v1, Landroid/app/Activity;

    .line 148
    iput-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    .line 150
    iget-object v1, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 153
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/google/android/setupcompat/b$e;->SucPartnerCustomizationLayout:[I

    const/4 v4, 0x0

    .line 154
    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 157
    sget p2, Lcom/google/android/setupcompat/b$e;->SucPartnerCustomizationLayout_sucUsePartnerResource:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    const-string v2, "PartnerCustomizedLayout"

    if-nez p2, :cond_0

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Attribute sucUsePartnerResource not found in "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_2

    .line 162
    sget p2, Lcom/google/android/setupcompat/b$e;->SucPartnerCustomizationLayout_sucUsePartnerResource:I

    .line 164
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v4

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a:Z

    .line 166
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x3

    .line 168
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "activity="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    .line 172
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isSetupFlow="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " enablePartnerResourceLoading=true usePartnerResourceAttr="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-boolean p2, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 1231
    :cond_4
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_5

    .line 1232
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto/16 :goto_0

    .line 1234
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot find instance of Activity in parent tree"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Z
    .locals 2

    .line 253
    iget-boolean v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 256
    :cond_0
    invoke-static {}, Lcom/google/android/setupcompat/internal/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 259
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupcompat/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 192
    invoke-super {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->onAttachedToWindow()V

    .line 193
    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/setupcompat/internal/e;->a(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/e;

    .line 194
    const-class v0, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/a;

    .line 1741
    iget-object v1, v0, Lcom/google/android/setupcompat/template/a;->g:Lcom/google/android/setupcompat/a/a/a;

    .line 1742
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/a;->a()Z

    move-result v2

    const/4 v3, 0x0

    .line 1741
    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupcompat/a/a/a;->a(ZZ)V

    .line 1743
    iget-object v1, v0, Lcom/google/android/setupcompat/template/a;->g:Lcom/google/android/setupcompat/a/a/a;

    .line 1744
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/a;->b()Z

    move-result v0

    .line 1743
    invoke-virtual {v1, v0, v3}, Lcom/google/android/setupcompat/a/a/a;->b(ZZ)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .line 199
    invoke-super {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->onDetachedFromWindow()V

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 201
    invoke-static {}, Lcom/google/android/setupcompat/internal/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    .line 202
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/c/b;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    const-class v0, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/a;

    .line 1749
    iget-object v1, v0, Lcom/google/android/setupcompat/template/a;->g:Lcom/google/android/setupcompat/a/a/a;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/a;->a()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/a;->b()Z

    move-result v3

    .line 2098
    iget-object v4, v1, Lcom/google/android/setupcompat/a/a/a;->a:Ljava/lang/String;

    .line 2099
    invoke-static {v4, v2}, Lcom/google/android/setupcompat/a/a/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/setupcompat/a/a/a;->a:Ljava/lang/String;

    .line 2100
    iget-object v2, v1, Lcom/google/android/setupcompat/a/a/a;->b:Ljava/lang/String;

    .line 2101
    invoke-static {v2, v3}, Lcom/google/android/setupcompat/a/a/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/setupcompat/a/a/a;->b:Ljava/lang/String;

    .line 2273
    iget-object v1, v0, Lcom/google/android/setupcompat/template/a;->b:Lcom/google/android/setupcompat/template/FooterButton;

    .line 2350
    iget-object v2, v0, Lcom/google/android/setupcompat/template/a;->c:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz v1, :cond_0

    const-string v3, "PrimaryFooterButton"

    .line 209
    invoke-virtual {v1, v3}, Lcom/google/android/setupcompat/template/FooterButton;->a(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    :goto_0
    if-eqz v2, :cond_1

    const-string v3, "SecondaryFooterButton"

    .line 213
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;->a(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    .line 2757
    :goto_1
    iget-object v0, v0, Lcom/google/android/setupcompat/template/a;->g:Lcom/google/android/setupcompat/a/a/a;

    .line 3128
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 3129
    iget-object v4, v0, Lcom/google/android/setupcompat/a/a/a;->a:Ljava/lang/String;

    const-string v5, "PrimaryButtonVisibility"

    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    iget-object v0, v0, Lcom/google/android/setupcompat/a/a/a;->b:Ljava/lang/String;

    const-string v4, "SecondaryButtonVisibility"

    invoke-virtual {v3, v4, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 218
    new-array v4, v0, [Landroid/os/PersistableBundle;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 217
    invoke-static {v3, v1, v4}, Lcom/google/android/setupcompat/internal/f;->a(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;[Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 221
    invoke-virtual {p0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b:Landroid/app/Activity;

    .line 223
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SetupCompatMetrics"

    invoke-static {v4, v3}, Lcom/google/android/setupcompat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/setupcompat/a/b;

    move-result-object v3

    .line 222
    invoke-static {v3, v1}, Lcom/google/android/setupcompat/a/a;->a(Lcom/google/android/setupcompat/a/b;Landroid/os/PersistableBundle;)Lcom/google/android/setupcompat/a/a;

    move-result-object v1

    const-string v3, "Context cannot be null."

    .line 4033
    invoke-static {v2, v3}, Lcom/google/android/setupcompat/internal/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "CustomEvent cannot be null."

    .line 4034
    invoke-static {v1, v3}, Lcom/google/android/setupcompat/internal/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4035
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "CustomEvent"

    .line 4036
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4037
    invoke-static {v2}, Lcom/google/android/setupcompat/internal/h;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/h;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/google/android/setupcompat/internal/h;->a(ILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method
