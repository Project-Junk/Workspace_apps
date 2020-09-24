.class public Lcom/google/android/setupcompat/template/d;
.super Ljava/lang/Object;
.source "StatusBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/c;


# instance fields
.field private final a:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

.field private b:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

.field private c:Landroid/widget/LinearLayout;

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;Landroid/view/Window;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Lcom/google/android/setupcompat/PartnerCustomizationLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/setupcompat/template/d;->a:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 68
    sget v0, Lcom/google/android/setupcompat/b$b;->suc_layout_status:I

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 73
    instance-of v1, v0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    if-eqz v1, :cond_0

    .line 74
    check-cast v0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    iput-object v0, p0, Lcom/google/android/setupcompat/template/d;->b:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    goto :goto_0

    .line 76
    :cond_0
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/setupcompat/template/d;->c:Landroid/widget/LinearLayout;

    .line 79
    :goto_0
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/template/d;->d:Landroid/view/View;

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 84
    invoke-virtual {p2, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/google/android/setupcompat/b$e;->SucStatusBarMixin:[I

    .line 90
    invoke-virtual {p1, p3, p2, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 91
    sget p2, Lcom/google/android/setupcompat/b$e;->SucStatusBarMixin_sucLightStatusBar:I

    .line 1168
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x17

    const/16 v0, 0x2000

    if-lt p3, p4, :cond_2

    .line 1169
    iget-object p3, p0, Lcom/google/android/setupcompat/template/d;->d:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p3

    and-int/2addr p3, v0

    if-eq p3, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    .line 92
    :goto_1
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 2145
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, p4, :cond_5

    .line 2146
    iget-object p3, p0, Lcom/google/android/setupcompat/template/d;->a:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {p3}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2147
    iget-object p2, p0, Lcom/google/android/setupcompat/template/d;->a:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {p2}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 2149
    invoke-static {p2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object p3

    sget-object p4, Lcom/google/android/setupcompat/b/a;->b:Lcom/google/android/setupcompat/b/a;

    .line 2150
    invoke-virtual {p3, p2, p4}, Lcom/google/android/setupcompat/b/b;->d(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)Z

    move-result p2

    :cond_3
    if-eqz p2, :cond_4

    .line 2154
    iget-object p2, p0, Lcom/google/android/setupcompat/template/d;->d:Landroid/view/View;

    .line 2155
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p3

    or-int/2addr p3, v0

    .line 2154
    invoke-virtual {p2, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 2157
    :cond_4
    iget-object p2, p0, Lcom/google/android/setupcompat/template/d;->d:Landroid/view/View;

    .line 2158
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p3

    and-int/lit16 p3, p3, -0x2001

    .line 2157
    invoke-virtual {p2, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 93
    :cond_5
    :goto_2
    sget p2, Lcom/google/android/setupcompat/b$e;->SucStatusBarMixin_sucStatusBarBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/d;->a(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 70
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sucLayoutStatus cannot be null in StatusBarMixin"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/google/android/setupcompat/template/d;->a:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object p1, p0, Lcom/google/android/setupcompat/template/d;->a:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/b/a;->a:Lcom/google/android/setupcompat/b/a;

    .line 118
    invoke-virtual {v0, p1, v1}, Lcom/google/android/setupcompat/b/b;->b(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/d;->b:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/google/android/setupcompat/template/d;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 124
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
