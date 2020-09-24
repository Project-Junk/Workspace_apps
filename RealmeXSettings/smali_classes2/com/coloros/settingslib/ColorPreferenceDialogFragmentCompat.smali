.class public abstract Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;
.super Landroidx/fragment/app/DialogFragment;
.source "ColorPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field a:Landroidx/preference/DialogPreference;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private g:Landroid/graphics/drawable/BitmapDrawable;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 3

    const v0, 0x102000b

    .line 244
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->e:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 252
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    .line 258
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 259
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected a(Lcolor/support/v7/app/AlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method public abstract a(Z)V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 266
    iput p2, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->h:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 83
    instance-of v1, v0, Landroidx/preference/DialogPreference$TargetFragment;

    if-eqz v1, :cond_4

    .line 88
    check-cast v0, Landroidx/preference/DialogPreference$TargetFragment;

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    .line 93
    invoke-interface {v0, v1}, Landroidx/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DialogPreference;

    iput-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    .line 94
    iget-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    if-eqz p1, :cond_3

    .line 95
    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->b:Ljava/lang/CharSequence;

    .line 96
    iget-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->c:Ljava/lang/CharSequence;

    .line 97
    iget-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    .line 98
    iget-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->e:Ljava/lang/CharSequence;

    .line 99
    iget-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogLayoutResource()I

    move-result p1

    iput p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->f:I

    .line 101
    iget-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 102
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 106
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 105
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 108
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->g:Landroid/graphics/drawable/BitmapDrawable;

    return-void

    .line 103
    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->g:Landroid/graphics/drawable/BitmapDrawable;

    return-void

    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->b:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->c:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.message"

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->e:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.layout"

    .line 118
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->f:I

    const-string v0, "PreferenceDialogFragment.icon"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 121
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->g:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    return-void

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Target fragment must implement TargetFragment interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x2

    .line 144
    iput v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->h:I

    .line 146
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->b:Ljava/lang/CharSequence;

    .line 147
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->g:Landroid/graphics/drawable/BitmapDrawable;

    .line 148
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->c:Ljava/lang/CharSequence;

    .line 149
    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    .line 150
    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1227
    iget v1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->f:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1232
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1233
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {p0, v2}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a(Landroid/view/View;)V

    .line 155
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_1

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 160
    :goto_1
    invoke-virtual {p0, v0}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a(Lcolor/support/v7/app/AlertDialog$Builder;)V

    .line 163
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 271
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 272
    iget p1, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->h:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->a(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    iget-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->b:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->c:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.positiveText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->d:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.negativeText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->e:Ljava/lang/CharSequence;

    const-string v1, "PreferenceDialogFragment.message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 134
    iget v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->f:I

    const-string v1, "PreferenceDialogFragment.layout"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    iget-object v0, p0, Lcom/coloros/settingslib/ColorPreferenceDialogFragmentCompat;->g:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "PreferenceDialogFragment.icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
