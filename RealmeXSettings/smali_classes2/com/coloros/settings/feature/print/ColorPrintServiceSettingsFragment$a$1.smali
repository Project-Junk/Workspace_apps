.class final Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a$1;
.super Ljava/lang/Object;
.source "ColorPrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrintersChanged()V
    .locals 2

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;

    .line 634
    invoke-static {v1}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;->a(Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;)Landroid/print/PrinterDiscoverySession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 635
    iget-object v1, p0, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a$1;->a:Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/print/ColorPrintServiceSettingsFragment$a;->a(Ljava/util/List;)V

    return-void
.end method
