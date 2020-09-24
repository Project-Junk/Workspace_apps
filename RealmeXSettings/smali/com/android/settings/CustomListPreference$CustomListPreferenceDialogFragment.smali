.class public Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;
.super Landroidx/preference/ListPreferenceDialogFragmentCompat;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CustomListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomListPreferenceDialogFragment"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;
    .locals 3

    .line 86
    new-instance v0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;-><init>()V

    .line 88
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 89
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;)Lcom/android/settings/CustomListPreference;
    .locals 0

    .line 11095
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/CustomListPreference;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 7095
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CustomListPreference;

    .line 155
    iget v1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a:I

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 138
    new-instance v0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$2;-><init>(Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;)V

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a:I

    return-void
.end method

.method protected final b()V
    .locals 0

    .line 8095
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    .line 168
    invoke-direct {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->d()Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->c()V

    return-void
.end method

.method protected final c()V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 133
    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->onActivityCreated(Landroid/os/Bundle;)V

    .line 6095
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CustomListPreference;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/CustomListPreference;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 116
    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 118
    iget v1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a:I

    const-string v2, "settings.CustomListPrefDialog.KEY_CLICKED_ENTRY_INDEX"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a:I

    .line 5095
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/CustomListPreference;

    .line 121
    invoke-virtual {p1, v0}, Lcom/android/settings/CustomListPreference;->a(Landroid/app/Dialog;)V

    return-object v0
.end method

.method public onDialogClosed(Z)V
    .locals 2

    .line 9095
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CustomListPreference;

    .line 194
    invoke-virtual {v0, p1}, Lcom/android/settings/CustomListPreference;->a(Z)V

    .line 10095
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CustomListPreference;

    .line 196
    invoke-direct {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1095
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CustomListPreference;

    .line 2095
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/CustomListPreference;

    .line 102
    invoke-virtual {v1}, Lcom/android/settings/CustomListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/CustomListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a:I

    .line 3095
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CustomListPreference;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/CustomListPreference;->a(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4095
    invoke-virtual {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/CustomListPreference;

    .line 104
    invoke-virtual {v0}, Lcom/android/settings/CustomListPreference;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120f1b

    .line 105
    new-instance v1, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment$1;-><init>(Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    iget v0, p0, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->a:I

    const-string v1, "settings.CustomListPrefDialog.KEY_CLICKED_ENTRY_INDEX"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
