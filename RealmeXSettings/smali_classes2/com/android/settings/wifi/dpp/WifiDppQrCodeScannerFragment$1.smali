.class final Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;
.super Landroid/os/Handler;
.source "WifiDppQrCodeScannerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v3, 0x2

    const/16 v4, 0x20

    const/4 v5, 0x0

    if-eq v0, v3, :cond_11

    const/4 v3, 0x3

    if-eq v0, v3, :cond_e

    if-eq v0, v1, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    .line 166
    invoke-virtual {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 167
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/wifi/dpp/b;

    .line 1244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/b;->a(Lcom/android/settings/wifi/dpp/b;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 1250
    :cond_1
    iget-object v3, p1, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p1, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    const-string v4, "nopass"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    .line 1265
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/b;->a()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 1266
    iget-object v4, p1, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    const-string v6, "WEP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1267
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 1268
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 1269
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 1272
    iget-object v4, p1, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0xa

    if-eq v4, v6, :cond_3

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_3

    const/16 v6, 0x3a

    if-ne v4, v6, :cond_4

    .line 1273
    :cond_3
    iget-object v4, p1, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    const-string v6, "[0-9A-Fa-f]*"

    .line 1274
    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1275
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    aput-object p1, v4, v5

    goto :goto_0

    .line 1277
    :cond_4
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    goto :goto_0

    .line 1279
    :cond_5
    iget-object v4, p1, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    const-string v6, "WPA"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1280
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 1282
    iget-object v4, p1, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    const-string v6, "[0-9A-Fa-f]{64}"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1283
    iget-object p1, p1, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    iput-object p1, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 1285
    :cond_6
    iget-object p1, p1, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 1287
    :cond_7
    iget-object v4, p1, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    const-string v6, "SAE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1288
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    .line 1289
    iput-boolean v2, v3, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 1290
    iget-object v4, p1, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    .line 1291
    iget-object p1, p1, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1298
    :cond_8
    :goto_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const-string p1, "WifiNetworkConfig"

    const-string v3, "Unsupported security"

    .line 1294
    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1253
    :cond_a
    :goto_1
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/b;->a()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 1254
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 1255
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1258
    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/b;->a()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 1259
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 1260
    iput-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    .line 1261
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v5

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 176
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_b

    .line 180
    invoke-virtual {v0, v4, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 181
    iget-object v6, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v6, v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->a(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 183
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v1, v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->b(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 184
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-virtual {v0, v4, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    move v1, v2

    goto :goto_3

    :cond_c
    if-nez v1, :cond_d

    .line 190
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->h(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    return-void

    .line 195
    :cond_d
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    .line 196
    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->i(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/d;

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-virtual {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v1

    const/16 v2, 0x6af

    const/16 v3, 0x63c

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    .line 195
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 202
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->g(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    return-void

    .line 145
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$a;

    if-nez v0, :cond_f

    return-void

    .line 149
    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$a;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/wifi/dpp/c;

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$a;->a(Lcom/android/settings/wifi/dpp/c;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->e(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->b(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f()V

    .line 154
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-object p1, p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 159
    :cond_10
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->g(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    return-void

    .line 124
    :cond_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->a(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v3}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->a(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->a(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->removeMessages(I)V

    const-wide/16 v3, 0x2710

    .line 134
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_12

    .line 138
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->b(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->c(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/qrcode/QrDecorateView;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->setFocused(Z)V

    .line 140
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->d(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    :cond_12
    return-void

    .line 120
    :cond_13
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    invoke-static {p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->a(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
