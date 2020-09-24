.class public Lcom/google/android/setupcompat/template/e;
.super Ljava/lang/Object;
.source "SystemNavBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/c;


# instance fields
.field final a:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field private final c:Landroid/view/Window;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/view/Window;)V
    .locals 1
    .param p1    # Lcom/google/android/setupcompat/internal/TemplateLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Window;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/google/android/setupcompat/template/e;->d:I

    .line 59
    iput-object p1, p0, Lcom/google/android/setupcompat/template/e;->b:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 60
    iput-object p2, p0, Lcom/google/android/setupcompat/template/e;->c:Landroid/view/Window;

    .line 61
    instance-of p2, p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 63
    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/setupcompat/template/e;->a:Z

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/e;->c:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 93
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/e;->a:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/google/android/setupcompat/template/e;->b:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/b/a;->c:Lcom/google/android/setupcompat/b/a;

    .line 97
    invoke-virtual {v0, p1, v1}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I

    move-result p1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/e;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/setupcompat/template/e;->c:Landroid/view/Window;

    if-eqz v0, :cond_2

    .line 120
    iget-boolean v0, p0, Lcom/google/android/setupcompat/template/e;->a:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object p1, p0, Lcom/google/android/setupcompat/template/e;->b:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/b/a;->e:Lcom/google/android/setupcompat/b/a;

    .line 124
    invoke-virtual {v0, p1, v1}, Lcom/google/android/setupcompat/b/b;->d(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)Z

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/google/android/setupcompat/template/e;->c:Landroid/view/Window;

    .line 128
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/e;->c:Landroid/view/Window;

    .line 130
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 133
    :cond_1
    iget-object p1, p0, Lcom/google/android/setupcompat/template/e;->c:Landroid/view/Window;

    .line 134
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/e;->c:Landroid/view/Window;

    .line 136
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-void
.end method

.method private a()Z
    .locals 3

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/setupcompat/template/e;->c:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 73
    iget-object v0, p0, Lcom/google/android/setupcompat/template/e;->b:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 75
    invoke-virtual {v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/b$e;->SucSystemNavBarMixin:[I

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    sget p2, Lcom/google/android/setupcompat/b$e;->SucSystemNavBarMixin_sucSystemNavBarBackgroundColor:I

    .line 78
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupcompat/template/e;->d:I

    .line 79
    iget p2, p0, Lcom/google/android/setupcompat/template/e;->d:I

    invoke-direct {p0, p2}, Lcom/google/android/setupcompat/template/e;->a(I)V

    .line 80
    sget p2, Lcom/google/android/setupcompat/b$e;->SucSystemNavBarMixin_sucLightSystemNavBar:I

    .line 81
    invoke-direct {p0}, Lcom/google/android/setupcompat/template/e;->a()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 80
    invoke-direct {p0, p2}, Lcom/google/android/setupcompat/template/e;->a(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
