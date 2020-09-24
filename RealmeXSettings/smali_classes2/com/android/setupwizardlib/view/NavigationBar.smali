.class public Lcom/android/setupwizardlib/view/NavigationBar;
.super Landroid/widget/LinearLayout;
.source "NavigationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/view/NavigationBar$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Lcom/android/setupwizardlib/view/NavigationBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 88
    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 93
    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 99
    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBar;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->a()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 7

    const/4 v0, 0x3

    .line 1054
    new-array v1, v0, [I

    sget v2, Lcom/android/setupwizardlib/b$a;->suwNavBarTheme:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const v4, 0x1010030

    aput v4, v1, v2

    const/4 v4, 0x2

    const v5, 0x1010031

    aput v5, v1, v4

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1062
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    if-nez v5, :cond_2

    .line 1066
    new-array v5, v0, [F

    .line 1067
    new-array v0, v0, [F

    .line 1068
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1069
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1070
    aget v5, v5, v4

    aget v0, v0, v4

    cmpl-float v0, v5, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 1071
    sget v0, Lcom/android/setupwizardlib/b$f;->SuwNavBarThemeDark:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/setupwizardlib/b$f;->SuwNavBarThemeLight:I

    :goto_1
    move v5, v0

    .line 1073
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/b$e;->suw_navbar_view:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 107
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_navbar_next:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->a:Landroid/widget/Button;

    .line 108
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_navbar_back:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->b:Landroid/widget/Button;

    .line 109
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_navbar_more:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/NavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->c:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public getBackButton()Landroid/widget/Button;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->b:Landroid/widget/Button;

    return-object v0
.end method

.method public getMoreButton()Landroid/widget/Button;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->c:Landroid/widget/Button;

    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->a:Landroid/widget/Button;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/setupwizardlib/view/NavigationBar;->d:Lcom/android/setupwizardlib/view/NavigationBar$a;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    :cond_0
    return-void
.end method

.method public setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$a;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/setupwizardlib/view/NavigationBar;->d:Lcom/android/setupwizardlib/view/NavigationBar$a;

    .line 126
    iget-object p1, p0, Lcom/android/setupwizardlib/view/NavigationBar;->d:Lcom/android/setupwizardlib/view/NavigationBar$a;

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
