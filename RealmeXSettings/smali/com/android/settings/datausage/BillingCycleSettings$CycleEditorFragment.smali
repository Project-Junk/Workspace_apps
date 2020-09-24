.class public Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# instance fields
.field private a:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 3

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 358
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->a:Landroid/net/NetworkTemplate;

    const-string/jumbo v2, "template"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 361
    new-instance v1, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;-><init>()V

    .line 362
    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 363
    invoke-virtual {v1, p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "cycleEditor"

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x225

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "template"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/d;

    .line 402
    invoke-interface {p2}, Lcom/android/settings/datausage/d;->c()Lcom/android/settingslib/d;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 407
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    .line 408
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iget-object v2, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1162
    invoke-virtual {v0, p1}, Lcom/android/settingslib/d;->a(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object p1

    .line 1163
    invoke-static {v2}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v1

    iput-object v1, p1, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    const/4 v1, 0x0

    .line 1164
    iput-boolean v1, p1, Landroid/net/NetworkPolicy;->inferred:Z

    .line 1165
    invoke-virtual {p1}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 1166
    invoke-virtual {v0}, Lcom/android/settingslib/d;->b()V

    .line 410
    invoke-interface {p2}, Lcom/android/settings/datausage/d;->e()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/d;

    .line 376
    invoke-interface {v0}, Lcom/android/settings/datausage/d;->c()Lcom/android/settingslib/d;

    move-result-object v0

    .line 378
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0d013b

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 381
    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0a01be

    .line 382
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->a:Landroid/widget/NumberPicker;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "template"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 1152
    invoke-virtual {v0, v2}, Lcom/android/settingslib/d;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v2, v0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v2}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    iget-object v0, v0, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v0, v0, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 387
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->a:Landroid/widget/NumberPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 388
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->a:Landroid/widget/NumberPicker;

    const/16 v4, 0x1f

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 389
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->a:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    const v0, 0x7f1206cb

    .line 392
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 393
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1206c9

    .line 394
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 395
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
