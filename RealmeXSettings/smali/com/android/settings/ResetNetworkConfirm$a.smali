.class final Lcom/android/settings/ResetNetworkConfirm$a;
.super Landroid/os/AsyncTask;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/ResetNetworkConfirm;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->a:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    .line 99
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2104
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 2105
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    .line 2107
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 2110
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    .line 2111
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_1

    .line 2113
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 2116
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->a(Landroid/content/Context;)V

    .line 2118
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    const-string v0, "phone"

    .line 2119
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_2

    .line 2121
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$a;->a:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->a(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 2124
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    const-string v1, "netpolicy"

    .line 2125
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    if-eqz v0, :cond_3

    .line 2127
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->a:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings/ResetNetworkConfirm;->a(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object p1

    .line 2128
    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 2131
    :cond_3
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    const-string v0, "bluetooth"

    .line 2132
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_4

    .line 2134
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2136
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 2137
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    const/4 v0, 0x0

    .line 2138
    invoke-static {p1, v0}, Lcom/android/settingslib/d/q;->a(Landroid/content/Context;Lcom/android/settingslib/d/q$a;)Lcom/android/settingslib/d/q;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2154
    iget-object p1, p1, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 2142
    invoke-virtual {p1}, Lcom/android/settingslib/d/h;->d()V

    .line 2147
    :cond_4
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$a;->a:Lcom/android/settings/ResetNetworkConfirm;

    .line 2148
    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->a(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2147
    invoke-static {p1, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p1

    .line 2148
    invoke-virtual {p1}, Lcom/android/ims/e;->A()V

    .line 2149
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->a:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/settings/ResetNetworkConfirm;->a(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    .line 2150
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->a:Lcom/android/settings/ResetNetworkConfirm;

    iget-boolean p1, p1, Lcom/android/settings/ResetNetworkConfirm;->b:Z

    if-eqz p1, :cond_5

    .line 2151
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$a;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2153
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 93
    check-cast p1, Ljava/lang/Boolean;

    .line 1159
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$a;->a:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->b(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1160
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1161
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    const v0, 0x7f12123f

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1162
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1164
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->a:Lcom/android/settings/ResetNetworkConfirm;

    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12123c

    .line 1165
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12123b

    .line 1166
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 1167
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1168
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1164
    invoke-static {p1, v0}, Lcom/android/settings/ResetNetworkConfirm;->a(Lcom/android/settings/ResetNetworkConfirm;Lcolor/support/v7/app/AlertDialog;)Lcolor/support/v7/app/AlertDialog;

    return-void
.end method
