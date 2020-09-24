.class public final Lcom/android/setupwizardlib/util/a;
.super Ljava/lang/Object;
.source "DrawableLayoutDirectionHelper.java"


# direct methods
.method public static a(Landroid/graphics/drawable/Drawable;IILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 39
    invoke-virtual {p3}, Landroid/view/View;->getLayoutDirection()I

    move-result p3

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    invoke-static {p0, p1, p2, v1}, Lcom/android/setupwizardlib/util/a;->a(Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/InsetDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;IIZ)Landroid/graphics/drawable/InsetDrawable;
    .locals 12

    if-eqz p3, :cond_0

    .line 76
    new-instance p3, Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object p3

    .line 78
    :cond_0
    new-instance p3, Landroid/graphics/drawable/InsetDrawable;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, p3

    move-object v7, p0

    move v8, p1

    move v10, p2

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object p3
.end method
