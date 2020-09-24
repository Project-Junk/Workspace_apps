.class public Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppQrCodeGeneratorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$a;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    return-void
.end method

.method private a()Lcom/android/settings/wifi/dpp/b;
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/b$a;

    .line 164
    invoke-interface {v0}, Lcom/android/settings/wifi/dpp/b$a;->b()Lcom/android/settings/wifi/dpp/b;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/b;->a(Lcom/android/settings/wifi/dpp/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid Wi-Fi network for configuring"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x63b

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->a()Lcom/android/settings/wifi/dpp/b;

    move-result-object p1

    .line 1206
    iget-boolean p1, p1, Lcom/android/settings/wifi/dpp/b;->f:Z

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12199f

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1219a0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    :goto_0
    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->setHasOptionsMenu(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 86
    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$a;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$a;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 v0, 0x1

    .line 98
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 100
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 103
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d03aa

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment$a;

    .line 93
    invoke-super {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onDetach()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0536

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->e:Landroid/widget/ImageView;

    const p2, 0x7f080803

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->b(I)V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->a()Lcom/android/settings/wifi/dpp/b;

    move-result-object p2

    .line 2206
    iget-boolean v0, p2, Lcom/android/settings/wifi/dpp/b;->f:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f12199f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->b:Landroid/widget/TextView;

    const v1, 0x7f1219a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3194
    :goto_0
    iget-object v0, p2, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    const v1, 0x7f0a04b7

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->f:Landroid/widget/TextView;

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->c:Landroid/widget/TextView;

    const v0, 0x7f12199a

    new-array v2, v2, [Ljava/lang/Object;

    .line 4190
    iget-object v3, p2, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 131
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->f:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->c:Landroid/widget/TextView;

    const v3, 0x7f12199e

    new-array v4, v2, [Ljava/lang/Object;

    .line 5190
    iget-object v5, p2, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 137
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5206
    iget-boolean p1, p2, Lcom/android/settings/wifi/dpp/b;->f:Z

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->f:Landroid/widget/TextView;

    const v3, 0x7f121998

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->f:Landroid/widget/TextView;

    const v3, 0x7f1219a2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6167
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WIFI:S:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6168
    iget-object v0, p2, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    .line 6169
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";T:"

    .line 6170
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6171
    iget-object v0, p2, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    .line 6172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    iget-object v0, p2, Lcom/android/settings/wifi/dpp/b;->a:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";P:"

    .line 6173
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6174
    iget-object v0, p2, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    .line 6175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p2, Lcom/android/settings/wifi/dpp/b;->c:Ljava/lang/String;

    .line 6176
    invoke-static {v0}, Lcom/android/settings/wifi/dpp/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6175
    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";H:"

    .line 6177
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6178
    iget-boolean p2, p2, Lcom/android/settings/wifi/dpp/b;->d:Z

    .line 6179
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ";;"

    .line 6180
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->g:Ljava/lang/String;

    .line 7153
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070591

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 7155
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->g:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/android/settings/wifi/qrcode/b;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 7156
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeGeneratorFragment;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/c/t; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7158
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error generatting QR code bitmap "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiDppQrCodeGeneratorFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
