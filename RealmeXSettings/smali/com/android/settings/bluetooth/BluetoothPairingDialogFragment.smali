.class public Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothPairingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field a:Lcom/android/settings/bluetooth/h;

.field b:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

.field private f:Lcolor/support/v7/app/AlertDialog$Builder;

.field private g:Lcolor/support/v7/app/AlertDialog;

.field private h:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 2

    .line 9198
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->h:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 9199
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 215
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->g:Lcolor/support/v7/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->h:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->h:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    return-void
.end method

.method private synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 256
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->h:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    return-void

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->h:Landroid/widget/EditText;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method private c()Landroid/view/View;
    .locals 8

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04aa

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a04ac

    .line 327
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a04ab

    .line 328
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a04d8

    .line 329
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const/4 v5, 0x1

    .line 331
    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 9145
    iget-object v6, v6, Lcom/android/settings/bluetooth/h;->e:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f1203ed

    .line 331
    invoke-virtual {p0, v6, v5}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 335
    invoke-virtual {v5}, Lcom/android/settings/bluetooth/h;->b()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 334
    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 336
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/h;->d()V

    .line 337
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/h;->c()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 338
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 340
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/h;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/h;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 343
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object v0
.end method

.method public static synthetic lambda$MoFvxV0glcB6o0HOyXhdOXqndwU(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$lns7zfkcexLcSSi5dnoCRnNaleA(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->g:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 98
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 7216
    iget v1, v1, Lcom/android/settings/bluetooth/h;->b:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 7217
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v5, 0x10

    if-lt v2, v5, :cond_1

    if-nez v1, :cond_3

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 98
    :cond_3
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7366
    iput-object p1, v0, Lcom/android/settings/bluetooth/h;->c:Ljava/lang/String;

    return-void
.end method

.method final b()Z
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->b:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x265

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 8102
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/h;->a()I

    move-result p2

    if-nez p2, :cond_0

    .line 8103
    iget-object p2, p1, Lcom/android/settings/bluetooth/h;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 8105
    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    if-ne p2, p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 8111
    iget-object p2, p1, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    const-string p2, "BTPairingController"

    const-string v0, "Pairing dialog canceled"

    .line 8437
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8438
    iget-object p1, p1, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 111
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->b:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->a()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->b()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 79
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1174
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/h;->a()I

    move-result p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, 0x7f1203ec

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v5, :cond_2

    if-eq p1, v2, :cond_0

    const-string p1, "BTPairingDialogFragment"

    const-string v0, "Incorrect pairing type received, not showing any dialog"

    .line 1186
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 5308
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 6145
    iget-object v2, v2, Lcom/android/settings/bluetooth/h;->e:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 5308
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5310
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5311
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5312
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    .line 5315
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 6301
    iget v0, p1, Lcom/android/settings/bluetooth/h;->b:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 6302
    iget-object p1, p1, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto/16 :goto_8

    .line 6303
    :cond_1
    iget v0, p1, Lcom/android/settings/bluetooth/h;->b:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_f

    .line 6304
    iget-object v0, p1, Lcom/android/settings/bluetooth/h;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 6305
    iget-object p1, p1, Lcom/android/settings/bluetooth/h;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto/16 :goto_8

    .line 4287
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 5145
    iget-object v1, v1, Lcom/android/settings/bluetooth/h;->e:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 4287
    invoke-virtual {p0, v3, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 4289
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 4290
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f1203de

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 4291
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f1203e0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 4292
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_8

    .line 1208
    :cond_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 2145
    iget-object v7, v7, Lcom/android/settings/bluetooth/h;->e:Ljava/lang/String;

    aput-object v7, v6, v4

    .line 1208
    invoke-virtual {p0, v3, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1210
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    .line 2233
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f0d0054

    invoke-virtual {v3, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a04dd

    .line 2234
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0a03dd

    .line 2235
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a007d

    .line 2236
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const v8, 0x7f0a04d9

    .line 2237
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const v9, 0x7f1203ed

    .line 2239
    new-array v10, v5, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 3145
    iget-object v11, v11, Lcom/android/settings/bluetooth/h;->e:Ljava/lang/String;

    aput-object v11, v10, v4

    .line 2239
    invoke-virtual {p0, v9, v10}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f0a06d8

    .line 2241
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 2243
    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/h;->b()Z

    move-result v10

    const/16 v11, 0x8

    if-eqz v10, :cond_4

    move v10, v11

    goto :goto_0

    :cond_4
    move v10, v4

    :goto_0
    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2245
    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/h;->d()V

    .line 2246
    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2247
    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/h;->c()Z

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2249
    iput-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->h:Landroid/widget/EditText;

    .line 2251
    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 2252
    invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2253
    new-instance v2, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$lns7zfkcexLcSSi5dnoCRnNaleA;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$lns7zfkcexLcSSi5dnoCRnNaleA;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2262
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 3227
    iget v2, v2, Lcom/android/settings/bluetooth/h;->b:I

    const/4 v8, 0x7

    const/4 v10, -0x1

    if-eqz v2, :cond_6

    if-eq v2, v5, :cond_5

    if-eq v2, v8, :cond_6

    move v2, v10

    goto :goto_1

    :cond_5
    const v2, 0x7f1203b0

    goto :goto_1

    :cond_6
    const v2, 0x7f1203b1

    .line 2263
    :goto_1
    iget-object v12, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 3247
    iget v12, v12, Lcom/android/settings/bluetooth/h;->b:I

    if-eqz v12, :cond_8

    if-eq v12, v5, :cond_8

    if-eq v12, v8, :cond_7

    move v12, v10

    goto :goto_2

    :cond_7
    const v12, 0x7f1203f6

    goto :goto_2

    :cond_8
    const v12, 0x7f1203f5

    .line 2264
    :goto_2
    iget-object v13, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 3266
    iget v13, v13, Lcom/android/settings/bluetooth/h;->b:I

    if-eqz v13, :cond_a

    if-eq v13, v5, :cond_9

    if-eq v13, v8, :cond_a

    move v8, v4

    goto :goto_3

    :cond_9
    const/4 v8, 0x6

    goto :goto_3

    :cond_a
    const/16 v8, 0x10

    .line 2265
    :goto_3
    iget-object v13, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->a:Lcom/android/settings/bluetooth/h;

    .line 3286
    iget v13, v13, Lcom/android/settings/bluetooth/h;->b:I

    if-eq v13, v5, :cond_b

    move v13, v5

    goto :goto_4

    :cond_b
    move v13, v4

    :goto_4
    if-eqz v13, :cond_c

    move v13, v4

    goto :goto_5

    :cond_c
    move v13, v11

    .line 2265
    :goto_5
    invoke-virtual {v7, v13}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eq v2, v10, :cond_d

    .line 2268
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 2270
    :cond_d
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    if-eq v12, v10, :cond_e

    .line 2273
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    .line 2275
    :cond_e
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2277
    :goto_7
    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v4

    invoke-virtual {v9, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1210
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1211
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1212
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1213
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->f:Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1214
    new-instance p1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$MoFvxV0glcB6o0HOyXhdOXqndwU;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$MoFvxV0glcB6o0HOyXhdOXqndwU;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    invoke-virtual {v1, p1}, Lcolor/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 80
    :cond_f
    :goto_8
    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->g:Lcolor/support/v7/app/AlertDialog;

    .line 81
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->g:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, v4}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->g:Lcolor/support/v7/app/AlertDialog;

    return-object p1

    .line 76
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must call setPairingDialogActivity() before showing dialog"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must call setPairingController() before showing dialog"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
