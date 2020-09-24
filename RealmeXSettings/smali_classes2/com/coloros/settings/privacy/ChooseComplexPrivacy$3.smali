.class final Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;
.super Ljava/lang/Object;
.source "ChooseComplexPrivacy.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ChooseComplexPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseComplexPrivacy;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    .line 150
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x4

    if-ge v0, v1, :cond_0

    .line 152
    iget-object v3, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget-object v3, v3, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_0
    iget-object v3, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    invoke-static {v3}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->b(Lcom/coloros/settings/privacy/ChooseComplexPrivacy;)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget v3, v3, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget v3, v3, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-eq v3, v7, :cond_2

    iget-object v3, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget v3, v3, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget v3, v3, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget v3, v3, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-ne v3, v5, :cond_3

    :cond_2
    if-ge v0, v2, :cond_3

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->b(Lcom/coloros/settings/privacy/ChooseComplexPrivacy;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    invoke-static {v0}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->b(Lcom/coloros/settings/privacy/ChooseComplexPrivacy;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget v0, v0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget v0, v0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-eq v0, v7, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget v0, v0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget v0, v0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget v0, v0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-ne v0, v5, :cond_6

    .line 169
    :cond_4
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 171
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget v0, v0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->d:I

    if-eq v0, v5, :cond_5

    .line 172
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    invoke-virtual {v2}, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120cb6

    new-array v4, v7, [Ljava/lang/Object;

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    .line 172
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy$3;->a:Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :cond_5
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_6

    add-int/lit8 v1, v0, -0x1

    .line 178
    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_6
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
