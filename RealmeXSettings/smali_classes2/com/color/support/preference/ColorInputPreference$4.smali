.class final Lcom/color/support/preference/ColorInputPreference$4;
.super Ljava/lang/Object;
.source "ColorInputPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/preference/ColorInputPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/preference/ColorInputPreference;


# direct methods
.method constructor <init>(Lcom/color/support/preference/ColorInputPreference;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .line 338
    check-cast p1, Landroid/widget/EditText;

    .line 339
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0, p2}, Lcom/color/support/preference/ColorInputPreference;->b(Lcom/color/support/preference/ColorInputPreference;Z)Z

    .line 340
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0}, Lcom/color/support/preference/ColorInputPreference;->d(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/preference/ColorInputPreference$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    new-instance v2, Lcom/color/support/preference/ColorInputPreference$a;

    invoke-direct {v2, v0, v1}, Lcom/color/support/preference/ColorInputPreference$a;-><init>(Lcom/color/support/preference/ColorInputPreference;B)V

    invoke-static {v0, v2}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;Lcom/color/support/preference/ColorInputPreference$a;)Lcom/color/support/preference/ColorInputPreference$a;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0}, Lcom/color/support/preference/ColorInputPreference;->e(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 345
    iget-object v3, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v3}, Lcom/color/support/preference/ColorInputPreference;->f(Lcom/color/support/preference/ColorInputPreference;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    iget-object v3, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v3}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/color/support/widget/ColorEditText;->getSelectionStart()I

    move-result v3

    .line 348
    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/color/support/widget/ColorEditText;->getSelectionEnd()I

    move-result v4

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    .line 350
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v4, v0, :cond_1

    move v1, v2

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0}, Lcom/color/support/preference/ColorInputPreference;->e(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_2

    .line 355
    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v0}, Lcom/color/support/preference/ColorInputPreference;->d(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/preference/ColorInputPreference$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    .line 360
    :cond_3
    iget-object v3, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v3}, Lcom/color/support/preference/ColorInputPreference;->d(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/preference/ColorInputPreference$a;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 361
    iget-object v3, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v3}, Lcom/color/support/preference/ColorInputPreference;->e(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorInputPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v3}, Lcom/color/support/preference/ColorInputPreference;->c(Lcom/color/support/preference/ColorInputPreference;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 362
    iget-object v3, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v3}, Lcom/color/support/preference/ColorInputPreference;->e(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/color/support/preference/ColorInputPreference;->a(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v0, :cond_7

    .line 365
    iget-object v3, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v3}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/color/support/widget/ColorEditText;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    .line 366
    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    .line 367
    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;)Lcom/color/support/widget/ColorEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/color/support/widget/ColorEditText;->getCompoundPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 368
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p1}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v3

    .line 371
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_6

    iget-object v4, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->c(Lcom/color/support/preference/ColorInputPreference;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 372
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/color/support/preference/ColorInputPreference;->a(C)Z

    move-result v4

    const-string v5, "..."

    if-eqz v4, :cond_5

    .line 374
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

    .line 376
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

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {v1, v2}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;Z)Z

    .line 379
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 381
    :cond_6
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {p1, v1}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;Z)Z

    .line 385
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/color/support/preference/ColorInputPreference$4;->a:Lcom/color/support/preference/ColorInputPreference;

    invoke-static {p1}, Lcom/color/support/preference/ColorInputPreference;->e(Lcom/color/support/preference/ColorInputPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/color/support/preference/ColorInputPreference;->a(Lcom/color/support/preference/ColorInputPreference;ZZ)V

    return-void
.end method
