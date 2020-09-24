.class public Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "NetworkRequestDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;,
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;

.field private g:Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;

.field private h:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

.field private j:Z

.field private k:Z

.field private final l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a:Z

    .line 318
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->l:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/android/settings/wifi/NetworkRequestDialogFragment;
    .locals 1

    .line 96
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;-><init>()V

    return-object v0
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic a(Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 150
    iput-boolean p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a:Z

    const/4 p2, 0x0

    .line 151
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Ljava/util/List;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->b()V

    const/16 p2, 0x8

    .line 153
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private synthetic a(Lcolor/support/v7/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p2, -0x3

    .line 147
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const/16 v0, 0x8

    .line 148
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$YfcmuTbXtmthdKMUN5p1gmgc9wE;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$YfcmuTbXtmthdKMUN5p1gmgc9wE;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/widget/Button;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-boolean p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->j:Z

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    .line 158
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    .line 159
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$k2uYdtxGyj9jxRC0Ud-blQEpUag;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$k2uYdtxGyj9jxRC0Ud-blQEpUag;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lcolor/support/v7/app/AlertDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 165
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcolor/support/v7/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic a(Lcolor/support/v7/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->f:Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 445
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->a(Ljava/util/List;)V

    .line 449
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->c()Ljava/util/List;

    move-result-object p1

    .line 450
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 451
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->f:Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;

    invoke-virtual {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 273
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/app/AlertDialog;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    .line 282
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V
    .locals 1

    .line 8260
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Lcolor/support/v7/app/AlertDialog;

    if-eqz p0, :cond_0

    const/4 v0, -0x3

    .line 8265
    invoke-virtual {p0, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 8267
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private c()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/a;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->b:Ljava/util/List;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V
    .locals 1

    .line 8289
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Lcolor/support/v7/app/AlertDialog;

    if-eqz p0, :cond_0

    const v0, 0x7f0a044f

    .line 8294
    invoke-virtual {p0, v0}, Lcolor/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 8296
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->k:Z

    return p0
.end method

.method public static synthetic lambda$JFUzPcN845xbik-r-lTRWPL40Cs(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$RY8N8eS_oHdfijuj2F62hC2ck74(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lcolor/support/v7/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Lcolor/support/v7/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$YfcmuTbXtmthdKMUN5p1gmgc9wE(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$k2uYdtxGyj9jxRC0Ud-blQEpUag(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lcolor/support/v7/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Lcolor/support/v7/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$yyOxu-4Umlzlrg2QBO-A0B8KU9U(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lcolor/support/v7/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Lcolor/support/v7/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;)V
    .locals 3

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->dismiss()V

    .line 342
    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->a()Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    move-result-object v0

    .line 343
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DIALOG_ERROR_TYPE"

    .line 344
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 345
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v1, Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    .line 347
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-virtual {v0, p1, v1}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method final b()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 7191
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->g:Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x55d

    return v0
.end method

.method public onAbort()V
    .locals 1

    .line 415
    sget-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;->b:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$a;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 223
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->h:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz p1, :cond_1

    .line 229
    invoke-interface {p1}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->reject()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 196
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->c()Ljava/util/List;

    move-result-object p1

    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->h:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-nez v0, :cond_1

    return-void

    .line 204
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_10

    .line 205
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/a;

    .line 1764
    iget-object p2, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_f

    if-eqz p1, :cond_e

    .line 2141
    new-instance p2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez p1, :cond_8

    .line 2145
    iget-object p1, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settingslib/wifi/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2240
    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "WEP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    .line 2242
    :cond_2
    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "SAE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    .line 2244
    :cond_3
    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "PSK"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v5

    goto :goto_1

    .line 2246
    :cond_4
    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "EAP_SUITE_B_192"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_1

    .line 2248
    :cond_5
    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "EAP"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_1

    .line 2250
    :cond_6
    iget-object p1, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "OWE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    goto :goto_1

    :cond_7
    move p1, v0

    goto :goto_1

    .line 2148
    :cond_8
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/a;->p()Z

    move-result v7

    if-nez v7, :cond_9

    .line 3095
    iget-object v7, p1, Lcom/android/settingslib/wifi/a;->d:Ljava/lang/String;

    .line 2149
    invoke-static {v7}, Lcom/android/settingslib/wifi/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 3764
    :cond_9
    iget-object v7, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 2152
    iget v7, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v7, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 4764
    iget-object v7, p1, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    .line 2153
    iget-boolean v7, v7, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v7, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 5014
    :goto_0
    iget p1, p1, Lcom/android/settingslib/wifi/a;->e:I

    :goto_1
    const/16 v7, 0xa

    const/16 v8, 0x22

    const-string v9, "\""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 2209
    :pswitch_0
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 2210
    iput-boolean v1, p2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 2211
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 2212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 2217
    :pswitch_1
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->set(I)V

    .line 2218
    iput-boolean v1, p2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    goto/16 :goto_2

    .line 2192
    :pswitch_2
    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v5}, Ljava/util/BitSet;->set(I)V

    .line 2193
    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v4}, Ljava/util/BitSet;->set(I)V

    if-ne p1, v2, :cond_a

    .line 2195
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v7}, Ljava/util/BitSet;->set(I)V

    .line 2196
    iput-boolean v1, p2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 2197
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v4}, Ljava/util/BitSet;->set(I)V

    .line 2198
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 2199
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v5}, Ljava/util/BitSet;->set(I)V

    .line 2204
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 2205
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2180
    :pswitch_3
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 2181
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "[0-9A-Fa-f]{64}"

    .line 2182
    invoke-virtual {v6, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2183
    iput-object v6, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    .line 2185
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    .line 2164
    :pswitch_4
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 2165
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 2166
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 2167
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 2168
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p1, v7, :cond_c

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_c

    const/16 v2, 0x3a

    if-ne p1, v2, :cond_d

    :cond_c
    const-string p1, "[0-9A-Fa-f]*"

    .line 2171
    invoke-virtual {v6, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 2172
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v6, p1, v0

    goto :goto_2

    .line 2174
    :cond_d
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    goto :goto_2

    .line 2160
    :pswitch_5
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 2137
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one of AccessPoint and ScanResult input is required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_2
    if-eqz p2, :cond_10

    .line 213
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->h:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    invoke-interface {p1, p2}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V

    .line 215
    iput-boolean v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->k:Z

    .line 216
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Z)V

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d01e5

    .line 106
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0450

    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1172
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "com.android.settings.wifi.extra.APP_NAME"

    .line 1175
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    const v4, 0x7f120e1b

    const/4 v5, 0x1

    .line 1178
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "com.android.settings.wifi.extra.REQUEST_IS_FOR_SINGLE_NETWORK"

    .line 113
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->j:Z

    :cond_1
    const v2, 0x7f0a044f

    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 118
    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    new-instance v2, Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;

    .line 122
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->c()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->g:Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;

    .line 124
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->g:Lcom/android/settings/wifi/NetworkRequestDialogFragment$a;

    .line 126
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    new-instance v2, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$JFUzPcN845xbik-r-lTRWPL40Cs;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$JFUzPcN845xbik-r-lTRWPL40Cs;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    .line 127
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120e1a

    .line 129
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->j:Z

    if-eqz v0, :cond_2

    const v0, 0x7f121953

    .line 132
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 136
    :cond_2
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$yyOxu-4Umlzlrg2QBO-A0B8KU9U;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$yyOxu-4Umlzlrg2QBO-A0B8KU9U;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lcolor/support/v7/app/AlertDialog;)V

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->setCancelable(Z)V

    .line 145
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$RY8N8eS_oHdfijuj2F62hC2ck74;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$RY8N8eS_oHdfijuj2F62hC2ck74;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Lcolor/support/v7/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 251
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDestroy()V

    .line 253
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->f:Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;

    if-eqz v0, :cond_1

    .line 6562
    iget-object v1, v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->a:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v1, :cond_0

    .line 6563
    iget-object v0, v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->f:Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;

    :cond_1
    return-void
.end method

.method public onMatch(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 427
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Ljava/util/List;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->b()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 235
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onPause()V

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->f:Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;

    if-eqz v0, :cond_1

    .line 5574
    iget-object v1, v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->a:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v1, :cond_1

    .line 5575
    iget-object v0, v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 302
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->l:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/WifiManager;->registerNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;Landroid/os/Handler;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->f:Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;

    if-nez v0, :cond_1

    .line 313
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->e()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->f:Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->f:Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;

    .line 6568
    iget-object v1, v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->a:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v1, :cond_2

    .line 6569
    iget-object v0, v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$b;->a:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    :cond_2
    return-void
.end method

.method public onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->h:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    return-void
.end method

.method public onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    const/4 p1, 0x0

    .line 474
    iput-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->k:Z

    const/4 p1, 0x1

    .line 475
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->a(Z)V

    return-void
.end method

.method public onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f120e18

    const/4 v1, 0x0

    .line 465
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 467
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
