.class public final Landroidx/core/text/SpannableStringKt;
.super Ljava/lang/Object;
.source "SpannableString.kt"


# direct methods
.method public static final clearSpans(Landroid/text/Spannable;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 69
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    .line 70
    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getSpans(start, end, T::class.java)"

    invoke-static {v0, v1}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 34
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final set(Landroid/text/Spannable;IILjava/lang/Object;)V
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "span"

    invoke-static {p3, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x11

    .line 49
    invoke-interface {p0, p3, p1, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static final set(Landroid/text/Spannable;La/e/d;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "span"

    invoke-static {p2, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    iget v0, p1, La/e/b;->a:I

    .line 2092
    iget p1, p1, La/e/b;->b:I

    const/16 v1, 0x11

    .line 66
    invoke-interface {p0, p2, v0, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static final toSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 1

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p0

    const-string v0, "SpannableString.valueOf(this)"

    invoke-static {p0, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/text/Spannable;

    return-object p0
.end method
