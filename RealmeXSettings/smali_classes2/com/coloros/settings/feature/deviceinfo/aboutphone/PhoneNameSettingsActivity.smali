.class public Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;
.super Landroid/app/Activity;
.source "PhoneNameSettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/color/support/widget/ColorEditText;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/content/IntentFilter;

.field private f:Lcolor/support/v7/app/AlertDialog;

.field private final g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 184
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$1;-><init>(Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->f:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->f:Lcolor/support/v7/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->finish()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;)V
    .locals 1

    const/4 v0, 0x1

    .line 2202
    iput-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->b:Z

    const/4 v0, 0x0

    .line 2203
    iput-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->c:Z

    .line 2204
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2205
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->d:Ljava/lang/String;

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->c:Z

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->finish()V

    const v0, 0x7f010060

    const v1, 0x7f010061

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a(Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->b()V

    return-void
.end method

.method public static synthetic lambda$0ZtcCqirnSXPnvNUxrQhf1J5pbc(Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$HQTTDsy33foUKTrcslmggbU_WYg(Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$_aZ62VirpZxLNl3JPqhkC4YHboY(Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 210
    iget-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->b:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 212
    iput-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->b:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 214
    iput-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->c:Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a(Ljava/lang/String;)V

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a()V

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->requestWindowFeature(I)Z

    .line 1174
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->e:Landroid/content/IntentFilter;

    .line 1175
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->U(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "device_name"

    .line 1177
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_name_edited"

    .line 1178
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->c:Z

    .line 1181
    :cond_0
    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->d:Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->onBackPressed()V

    .line 80
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 143
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->g:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->e:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const v0, 0x7f0d00ae

    .line 2091
    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020003

    .line 2092
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorEditText;

    iput-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    .line 2093
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/text/InputFilter;

    new-instance v4, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;

    const/16 v5, 0x1e

    invoke-direct {v4, v5}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2095
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 2096
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1, p0}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2097
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 2098
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->selectAll()V

    const v1, 0x102000b

    .line 2100
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f120779

    .line 2101
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2103
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120778

    .line 2104
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 2105
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120f1b

    .line 2106
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$PhoneNameSettingsActivity$HQTTDsy33foUKTrcslmggbU_WYg;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$PhoneNameSettingsActivity$HQTTDsy33foUKTrcslmggbU_WYg;-><init>(Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;)V

    invoke-virtual {v0, v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$PhoneNameSettingsActivity$_aZ62VirpZxLNl3JPqhkC4YHboY;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$PhoneNameSettingsActivity$_aZ62VirpZxLNl3JPqhkC4YHboY;-><init>(Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;)V

    .line 2115
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120491

    .line 2118
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$PhoneNameSettingsActivity$0ZtcCqirnSXPnvNUxrQhf1J5pbc;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$PhoneNameSettingsActivity$0ZtcCqirnSXPnvNUxrQhf1J5pbc;-><init>(Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;)V

    invoke-virtual {v0, v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2119
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->f:Lcolor/support/v7/app/AlertDialog;

    .line 2120
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->f:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 2123
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->f:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    .line 2124
    invoke-virtual {v1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    .line 2123
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2127
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->f:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 2128
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->c:Z

    const-string v1, "device_name_edited"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "PhoneNameSettingsActivity"

    const-string p2, "DeviceName is null"

    .line 226
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->f:Lcolor/support/v7/app/AlertDialog;

    if-eqz p2, :cond_3

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const/4 p3, -0x1

    if-nez p2, :cond_2

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->f:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, p3}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 232
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity;->f:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, p3}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method
