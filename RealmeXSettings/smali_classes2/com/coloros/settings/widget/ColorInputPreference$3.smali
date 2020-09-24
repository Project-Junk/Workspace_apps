.class final Lcom/coloros/settings/widget/ColorInputPreference$3;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/widget/ColorInputPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/coloros/settings/widget/ColorInputPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/widget/ColorInputPreference;Ljava/lang/CharSequence;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference$3;->b:Lcom/coloros/settings/widget/ColorInputPreference;

    iput-object p2, p0, Lcom/coloros/settings/widget/ColorInputPreference$3;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 246
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$3;->b:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/widget/ColorInputPreference$3;->b:Lcom/coloros/settings/widget/ColorInputPreference;

    .line 247
    invoke-static {v1}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coloros/settings/widget/ColorInputPreference$3;->b:Lcom/coloros/settings/widget/ColorInputPreference;

    .line 248
    invoke-static {v1}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 249
    iget-object v1, p0, Lcom/coloros/settings/widget/ColorInputPreference$3;->a:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/coloros/settings/widget/ColorInputPreference$3;->b:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v2}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/color/support/widget/ColorEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v0, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 252
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/coloros/settings/widget/ColorInputPreference$3;->b:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v2}, Lcom/coloros/settings/widget/ColorInputPreference;->c(Lcom/coloros/settings/widget/ColorInputPreference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/coloros/settings/widget/ColorInputPreference;->a(C)Z

    move-result v2

    const-string v5, "..."

    if-eqz v2, :cond_0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v0, v3

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 259
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$3;->b:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v0, v3}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;Z)Z

    goto :goto_1

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$3;->b:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v0, v4}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;Z)Z

    .line 263
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$3;->b:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
