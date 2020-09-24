.class public final Lcom/coloros/settings/utils/w;
.super Ljava/lang/Object;
.source "ListViewUtils.java"


# direct methods
.method public static a(Landroid/view/View;II)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a034b

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    if-gtz p2, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    if-eqz p1, :cond_4

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_4

    .line 59
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
