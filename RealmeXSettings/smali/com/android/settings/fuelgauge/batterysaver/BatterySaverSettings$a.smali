.class public final Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$a;
.super Landroid/text/style/URLSpan;
.source "BatterySaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 131
    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$a;->a:Landroidx/fragment/app/Fragment;

    .line 133
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/text/Spannable;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8

    .line 160
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/Annotation;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    .line 161
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 162
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 163
    invoke-interface {p0, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 164
    invoke-virtual {v3}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "url"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    new-instance v6, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$a;

    invoke-direct {v6, p1, p2}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$a;-><init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 167
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    const/16 v3, 0x21

    .line 168
    invoke-interface {p0, v6, v4, v5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 138
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$a;->a:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverSettings$a;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
