.class final Lcom/android/settings/print/PrintServiceSettingsFragment$b$1;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/print/PrintServiceSettingsFragment$b;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment$b;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b$1;->a:Lcom/android/settings/print/PrintServiceSettingsFragment$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrintersChanged()V
    .locals 3

    .line 730
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$b$1;->a:Lcom/android/settings/print/PrintServiceSettingsFragment$b;

    new-instance v1, Ljava/util/ArrayList;

    .line 731
    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->a(Lcom/android/settings/print/PrintServiceSettingsFragment$b;)Landroid/print/PrinterDiscoverySession;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 730
    invoke-virtual {v0, v1}, Lcom/android/settings/print/PrintServiceSettingsFragment$b;->a(Ljava/util/List;)V

    return-void
.end method
