.class public Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "KeyboardLayoutDialogFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$d;,
        Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;,
        Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$b;,
        Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;",
        "Landroid/hardware/input/InputManager$InputDeviceListener;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/hardware/input/InputDeviceIdentifier;

.field private b:I

.field private f:Landroid/hardware/input/InputManager;

.field private g:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->b:I

    .line 64
    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->a:Landroid/hardware/input/InputDeviceIdentifier;

    return-void
.end method

.method private a()V
    .locals 3

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    const v1, 0x7f0a01b3

    .line 226
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->g:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;

    invoke-virtual {v1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;)V
    .locals 1

    .line 3159
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$d;

    if-eqz v0, :cond_0

    .line 3160
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$d;

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->a:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-interface {v0, p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$d;->a(Landroid/hardware/input/InputDeviceIdentifier;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 2172
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->g:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2173
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->g:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;

    invoke-virtual {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/KeyboardLayout;

    if-eqz p1, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->f:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->a:Landroid/hardware/input/InputDeviceIdentifier;

    .line 2176
    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 2175
    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    .line 2178
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x21d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "layout"

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->f:Landroid/hardware/input/InputManager;

    .line 79
    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->g:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "inputDeviceIdentifier"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->a:Landroid/hardware/input/InputDeviceIdentifier;

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 103
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f120b5a

    .line 104
    invoke-virtual {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$2;-><init>(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;)V

    const v2, 0x7f120b58

    .line 105
    invoke-virtual {p1, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->g:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;

    new-instance v2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;-><init>(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;)V

    const/4 v3, -0x1

    .line 112
    invoke-virtual {p1, v1, v3, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0d019f

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 120
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->a()V

    .line 121
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance p1, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$b;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->a:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$b;-><init>(Landroid/content/Context;Landroid/hardware/input/InputDeviceIdentifier;)V

    return-object p1
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 2

    .line 211
    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->b:I

    if-ltz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 218
    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->b:I

    if-ltz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 1

    .line 51
    check-cast p2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;

    .line 1189
    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->g:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->clear()V

    .line 1190
    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->g:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;

    iget-object v0, p2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->addAll(Ljava/util/Collection;)V

    .line 1191
    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->g:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;

    iget v0, p2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;->b:I

    .line 1241
    iput v0, p1, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->a:I

    .line 1192
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 1194
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget p2, p2, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;->b:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1196
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->a()V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$c;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->g:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$a;->clear()V

    .line 202
    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->a()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->f:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->b:I

    .line 144
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->f:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->f:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->a:Landroid/hardware/input/InputDeviceIdentifier;

    .line 131
    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->dismiss()V

    return-void

    .line 136
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->b:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->a:Landroid/hardware/input/InputDeviceIdentifier;

    const-string v1, "inputDeviceIdentifier"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
