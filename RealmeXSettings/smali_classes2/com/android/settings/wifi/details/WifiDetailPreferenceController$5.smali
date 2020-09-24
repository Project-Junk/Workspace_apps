.class final Lcom/android/settings/wifi/details/WifiDetailPreferenceController$5;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
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

    .line 943
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$5;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .locals 2

    .line 950
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$5;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f1219b1

    const/4 v1, 0x0

    .line 952
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 954
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final onSuccess()V
    .locals 0

    return-void
.end method
