.class public final Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;
.super Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;
.source "DeviceNameEditPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorDevNameEditPreDialogFragment"
.end annotation


# instance fields
.field private a:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/color/support/preference/ColorEditTextPreferenceDialogFragment;
    .locals 3

    .line 92
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;

    invoke-direct {v0}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;-><init>()V

    .line 93
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 94
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 102
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    .line 103
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 106
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 107
    invoke-virtual {v0}, Landroidx/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->onBindDialogView(Landroid/view/View;)V

    .line 111
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x1020003

    .line 112
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 117
    :goto_0
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 130
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->a:Landroid/widget/Button;

    if-nez p2, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    const p3, 0x1020019

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->a:Landroid/widget/Button;

    :cond_1
    if-eqz p1, :cond_5

    .line 133
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->a:Landroid/widget/Button;

    if-nez p2, :cond_2

    goto :goto_2

    .line 137
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->a:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .line 139
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/DeviceNameEditPreference$ColorDevNameEditPreDialogFragment;->a:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_5
    :goto_2
    const-string p1, "DeviceNameEditPreference"

    const-string p2, "DeviceName is null"

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
