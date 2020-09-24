.class public final Lcom/android/settings/widget/c;
.super Ljava/lang/Object;
.source "InvertedChartAxis.java"

# interfaces
.implements Lcom/android/settings/widget/a;


# instance fields
.field private final a:Lcom/android/settings/widget/a;

.field private b:F


# virtual methods
.method public final a(J)F
    .locals 2

    .line 46
    iget v0, p0, Lcom/android/settings/widget/c;->b:F

    iget-object v1, p0, Lcom/android/settings/widget/c;->a:Lcom/android/settings/widget/a;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/widget/a;->a(J)F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

.method public final a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/settings/widget/c;->a:Lcom/android/settings/widget/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/a;->a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final a(F)Z
    .locals 1

    .line 40
    iput p1, p0, Lcom/android/settings/widget/c;->b:F

    .line 41
    iget-object v0, p0, Lcom/android/settings/widget/c;->a:Lcom/android/settings/widget/a;

    invoke-interface {v0, p1}, Lcom/android/settings/widget/a;->a(F)Z

    move-result p1

    return p1
.end method

.method public final a()[F
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/c;->a:Lcom/android/settings/widget/a;

    invoke-interface {v0}, Lcom/android/settings/widget/a;->a()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 63
    iget v2, p0, Lcom/android/settings/widget/c;->b:F

    aget v3, v0, v1

    sub-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b(F)J
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/widget/c;->a:Lcom/android/settings/widget/a;

    iget v1, p0, Lcom/android/settings/widget/c;->b:F

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/settings/widget/a;->b(F)J

    move-result-wide v0

    return-wide v0
.end method
