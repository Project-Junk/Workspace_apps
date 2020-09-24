.class public Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ShortcutServicePickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmationDialogFragment"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
    .locals 3

    .line 168
    new-instance v0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;-><init>()V

    .line 169
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_key"

    .line 170
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 172
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 173
    new-instance p0, Landroid/os/Binder;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p0, v0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->a:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 212
    instance-of p2, p1, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    if-eqz p2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 214
    check-cast p1, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    const-string v0, "extra_key"

    .line 215
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-static {p1, p2}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->a(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a04d2

    if-ne p1, v1, :cond_0

    instance-of p1, v0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 202
    check-cast v0, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    const-string v1, "extra_key"

    .line 203
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-static {v0, p1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->a(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_key"

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 186
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 188
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 190
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p1

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/coloros/settings/feature/accessibility/a;->a(Landroid/app/Activity;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
