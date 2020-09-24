.class public Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppAddDeviceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$a;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->j:I

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    .line 4293
    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->a:Lcom/android/settings/wifi/dpp/b;

    .line 310
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/b;->a(Lcom/android/settings/wifi/dpp/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5190
    iget-object v0, v0, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    return-object v0

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid Wi-Fi network for configuring"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 279
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->e:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 5317
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 5321
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 282
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->b()V

    .line 283
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->d:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f121988

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 269
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->a:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$a;

    invoke-interface {p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$a;->a()V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    .line 95
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public static synthetic lambda$4nGF68yJKZ3CcgfeIJL8WIzU6nQ(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$DYI-ul-HLBi4jEynnjwvV8wd8po(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$JyyQ0nL_3DZbHxetJ3dIctpiPQ0(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$bMhcdExJVOLvNH2oDM2L73vQN8U(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$j5Pb_gReiuD2doHjB7Gpiv2BghA(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$kU1XNPDviJLO5gf3aEhhRYSdfDM(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->f(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x63b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 232
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 337
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 339
    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$a;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->a:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$a;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 204
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_latest_error_code"

    .line 207
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->j:I

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d03a6

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->a:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$a;

    .line 346
    invoke-super {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onDetach()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 302
    iget v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->j:I

    const-string v1, "key_latest_error_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 249
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0806cf

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->b(I)V

    const v0, 0x7f0a032b

    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->e:Landroid/widget/ProgressBar;

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    .line 1297
    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->b:Lcom/android/settings/wifi/dpp/c;

    .line 2220
    iget-object v0, v0, Lcom/android/settings/wifi/dpp/c;->c:Ljava/lang/String;

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f121992    # 1.9420006E38f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->b()V

    const v0, 0x7f0a07aa

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a013f

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->g:Landroid/widget/Button;

    .line 268
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->g:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$j5Pb_gReiuD2doHjB7Gpiv2BghA;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$j5Pb_gReiuD2doHjB7Gpiv2BghA;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0108

    .line 272
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->h:Landroid/widget/Button;

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->h:Landroid/widget/Button;

    const v1, 0x7f120491

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->h:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$DYI-ul-HLBi4jEynnjwvV8wd8po;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$DYI-ul-HLBi4jEynnjwvV8wd8po;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0109

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    .line 277
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    const v0, 0x7f1219a0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 278
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$bMhcdExJVOLvNH2oDM2L73vQN8U;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$bMhcdExJVOLvNH2oDM2L73vQN8U;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_5

    .line 287
    iget p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->j:I

    const p2, 0x7f120855

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v0, :cond_1

    const p1, 0x7f0806cd

    .line 3084
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->b(I)V

    .line 3085
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->b:Landroid/widget/TextView;

    const v0, 0x7f1219a3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3086
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3087
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3088
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->f:Landroid/widget/ImageView;

    const v0, 0x7f080a2c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3089
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->g:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3090
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->h:Landroid/widget/Button;

    const v0, 0x7f121985

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 3091
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->h:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$kU1XNPDviJLO5gf3aEhhRYSdfDM;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$kU1XNPDviJLO5gf3aEhhRYSdfDM;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3092
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 3093
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    new-instance p2, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$4nGF68yJKZ3CcgfeIJL8WIzU6nQ;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$4nGF68yJKZ3CcgfeIJL8WIzU6nQ;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 290
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_2
    const v3, 0x7f121993    # 1.9420008E38f

    packed-switch p1, :pswitch_data_0

    .line 3157
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected Wi-Fi DPP error"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3108
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->c:Landroid/widget/TextView;

    const v4, 0x7f121991    # 1.9420004E38f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 3112
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 3116
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->c:Landroid/widget/TextView;

    const v4, 0x7f121995

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 3120
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :pswitch_4
    return-void

    .line 3141
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->c:Landroid/widget/TextView;

    const v4, 0x7f121997

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 3145
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->c:Landroid/widget/TextView;

    const v4, 0x7f121994    # 1.942001E38f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 3149
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->c:Landroid/widget/TextView;

    const v4, 0x7f121996

    new-array v5, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3160
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->b:Landroid/widget/TextView;

    const v4, 0x7f121990    # 1.9420002E38f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3161
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->f:Landroid/widget/ImageView;

    const v4, 0x7f080a2b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3162
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->g:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v3, -0x3

    if-eq p1, v3, :cond_3

    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    .line 3164
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    const p2, 0x7f12126f    # 1.94163E38f

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 3166
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 3167
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    new-instance p2, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$JyyQ0nL_3DZbHxetJ3dIctpiPQ0;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppAddDeviceFragment$JyyQ0nL_3DZbHxetJ3dIctpiPQ0;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3168
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->h:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 3175
    :goto_3
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3176
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 3153
    :pswitch_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Wi-Fi DPP configurator used a non-PSK/non-SAEnetwork to handshake"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->i:Landroid/widget/Button;

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->d:Landroid/view/View;

    const/16 v0, 0x8

    .line 3376
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const/16 p1, 0x20

    .line 3377
    invoke-virtual {p2, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
