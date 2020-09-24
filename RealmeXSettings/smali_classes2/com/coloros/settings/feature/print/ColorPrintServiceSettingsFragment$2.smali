.class final Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;
.super Ljava/util/TimerTask;
.source "ColorPrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->c(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;)I

    move-result v1

    add-int/lit16 v1, v1, 0x1770

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;I)I

    .line 659
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2$1;-><init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$2;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
