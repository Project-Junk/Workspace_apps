.class public Lcom/color/support/preference/ColorListPreferenceDialogFragment;
.super Landroidx/preference/ListPreferenceDialogFragmentCompat;
.source "ColorListPreferenceDialogFragment.java"


# instance fields
.field private a:Landroidx/preference/DialogPreference;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Ljava/lang/CharSequence;

.field private f:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/preference/ListPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/color/support/preference/ColorListPreferenceDialogFragment;
    .locals 3

    .line 62
    new-instance v0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/color/support/preference/ColorListPreferenceDialogFragment;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 64
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 71
    invoke-super {p0, p1}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_2

    .line 73
    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->a:Landroidx/preference/DialogPreference;

    .line 74
    iget-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->b:Ljava/lang/CharSequence;

    .line 75
    iget-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->c:Ljava/lang/CharSequence;

    .line 76
    iget-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->d:Ljava/lang/CharSequence;

    .line 77
    iget-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->e:Ljava/lang/CharSequence;

    .line 79
    iget-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->a:Landroidx/preference/DialogPreference;

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 84
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 83
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->f:Landroid/graphics/drawable/BitmapDrawable;

    return-void

    .line 81
    :cond_1
    :goto_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->f:Landroid/graphics/drawable/BitmapDrawable;

    return-void

    :cond_2
    const-string v0, "PreferenceDialogFragment.title"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->b:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.positiveText"

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->c:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.negativeText"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->d:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.message"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->e:Ljava/lang/CharSequence;

    const-string v0, "PreferenceDialogFragment.icon"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 97
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->f:Landroid/graphics/drawable/BitmapDrawable;

    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 106
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->b:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->f:Landroid/graphics/drawable/BitmapDrawable;

    .line 108
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->c:Ljava/lang/CharSequence;

    .line 109
    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->d:Ljava/lang/CharSequence;

    .line 110
    invoke-virtual {v0, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 119
    :goto_0
    invoke-virtual {p0, v0}, Lcom/color/support/preference/ColorListPreferenceDialogFragment;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;)V

    const/4 p1, 0x0

    .line 120
    invoke-virtual {v0, p1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
