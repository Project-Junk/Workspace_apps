.class final Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$3;
.super Ljava/lang/Object;
.source "ColorPrintServiceSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/print/PrinterInfo;

.field final synthetic b:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;Landroid/print/PrinterInfo;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$3;->b:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    iput-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$3;->a:Landroid/print/PrinterInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 499
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$3;->b:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    iget-object p1, p1, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->e(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 500
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 501
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$3;->a:Landroid/print/PrinterInfo;

    const-string v1, "INTENT_EXTRA_PRINTER"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 502
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$3;->b:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    iget-object v0, v0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$3;->b:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    iget-object v1, v1, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 503
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$3;->b:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    iget-object p1, p1, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
