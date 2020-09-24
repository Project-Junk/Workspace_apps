.class public Landroidx/preference/c;
.super Landroidx/preference/f;


# instance fields
.field j:I

.field private k:[Ljava/lang/CharSequence;

.field private l:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/f;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroidx/preference/c;
    .locals 3

    new-instance v0, Landroidx/preference/c;

    invoke-direct {v0}, Landroidx/preference/c;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/c;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private d()Landroidx/preference/ListPreference;
    .locals 0

    invoke-virtual {p0}, Landroidx/preference/c;->c()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Landroidx/preference/ListPreference;

    return-object p0
.end method


# virtual methods
.method protected a(Landroidx/appcompat/app/c$a;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/f;->a(Landroidx/appcompat/app/c$a;)V

    iget-object v0, p0, Landroidx/preference/c;->k:[Ljava/lang/CharSequence;

    iget v1, p0, Landroidx/preference/c;->j:I

    new-instance v2, Landroidx/preference/c$1;

    invoke-direct {v2, p0}, Landroidx/preference/c$1;-><init>(Landroidx/preference/c;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/app/c$a;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Landroidx/appcompat/app/c$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/preference/c;->j:I

    if-ltz p1, :cond_0

    iget-object p1, p0, Landroidx/preference/c;->l:[Ljava/lang/CharSequence;

    iget v0, p0, Landroidx/preference/c;->j:I

    aget-object p1, p1, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Landroidx/preference/c;->d()Landroidx/preference/ListPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/f;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroidx/preference/c;->d()Landroidx/preference/ListPreference;

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

    iput v0, p0, Landroidx/preference/c;->j:I

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->h()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/c;->k:[Ljava/lang/CharSequence;

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

    iput v0, p0, Landroidx/preference/c;->j:I

    const-string v0, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/c;->k:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/preference/c;->l:[Ljava/lang/CharSequence;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ListPreferenceDialogFragment.index"

    iget v1, p0, Landroidx/preference/c;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ListPreferenceDialogFragment.entries"

    iget-object v1, p0, Landroidx/preference/c;->k:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    iget-object p0, p0, Landroidx/preference/c;->l:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
