.class final Lcom/android/settings/vpn2/c;
.super Lcolor/support/v7/app/AlertDialog;
.source "ConfigDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private A:Landroid/widget/CheckBox;

.field private B:Landroid/widget/TextView;

.field a:Z

.field b:Landroid/widget/CheckBox;

.field private final c:Landroid/security/KeyStore;

.field private final d:Landroid/content/DialogInterface$OnClickListener;

.field private final e:Lcom/android/internal/net/VpnProfile;

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Spinner;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/Spinner;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/CheckBox;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/Spinner;

.field private x:Landroid/widget/Spinner;

.field private y:Landroid/widget/Spinner;

.field private z:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcolor/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/c;->c:Landroid/security/KeyStore;

    .line 91
    iput-object p2, p0, Lcom/android/settings/vpn2/c;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    iput-object p3, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    .line 93
    iput-boolean p4, p0, Lcom/android/settings/vpn2/c;->a:Z

    .line 94
    iput-boolean p5, p0, Lcom/android/settings/vpn2/c;->f:Z

    return-void
.end method

.method private a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v1, 0x7f0a0795

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 447
    invoke-virtual {p0}, Lcom/android/settings/vpn2/c;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p3, :cond_0

    const-string p3, ""

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 449
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->c:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 451
    array-length v3, p2

    if-nez v3, :cond_1

    goto :goto_1

    .line 454
    :cond_1
    array-length v3, p2

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 455
    aput-object p3, v3, v1

    .line 456
    array-length p3, p2

    invoke-static {p2, v1, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 452
    :cond_2
    :goto_1
    new-array v3, v2, [Ljava/lang/String;

    aput-object p3, v3, v1

    .line 460
    :goto_2
    new-instance p2, Landroid/widget/ArrayAdapter;

    const p3, 0x1090008

    invoke-direct {p2, v0, p3, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p3, 0x1090009

    .line 462
    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 463
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 465
    :goto_3
    array-length p2, v3

    if-ge v2, p2, :cond_4

    .line 466
    aget-object p2, v3, v2

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 467
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v1, " "

    .line 421
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_3

    aget-object v4, p0, v2

    .line 422
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    const/16 v6, 0x20

    if-eqz p1, :cond_0

    const-string v7, "/"

    .line 428
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 429
    aget-object v7, v4, v0

    .line 430
    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object v9, v7

    move v7, v4

    move-object v4, v9

    goto :goto_1

    :cond_0
    move v7, v6

    .line 432
    :goto_1
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    const/4 v8, 0x3

    .line 433
    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v8

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    aget-byte v5, v4, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v3, v5

    .line 435
    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    if-ltz v7, :cond_1

    if-gt v7, v6, :cond_1

    if-ge v7, v6, :cond_2

    shl-int/2addr v3, v7

    if-eqz v3, :cond_2

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :catch_0
    return v0
.end method

.method private a(Z)Z
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/c;->a()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 391
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/vpn2/c;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1

    .line 393
    :cond_2
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/vpn2/c;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/vpn2/c;->n:Landroid/widget/TextView;

    .line 394
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/settings/vpn2/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/settings/vpn2/c;->o:Landroid/widget/TextView;

    .line 395
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/vpn2/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 399
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/vpn2/c;->e()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 403
    :cond_4
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->i:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-eqz p1, :cond_9

    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    const/4 v2, 0x5

    if-eq p1, v2, :cond_9

    return v1

    .line 414
    :cond_5
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->w:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    return v1

    .line 410
    :cond_7
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->v:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    return v1

    :cond_9
    return v0

    :cond_a
    :goto_0
    return v1
.end method

.method private b()V
    .locals 4

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/vpn2/c;->a()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->B:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 308
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 309
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isTypeValidForLockdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->B:Landroid/widget/TextView;

    const v1, 0x7f1218a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isServerAddressNumeric()Z

    move-result v1

    if-nez v1, :cond_2

    .line 312
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->B:Landroid/widget/TextView;

    const v1, 0x7f1218a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->hasDns()Z

    move-result v1

    if-nez v1, :cond_3

    .line 314
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->B:Landroid/widget/TextView;

    const v1, 0x7f12189e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 315
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->areDnsAddressesNumeric()Z

    move-result v0

    if-nez v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->B:Landroid/widget/TextView;

    const v1, 0x7f12189d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 318
    :cond_4
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->B:Landroid/widget/TextView;

    const v1, 0x7f12189f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    :goto_1
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 325
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    if-eqz v0, :cond_6

    .line 326
    :cond_5
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->p:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 327
    invoke-direct {p0, v3}, Lcom/android/settings/vpn2/c;->a(I)V

    .line 331
    :cond_6
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 332
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->z:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->z:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2

    .line 335
    :cond_7
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->z:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->z:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_2
    const/4 v0, -0x1

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/c;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/c;->a:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/c;->a(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private b(I)V
    .locals 6

    .line 355
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->s:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0365

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v3, 0x7f0a0343

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v4, 0x7f0a0346

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v5, 0x7f0a0342

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 378
    :cond_1
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_2
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 368
    :cond_3
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :cond_4
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 364
    :cond_5
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->s:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v1, 0x7f0a049c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->A:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method private d()Z
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->p:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .locals 4

    .line 540
    invoke-direct {p0}, Lcom/android/settings/vpn2/c;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 545
    iget-object v2, p0, Lcom/android/settings/vpn2/c;->r:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 546
    invoke-static {v0, v2, v3}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a()Lcom/android/internal/net/VpnProfile;
    .locals 6

    .line 483
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 485
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->i:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 486
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 487
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 488
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 489
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 490
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->n:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 491
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 492
    invoke-direct {p0}, Lcom/android/settings/vpn2/c;->d()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 494
    iget-object v4, p0, Lcom/android/settings/vpn2/c;->r:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 497
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 498
    :goto_0
    new-instance v5, Landroid/net/ProxyInfo;

    invoke-direct {v5, v1, v4, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v5, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    goto :goto_1

    .line 500
    :cond_1
    iput-object v2, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 503
    :goto_1
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    if-eq v1, v2, :cond_6

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_7

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    const/4 v4, 0x5

    if-eq v1, v4, :cond_4

    goto :goto_2

    .line 517
    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->t:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 520
    :cond_3
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->w:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_4

    .line 521
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->w:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 525
    :cond_4
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->x:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_5

    .line 526
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->x:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 528
    :cond_5
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->y:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_9

    .line 529
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->y:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_2

    .line 509
    :cond_6
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->t:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 512
    :cond_7
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->u:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 513
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->v:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_2

    .line 505
    :cond_8
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->s:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 534
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v3

    goto :goto_4

    :cond_b
    :goto_3
    move v1, v2

    .line 535
    :goto_4
    iget-object v4, p0, Lcom/android/settings/vpn2/c;->z:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/settings/vpn2/c;->a:Z

    if-eqz v4, :cond_c

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :cond_d
    :goto_5
    iput-boolean v2, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    return-object v0
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 246
    invoke-direct {p0}, Lcom/android/settings/vpn2/c;->b()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 280
    iget-object p2, p0, Lcom/android/settings/vpn2/c;->b:Landroid/widget/CheckBox;

    if-ne p1, p2, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/android/settings/vpn2/c;->b()V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->A:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/android/settings/vpn2/c;->c()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/vpn2/c;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0395

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/c;->setView(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/vpn2/c;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0442

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->h:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a074d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->i:Landroid/widget/Spinner;

    .line 107
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a05e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->j:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a077a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->k:Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a04b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->l:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a05c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->m:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0215

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->n:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a058b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->o:Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0798

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->p:Landroid/widget/Spinner;

    .line 114
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0796

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->q:Landroid/widget/TextView;

    .line 115
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0797

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->r:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0404

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->s:Landroid/widget/CheckBox;

    .line 117
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0366

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->t:Landroid/widget/TextView;

    .line 118
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0341

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->u:Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0344

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->v:Landroid/widget/TextView;

    .line 120
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0347

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->w:Landroid/widget/Spinner;

    .line 121
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0340

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->x:Landroid/widget/Spinner;

    .line 122
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0345

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->y:Landroid/widget/Spinner;

    .line 123
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a05a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->z:Landroid/widget/CheckBox;

    .line 124
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0603

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->A:Landroid/widget/CheckBox;

    .line 125
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->b:Landroid/widget/CheckBox;

    .line 126
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v2, 0x7f0a0081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/c;->B:Landroid/widget/TextView;

    .line 129
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->i:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->j:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->o:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    .line 142
    iget-object v2, p0, Lcom/android/settings/vpn2/c;->r:Landroid/widget/TextView;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->s:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->t:Landroid/widget/TextView;

    const v2, 0x10301b1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->u:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->v:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->w:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "USRPKEY_"

    invoke-direct {p0, v1, v5, v4, v3}, Lcom/android/settings/vpn2/c;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->x:Landroid/widget/Spinner;

    const v3, 0x7f1218c4

    iget-object v5, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    const-string v6, "CACERT_"

    invoke-direct {p0, v1, v6, v3, v5}, Lcom/android/settings/vpn2/c;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->y:Landroid/widget/Spinner;

    const v3, 0x7f1218c6

    iget-object v5, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    const-string v6, "USRCERT_"

    invoke-direct {p0, v1, v6, v3, v5}, Lcom/android/settings/vpn2/c;->a(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->z:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->b:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    const-string v1, "persist.radio.imsregrequired"

    .line 159
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->i:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->j:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->k:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->l:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->n:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->o:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->p:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 172
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->q:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->r:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->v:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->w:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->A:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 180
    iget-boolean v1, p0, Lcom/android/settings/vpn2/c;->a:Z

    const/4 v3, 0x1

    if-nez v1, :cond_5

    invoke-direct {p0, v3}, Lcom/android/settings/vpn2/c;->a(Z)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/vpn2/c;->a:Z

    .line 182
    iget-boolean v1, p0, Lcom/android/settings/vpn2/c;->a:Z

    const/4 v5, -0x1

    if-eqz v1, :cond_9

    const v1, 0x7f1218b1

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/c;->setTitle(I)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->g:Landroid/view/View;

    const v3, 0x7f0a0239

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/c;->b(I)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->z:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 197
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    if-eqz v1, :cond_7

    .line 198
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/vpn2/c;->c()V

    .line 202
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/vpn2/c;->f:Z

    if-eqz v1, :cond_8

    const/4 v1, -0x3

    const v2, 0x7f1218b3

    .line 204
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn2/c;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 203
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/vpn2/c;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_8
    const v1, 0x7f1218d3

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 208
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/settings/vpn2/c;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    :cond_9
    const v1, 0x7f1218a9

    .line 211
    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/vpn2/c;->e:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/c;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f1218a8

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 214
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/settings/vpn2/c;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_3
    const/4 v1, -0x2

    const v2, 0x7f1218a5

    .line 220
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/c;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 219
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/vpn2/c;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 223
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 226
    invoke-direct {p0}, Lcom/android/settings/vpn2/c;->b()V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/vpn2/c;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 266
    iget-object p2, p0, Lcom/android/settings/vpn2/c;->i:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_0

    .line 267
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/c;->b(I)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p2, p0, Lcom/android/settings/vpn2/c;->p:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_1

    .line 269
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/c;->a(I)V

    .line 271
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/c;->b()V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Lcolor/support/v7/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 239
    iget-object p1, p0, Lcom/android/settings/vpn2/c;->A:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/android/settings/vpn2/c;->c()V

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
