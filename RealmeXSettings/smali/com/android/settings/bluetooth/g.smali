.class abstract Lcom/android/settings/bluetooth/g;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field a:Lcolor/support/v7/app/AlertDialog;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroid/widget/EditText;

.field private f:Landroid/widget/Button;

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 2

    .line 97
    iget-object p1, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/g;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$6o4C0r83jvApFItIuI9Z13RUDWg(Lcom/android/settings/bluetooth/g;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/g;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$RIcHCPPRO2YU7aEIlRvOVBPb08c(Lcom/android/settings/bluetooth/g;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/g;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 177
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/g;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 179
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/g;->g:Z

    .line 180
    iget-object p1, p0, Lcom/android/settings/bluetooth/g;->f:Landroid/widget/Button;

    move-object v0, p1

    goto :goto_0

    .line 182
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/g;->h:Z

    .line 183
    iget-object v0, p0, Lcom/android/settings/bluetooth/g;->f:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method final c()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/g;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 170
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/g;->g:Z

    const/4 v1, 0x0

    .line 171
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/g;->h:Z

    .line 172
    iget-object v1, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/g;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "device_name"

    .line 85
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "device_name_edited"

    .line 86
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/g;->h:Z

    .line 88
    :cond_0
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/g;->a()I

    move-result v2

    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1116
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/g;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "layout_inflater"

    .line 1117
    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0d0157

    const/4 v4, 0x0

    .line 1118
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a023a

    .line 1119
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    .line 1120
    iget-object v3, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/text/InputFilter;

    new-instance v6, Lcom/android/settings/bluetooth/f;

    invoke-direct {v6}, Lcom/android/settings/bluetooth/f;-><init>()V

    aput-object v6, v5, v1

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1123
    iget-object v1, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1125
    iget-object v1, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1127
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1128
    iget-object v0, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/widget/EditText;)V

    .line 1129
    iget-object v0, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 90
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120412

    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$g$RIcHCPPRO2YU7aEIlRvOVBPb08c;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$g$RIcHCPPRO2YU7aEIlRvOVBPb08c;-><init>(Lcom/android/settings/bluetooth/g;)V

    .line 91
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 94
    invoke-virtual {p1, v0, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/g;->a:Lcolor/support/v7/app/AlertDialog;

    .line 96
    iget-object p1, p0, Lcom/android/settings/bluetooth/g;->a:Lcolor/support/v7/app/AlertDialog;

    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$g$6o4C0r83jvApFItIuI9Z13RUDWg;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$$Lambda$g$6o4C0r83jvApFItIuI9Z13RUDWg;-><init>(Lcom/android/settings/bluetooth/g;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/bluetooth/g;->a:Lcolor/support/v7/app/AlertDialog;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 152
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/android/settings/bluetooth/g;->a:Lcolor/support/v7/app/AlertDialog;

    .line 154
    iput-object v0, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    .line 155
    iput-object v0, p0, Lcom/android/settings/bluetooth/g;->f:Landroid/widget/Button;

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    .line 137
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/g;->a(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/g;->a:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/android/settings/bluetooth/g;->a:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 160
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/g;->f:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/g;->a:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/g;->f:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/android/settings/bluetooth/g;->f:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/g;->h:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/g;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/g;->h:Z

    const-string v1, "device_name_edited"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
