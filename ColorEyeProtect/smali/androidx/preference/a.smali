.class public Landroidx/preference/a;
.super Landroidx/preference/f;


# instance fields
.field private j:Landroid/widget/EditText;

.field private k:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/f;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroidx/preference/a;
    .locals 3

    new-instance v0, Landroidx/preference/a;

    invoke-direct {v0}, Landroidx/preference/a;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/a;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private d()Landroidx/preference/EditTextPreference;
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/a;->c()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/EditTextPreference;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/f;->a(Landroid/view/View;)V

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Landroidx/preference/a;->j:Landroid/widget/EditText;

    iget-object p1, p0, Landroidx/preference/a;->j:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/preference/a;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Landroidx/preference/a;->j:Landroid/widget/EditText;

    iget-object v0, p0, Landroidx/preference/a;->k:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/preference/a;->j:Landroid/widget/EditText;

    iget-object v0, p0, Landroidx/preference/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-direct {p0}, Landroidx/preference/a;->d()Landroidx/preference/EditTextPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->h()Landroidx/preference/EditTextPreference$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/preference/a;->d()Landroidx/preference/EditTextPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->h()Landroidx/preference/EditTextPreference$a;

    move-result-object p1

    iget-object p0, p0, Landroidx/preference/a;->j:Landroid/widget/EditText;

    invoke-interface {p1, p0}, Landroidx/preference/EditTextPreference$a;->a(Landroid/widget/EditText;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Dialog view must contain an EditText with id @android:id/edit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/preference/a;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Landroidx/preference/a;->d()Landroidx/preference/EditTextPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/EditTextPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/f;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroidx/preference/a;->d()Landroidx/preference/EditTextPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/EditTextPreference;->g()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/preference/a;->k:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_0
    const-string v0, "EditTextPreferenceDialogFragment.text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "EditTextPreferenceDialogFragment.text"

    iget-object p0, p0, Landroidx/preference/a;->k:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
