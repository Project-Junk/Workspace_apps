.class final Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onWifiStateChanged("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDetailsPrefCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->n(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 275
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->n(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-ne p1, v1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    :cond_1
    return-void
.end method

.method public final n_()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    return-void
.end method

.method public final o_()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->b(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    return-void
.end method
