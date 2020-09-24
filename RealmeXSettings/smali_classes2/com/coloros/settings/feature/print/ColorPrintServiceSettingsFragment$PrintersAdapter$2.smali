.class final Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$2;
.super Ljava/lang/Object;
.source "ColorPrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 426
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$2;->b:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    iput-object p2, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$2;->a:Landroid/print/PrinterInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 430
    :try_start_0
    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$2;->b:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;

    iget-object p1, p1, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$PrintersAdapter$2;->a:Landroid/print/PrinterInfo;

    .line 431
    invoke-virtual {p1}, Landroid/print/PrinterInfo;->getInfoIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 430
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentActivity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ColorPrintServiceSettingsFragment"

    const-string v1, "Could not execute pending info intent: %s"

    .line 433
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
