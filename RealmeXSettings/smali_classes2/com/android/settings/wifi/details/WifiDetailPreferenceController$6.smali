.class final Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;
.super Landroid/os/CountDownTimer;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;JJ)V
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .line 1131
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object v0

    const-string v1, "WifiDetailsPrefCtrl"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->o(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Timeout for state:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->n(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->n(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    return-void

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->n(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1139
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->p(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    .line 1140
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->q(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1141
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    return-void

    .line 1143
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$6;->a:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->a(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string v0, "Ignore timeout since activity not exist!"

    .line 1132
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
