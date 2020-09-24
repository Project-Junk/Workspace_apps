.class public Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "WorkSoundPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/WorkSoundPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnifyWorkDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/notification/SoundSettings;)V
    .locals 4

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "UnifyWorkDialogFragment"

    .line 352
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 353
    new-instance v2, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;-><init>()V

    const/16 v3, 0xc8

    .line 354
    invoke-virtual {v2, p0, v3}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 355
    invoke-virtual {v2, v0, v1}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x229

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/SoundSettings;

    .line 362
    invoke-virtual {p1}, Lcom/android/settings/notification/SoundSettings;->isAdded()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/android/settings/notification/SoundSettings;->d()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 342
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/WorkSoundPreferenceController$UnifyWorkDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121aa6

    .line 343
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121aa5

    .line 344
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121aa7

    .line 345
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040009

    const/4 v1, 0x0

    .line 346
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
