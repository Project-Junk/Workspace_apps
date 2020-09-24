.class final Lcom/android/settings/print/PrintServiceSettingsFragment$b;
.super Landroidx/loader/content/Loader;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/loader/content/Loader<",
        "Ljava/util/List<",
        "Landroid/print/PrinterInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/print/PrinterDiscoverySession;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 644
    invoke-direct {p0, p1}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    .line 638
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/PrintServiceSettingsFragment$b;)Landroid/print/PrinterDiscoverySession;
    .locals 0

    .line 632
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->b:Landroid/print/PrinterDiscoverySession;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .line 649
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 632
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public final onAbandon()V
    .locals 0

    .line 710
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->onStopLoading()V

    return-void
.end method

.method public final onCancelLoad()Z
    .locals 1

    .line 2714
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->b:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    .line 2715
    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->isPrinterDiscoveryStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2716
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->b:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onForceLoad()V
    .locals 2

    .line 1723
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->b:Landroid/print/PrinterDiscoverySession;

    if-nez v0, :cond_0

    .line 1724
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "print"

    .line 1725
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 1726
    invoke-virtual {v0}, Landroid/print/PrintManager;->createPrinterDiscoverySession()Landroid/print/PrinterDiscoverySession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->b:Landroid/print/PrinterDiscoverySession;

    .line 1727
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->b:Landroid/print/PrinterDiscoverySession;

    new-instance v1, Lcom/android/settings/print/PrintServiceSettingsFragment$b$1;

    invoke-direct {v1, p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$b$1;-><init>(Lcom/android/settings/print/PrintServiceSettingsFragment$b;)V

    invoke-virtual {v0, v1}, Landroid/print/PrinterDiscoverySession;->setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V

    .line 1735
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->b:Landroid/print/PrinterDiscoverySession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    return-void
.end method

.method public final onReset()V
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->onStopLoading()V

    .line 698
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 699
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->b:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->destroy()V

    const/4 v0, 0x0

    .line 701
    iput-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->b:Landroid/print/PrinterDiscoverySession;

    :cond_0
    return-void
.end method

.method public final onStartLoading()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->a(Ljava/util/List;)V

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->onForceLoad()V

    return-void
.end method

.method public final onStopLoading()V
    .locals 0

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->onCancelLoad()Z

    return-void
.end method
