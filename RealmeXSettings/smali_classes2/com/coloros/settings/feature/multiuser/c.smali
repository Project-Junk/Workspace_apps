.class public final Lcom/coloros/settings/feature/multiuser/c;
.super Ljava/lang/Object;
.source "UserIcons.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 43
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/feature/multiuser/c;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7f0603a2
        0x7f0603a3
        0x7f0603a4
        0x7f0603a5
        0x7f0603a6
        0x7f0603a7
        0x7f0603a8
        0x7f0603a9
    .end array-data
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 62
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 63
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 64
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 65
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public static a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    .line 83
    sget-object v1, Lcom/coloros/settings/feature/multiuser/c;->a:[I

    array-length v2, v1

    rem-int v2, p1, v2

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    const v1, 0x7f0603aa

    :goto_0
    const v2, 0x7f0809d4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, -0xb

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v4, v4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p0

    .line 100
    :cond_2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v0, 0x7f080a25

    .line 101
    invoke-virtual {p0, v0, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x2

    .line 103
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v0, v4

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 104
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    invoke-virtual {p1, v4, v4, v0, p0}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    return-object p1

    .line 88
    :cond_3
    :goto_1
    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v4, v4, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p0
.end method
