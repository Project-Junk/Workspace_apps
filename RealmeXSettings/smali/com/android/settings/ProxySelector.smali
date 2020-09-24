.class public Lcom/android/settings/ProxySelector;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ProxySelector.java"

# interfaces
.implements Lcom/android/settings/e;


# instance fields
.field a:Landroid/widget/EditText;

.field b:Landroid/widget/EditText;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/Button;

.field e:Landroid/widget/Button;

.field f:Landroid/widget/Button;

.field g:Landroid/view/View$OnClickListener;

.field h:Landroid/view/View$OnClickListener;

.field i:Landroid/view/View$OnClickListener;

.field j:Landroid/view/View$OnFocusChangeListener;

.field private k:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 246
    new-instance v0, Lcom/android/settings/ProxySelector$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$1;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->g:Landroid/view/View$OnClickListener;

    .line 254
    new-instance v0, Lcom/android/settings/ProxySelector$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$2;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->h:Landroid/view/View$OnClickListener;

    .line 262
    new-instance v0, Lcom/android/settings/ProxySelector$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$3;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->i:Landroid/view/View$OnClickListener;

    .line 269
    new-instance v0, Lcom/android/settings/ProxySelector$4;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$4;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->j:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 188
    invoke-static {p0, p1, p2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const-string p0, "ProxySelector"

    const-string p1, "Unknown proxy settings error"

    .line 203
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const p0, 0x7f121147

    return p0

    :cond_1
    const p0, 0x7f121149

    return p0

    :cond_2
    const p0, 0x7f121146

    return p0

    :cond_3
    const p0, 0x7f121148

    return p0

    :cond_4
    const p0, 0x7f121145

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 150
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v5

    .line 154
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move v5, v2

    move-object v1, v3

    move-object v4, v1

    :goto_0
    if-nez v4, :cond_1

    move-object v4, v3

    .line 161
    :cond_1
    iget-object v6, p0, Lcom/android/settings/ProxySelector;->a:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-ne v5, v2, :cond_2

    goto :goto_1

    .line 163
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    :goto_1
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "button-label"

    .line 170
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 172
    iget-object v3, p0, Lcom/android/settings/ProxySelector;->d:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const-string/jumbo v2, "title"

    .line 175
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 177
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    const v1, 0x7f121153

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method final b()Z
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v0, v1, v2}, Lcom/android/settings/ProxySelector;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 2113
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->k:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "ProxySelector"

    const-string v1, "Old dialog fragment not null!"

    .line 2114
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_0
    invoke-static {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->a(Lcom/android/settings/e;I)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->k:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 2117
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->k:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v4

    .line 224
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 226
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v4

    .line 232
    :cond_2
    :goto_0
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, v0, v4, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 242
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/16 p1, 0x23e

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x52

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 78
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/android/settings/ProxySelector;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {p1, v1, v2}, Lcom/android/settings/ProxySelector;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121143

    .line 99
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f121144

    .line 100
    invoke-virtual {v1, v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0294

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ProxySelector;->l:Landroid/view/View;

    .line 66
    iget-object p1, p0, Lcom/android/settings/ProxySelector;->l:Landroid/view/View;

    const p2, 0x7f0a0308

    .line 1121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/settings/ProxySelector;->a:Landroid/widget/EditText;

    .line 1122
    iget-object p2, p0, Lcom/android/settings/ProxySelector;->a:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/android/settings/ProxySelector;->j:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p2, 0x7f0a04ec

    .line 1124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/settings/ProxySelector;->b:Landroid/widget/EditText;

    .line 1125
    iget-object p2, p0, Lcom/android/settings/ProxySelector;->b:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/android/settings/ProxySelector;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1126
    iget-object p2, p0, Lcom/android/settings/ProxySelector;->b:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/android/settings/ProxySelector;->j:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p2, 0x7f0a0278

    .line 1128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/settings/ProxySelector;->c:Landroid/widget/EditText;

    .line 1129
    iget-object p2, p0, Lcom/android/settings/ProxySelector;->c:Landroid/widget/EditText;

    iget-object p3, p0, Lcom/android/settings/ProxySelector;->j:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p2, 0x7f0a0038

    .line 1131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/ProxySelector;->d:Landroid/widget/Button;

    .line 1132
    iget-object p2, p0, Lcom/android/settings/ProxySelector;->d:Landroid/widget/Button;

    iget-object p3, p0, Lcom/android/settings/ProxySelector;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0149

    .line 1134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/ProxySelector;->e:Landroid/widget/Button;

    .line 1135
    iget-object p2, p0, Lcom/android/settings/ProxySelector;->e:Landroid/widget/Button;

    iget-object p3, p0, Lcom/android/settings/ProxySelector;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a01d6

    .line 1137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/ProxySelector;->f:Landroid/widget/Button;

    .line 1138
    iget-object p1, p0, Lcom/android/settings/ProxySelector;->f:Landroid/widget/Button;

    iget-object p2, p0, Lcom/android/settings/ProxySelector;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->a()V

    .line 69
    iget-object p1, p0, Lcom/android/settings/ProxySelector;->l:Landroid/view/View;

    return-object p1
.end method
