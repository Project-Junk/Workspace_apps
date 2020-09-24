.class public Lcom/android/setupwizardlib/view/NavigationBarButton;
.super Landroid/widget/Button;
.source "NavigationBarButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/view/NavigationBarButton$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 52
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 53
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 54
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/android/setupwizardlib/view/NavigationBarButton$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$a;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private b()V
    .locals 6

    .line 90
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getAllCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 93
    instance-of v5, v4, Lcom/android/setupwizardlib/view/NavigationBarButton$a;

    if-eqz v5, :cond_0

    .line 94
    check-cast v4, Lcom/android/setupwizardlib/view/NavigationBarButton$a;

    invoke-virtual {v4, v0}, Lcom/android/setupwizardlib/view/NavigationBarButton$a;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->invalidate()V

    :cond_2
    return-void
.end method

.method private getAllCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x6

    .line 102
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 103
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    .line 104
    aget-object v3, v1, v2

    aput-object v3, v0, v2

    const/4 v3, 0x1

    .line 105
    aget-object v4, v1, v3

    aput-object v4, v0, v3

    const/4 v3, 0x2

    .line 106
    aget-object v4, v1, v3

    aput-object v4, v0, v3

    const/4 v4, 0x3

    .line 107
    aget-object v1, v1, v4

    aput-object v1, v0, v4

    .line 108
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x4

    .line 110
    aget-object v2, v1, v2

    aput-object v2, v0, v4

    const/4 v2, 0x5

    .line 111
    aget-object v1, v1, v3

    aput-object v1, v0, v2

    :cond_0
    return-object v0
.end method


# virtual methods
.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 64
    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBarButton$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$a;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 65
    invoke-static {p2}, Lcom/android/setupwizardlib/view/NavigationBarButton$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$a;

    move-result-object p2

    :cond_1
    if-eqz p3, :cond_2

    .line 66
    invoke-static {p3}, Lcom/android/setupwizardlib/view/NavigationBarButton$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$a;

    move-result-object p3

    :cond_2
    if-eqz p4, :cond_3

    .line 67
    invoke-static {p4}, Lcom/android/setupwizardlib/view/NavigationBarButton$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$a;

    move-result-object p4

    .line 68
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->b()V

    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    invoke-static {p1}, Lcom/android/setupwizardlib/view/NavigationBarButton$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$a;

    move-result-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 76
    invoke-static {p2}, Lcom/android/setupwizardlib/view/NavigationBarButton$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$a;

    move-result-object p2

    :cond_1
    if-eqz p3, :cond_2

    .line 77
    invoke-static {p3}, Lcom/android/setupwizardlib/view/NavigationBarButton$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$a;

    move-result-object p3

    :cond_2
    if-eqz p4, :cond_3

    .line 78
    invoke-static {p4}, Lcom/android/setupwizardlib/view/NavigationBarButton$a;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/setupwizardlib/view/NavigationBarButton$a;

    move-result-object p4

    .line 79
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->b()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 86
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/NavigationBarButton;->b()V

    return-void
.end method
