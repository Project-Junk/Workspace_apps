.class public Landroidx/preference/ListPreferenceDialogFragment;
.super Landroidx/preference/PreferenceDialogFragment;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:I

.field private b:[Ljava/lang/CharSequence;

.field private c:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroidx/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private c()Landroidx/preference/ListPreference;
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/ListPreferenceDialogFragment;->b()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/ListPreference;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->a(Landroid/app/AlertDialog$Builder;)V

    iget-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->b:[Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->a:I

    new-instance v2, Landroidx/preference/ListPreferenceDialogFragment$1;

    invoke-direct {v2, p0}, Landroidx/preference/ListPreferenceDialogFragment$1;-><init>(Landroidx/preference/ListPreferenceDialogFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method public a(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragment;->c()Landroidx/preference/ListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->a:I

    if-ltz p1, :cond_0

    iget-object p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->c:[Ljava/lang/CharSequence;

    iget p0, p0, Landroidx/preference/ListPreferenceDialogFragment;->a:I

    aget-object p0, p1, p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/ListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragment;->c()Landroidx/preference/ListPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->h()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->a:I

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->h()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->b:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v0, "ListPreferenceDialogFragment.index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->a:I

    const-string v0, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/ListPreferenceDialogFragment;->b:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/preference/ListPreferenceDialogFragment;->c:[Ljava/lang/CharSequence;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/PreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ListPreferenceDialogFragment.index"

    iget v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ListPreferenceDialogFragment.entries"

    iget-object v1, p0, Landroidx/preference/ListPreferenceDialogFragment;->b:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    iget-object p0, p0, Landroidx/preference/ListPreferenceDialogFragment;->c:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
