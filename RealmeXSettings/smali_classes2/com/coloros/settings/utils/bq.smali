.class public final Lcom/coloros/settings/utils/bq;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "system/fonts/ColorOSUI-Regular.ttf"

    .line 36
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 41
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07015d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/4 v1, 0x1

    .line 40
    invoke-virtual {p1, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x5

    .line 43
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    const p0, 0x7f130343

    .line 44
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    const p0, 0x7f0808ef

    .line 45
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 p0, 0x4

    .line 48
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextAlignment(I)V

    const/16 p0, 0x11

    .line 49
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    :goto_1
    return-void
.end method
