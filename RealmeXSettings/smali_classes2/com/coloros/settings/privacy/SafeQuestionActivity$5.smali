.class final Lcom/coloros/settings/privacy/SafeQuestionActivity$5;
.super Ljava/lang/Object;
.source "SafeQuestionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/SafeQuestionActivity;->a(Landroid/app/Activity;ILjava/lang/String;Lcom/coloros/settings/privacy/SafeQuestionActivity$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ColorEditText;

.field final synthetic b:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorEditText;Landroid/widget/Button;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$5;->a:Lcom/color/support/widget/ColorEditText;

    iput-object p2, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$5;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 590
    iget-object p1, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$5;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 593
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 594
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 598
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/SafeQuestionActivity$5;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

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
