.class public final Lcom/android/settings/accessibility/a;
.super Ljava/lang/Object;
.source "AccessibilityGestureNavigationTutorial.java"


# static fields
.field private static final a:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    sget-object v0, Lcom/android/settings/accessibility/-$$Lambda$a$mpJVkL7U24XraynjU4O2Dn19ZIA;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$a$mpJVkL7U24XraynjU4O2Dn19ZIA;

    sput-object v0, Lcom/android/settings/accessibility/a;->a:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private static a(Landroid/content/Context;I)Landroid/view/View;
    .locals 7

    const-string v0, "layout_inflater"

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    const v3, 0x7f11002a

    const v4, 0x7f11002b

    const v5, 0x7f0a02ce

    const v6, 0x7f0a02d0

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_4

    :cond_0
    const p1, 0x7f0d037a

    .line 134
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    .line 138
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    invoke-static {p0}, Lcom/android/settings/accessibility/a;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-static {p0, v3, p1}, Lcom/android/settings/accessibility/d;->a(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/d;

    .line 144
    invoke-static {p0}, Lcom/android/settings/accessibility/a;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f1200a9

    goto :goto_1

    :cond_2
    const p0, 0x7f1200aa

    :goto_1
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_3
    const p1, 0x7f0d037c

    .line 119
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    .line 123
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 125
    invoke-static {p0}, Lcom/android/settings/accessibility/a;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-static {p0, v3, p1}, Lcom/android/settings/accessibility/d;->a(Landroid/content/Context;ILandroid/view/TextureView;)Lcom/android/settings/accessibility/d;

    .line 129
    invoke-static {p0}, Lcom/android/settings/accessibility/a;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f1200ab

    goto :goto_3

    :cond_5
    const p0, 0x7f1200ac

    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_6
    const p0, 0x7f0d037b

    .line 115
    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_4
    return-object v1
.end method

.method static a(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
    .locals 10

    const/4 v0, 0x0

    .line 86
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/a;->b(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 1215
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.android.internal.R.integer.config_navBarInteractionMode"

    invoke-static {v3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    const v2, 0x7f0a010b

    .line 2168
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2172
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    const v5, 0x7f1200a8

    .line 2178
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2179
    invoke-static {v5}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v6

    const-string v7, "%s"

    .line 2182
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v7, v5, 0x2

    const v8, 0x7f08069c

    .line 2184
    invoke-virtual {p0, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2207
    new-array v3, v3, [I

    const v9, 0x1010036

    aput v9, v3, v0

    .line 2208
    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 2209
    invoke-virtual {v3, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 2210
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 2200
    invoke-static {p0, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    .line 2185
    invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2186
    invoke-virtual {v8, v0, v0, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2187
    new-instance p0, Landroid/text/style/ImageSpan;

    invoke-direct {p0, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x21

    invoke-virtual {v6, p0, v5, v7, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2173
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    .line 73
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 74
    invoke-static {p0, v1}, Lcom/android/settings/accessibility/a;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget-object v0, Lcom/android/settings/accessibility/a;->a:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f1200a7

    .line 76
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 80
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 69
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static b(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 97
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/a;->b(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;I)Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 155
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/a;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget-object p1, Lcom/android/settings/accessibility/a;->a:Landroid/content/DialogInterface$OnClickListener;

    const v0, 0x7f1200a7

    .line 157
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x1

    .line 160
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 162
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "accessibility"

    .line 221
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 222
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$mpJVkL7U24XraynjU4O2Dn19ZIA(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/a;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method
