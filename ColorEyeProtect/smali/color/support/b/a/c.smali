.class Lcolor/support/b/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 0

    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    return p0
.end method

.method public static b(I)Z
    .locals 0

    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p0

    return p0
.end method
