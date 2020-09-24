.class public Lcom/google/android/setupcompat/internal/TemplateLayout;
.super Landroid/widget/FrameLayout;
.source "TemplateLayout.java"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/setupcompat/template/c;",
            ">;",
            "Lcom/google/android/setupcompat/template/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->b:Ljava/util/Map;

    .line 57
    sget p1, Lcom/google/android/setupcompat/b$a;->sucLayoutTheme:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(IILandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->b:Ljava/util/Map;

    .line 62
    sget p1, Lcom/google/android/setupcompat/b$a;->sucLayoutTheme:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p2, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(IILandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->b:Ljava/util/Map;

    const/4 p1, 0x0

    .line 68
    invoke-direct {p0, p1, p1, p2, p3}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(IILandroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/setupcompat/internal/TemplateLayout;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method private a(II)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p1

    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Landroid/view/View;)V

    .line 144
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(I)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->a:Landroid/view/ViewGroup;

    .line 145
    iget-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->b()V

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Container cannot be null in TemplateLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(IILandroid/util/AttributeSet;I)V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupcompat/b$e;->SucTemplateLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p3, v1, p4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p1, :cond_0

    .line 77
    sget p1, Lcom/google/android/setupcompat/b$e;->SucTemplateLayout_android_layout:I

    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    :cond_0
    if-nez p2, :cond_1

    .line 80
    sget p2, Lcom/google/android/setupcompat/b$e;->SucTemplateLayout_sucContainer:I

    invoke-virtual {v0, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 82
    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Landroid/util/AttributeSet;I)V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(II)V

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-super {p0, p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/setupcompat/internal/TemplateLayout;)F
    .locals 0

    .line 45
    iget p0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->c:F

    return p0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->a(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Landroid/view/LayoutInflater;II)Landroid/view/View;
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 174
    new-instance v0, Lcom/google/android/setupcompat/internal/d;

    .line 175
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/google/android/setupcompat/internal/d;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    .line 177
    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "android:layout not specified for TemplateLayout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContainerId()I

    move-result p1

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/android/setupcompat/template/c;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;)TM;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/c;

    return-object p1
.end method

.method protected a(Landroid/util/AttributeSet;I)V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/lang/Class;Lcom/google/android/setupcompat/template/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lcom/google/android/setupcompat/template/c;",
            ">(",
            "Ljava/lang/Class<",
            "TM;>;TM;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected getContainerId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getXFraction()F
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 276
    iget v0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->c:F

    return v0
.end method

.method public setXFraction(F)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 243
    iput p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->c:F

    .line 244
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 246
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->setTranslationX(F)V

    return-void

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez p1, :cond_1

    .line 253
    new-instance p1, Lcom/google/android/setupcompat/internal/TemplateLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/internal/TemplateLayout$1;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 262
    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/TemplateLayout;->d:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method
