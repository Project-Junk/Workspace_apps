.class final Lcom/coloros/settings/widget/ColorInputPreference$4;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/widget/ColorInputPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/widget/ColorInputPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/widget/ColorInputPreference;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .line 283
    check-cast p1, Landroid/widget/EditText;

    .line 284
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v0, p2}, Lcom/coloros/settings/widget/ColorInputPreference;->b(Lcom/coloros/settings/widget/ColorInputPreference;Z)Z

    .line 285
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/ColorInputPreference;->d(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/coloros/settings/widget/ColorInputPreference$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    new-instance v2, Lcom/coloros/settings/widget/ColorInputPreference$a;

    invoke-direct {v2, v0, v1}, Lcom/coloros/settings/widget/ColorInputPreference$a;-><init>(Lcom/coloros/settings/widget/ColorInputPreference;B)V

    invoke-static {v0, v2}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;Lcom/coloros/settings/widget/ColorInputPreference$a;)Lcom/coloros/settings/widget/ColorInputPreference$a;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/ColorInputPreference;->e(Lcom/coloros/settings/widget/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 290
    iget-object v3, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v3}, Lcom/coloros/settings/widget/ColorInputPreference;->f(Lcom/coloros/settings/widget/ColorInputPreference;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    iget-object v3, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v3}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/color/support/widget/ColorEditText;->getSelectionStart()I

    move-result v3

    .line 293
    iget-object v4, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v4}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/color/support/widget/ColorEditText;->getSelectionEnd()I

    move-result v4

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v4, v0, :cond_1

    move v1, v2

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/ColorInputPreference;->e(Lcom/coloros/settings/widget/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    .line 300
    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/ColorInputPreference;->d(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/coloros/settings/widget/ColorInputPreference$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    .line 305
    :cond_3
    iget-object v3, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v3}, Lcom/coloros/settings/widget/ColorInputPreference;->d(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/coloros/settings/widget/ColorInputPreference$a;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 306
    iget-object v3, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v3}, Lcom/coloros/settings/widget/ColorInputPreference;->e(Lcom/coloros/settings/widget/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/ColorInputPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v3}, Lcom/coloros/settings/widget/ColorInputPreference;->c(Lcom/coloros/settings/widget/ColorInputPreference;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 307
    iget-object v3, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v3}, Lcom/coloros/settings/widget/ColorInputPreference;->e(Lcom/coloros/settings/widget/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v0, :cond_7

    .line 310
    iget-object v3, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v3}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    .line 311
    invoke-static {v4}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    .line 312
    invoke-static {v4}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 313
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v3

    .line 316
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_6

    iget-object v4, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v4}, Lcom/coloros/settings/widget/ColorInputPreference;->c(Lcom/coloros/settings/widget/ColorInputPreference;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 317
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/coloros/settings/widget/ColorInputPreference;->a(C)Z

    move-result v4

    const-string v5, "..."

    if-eqz v4, :cond_5

    .line 319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {v1, v2}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;Z)Z

    .line 324
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 326
    :cond_6
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {p1, v1}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;Z)Z

    .line 330
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/widget/ColorInputPreference$4;->a:Lcom/coloros/settings/widget/ColorInputPreference;

    invoke-static {p1}, Lcom/coloros/settings/widget/ColorInputPreference;->e(Lcom/coloros/settings/widget/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/coloros/settings/widget/ColorInputPreference;->a(Lcom/coloros/settings/widget/ColorInputPreference;ZZ)V

    return-void
.end method
