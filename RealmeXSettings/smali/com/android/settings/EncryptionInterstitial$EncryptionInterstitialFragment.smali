.class public Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "EncryptionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionInterstitialFragment"
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Intent;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    iget-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3211
    iput-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a:Z

    .line 195
    iget p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->c:I

    invoke-static {p1}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->a(I)Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;

    move-result-object p1

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "AccessibilityWarningDialog"

    .line 196
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 4211
    iput-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a:Z

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Z)V
    .locals 0

    .line 6211
    iput-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a:Z

    return-void
.end method

.method private b()V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void

    .line 220
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 5211
    iput-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a:Z

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a()V

    return-void
.end method

.method public static synthetic lambda$9NkoOUor2-MKms2ahypSEhXNh90(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$f7pgrLniZ4ZF_17wVHyJA8WKMD0(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 174
    iget-boolean v1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a:Z

    const-string v2, "extra_require_password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->b:Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 177
    :cond_0
    invoke-static {}, Lcom/android/settings/EncryptionInterstitial;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no unlock intent to start"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->b()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 184
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->b()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0170

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 109
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "for_fingerprint"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "for_face"

    .line 114
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_password_quality"

    .line 116
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->c:I

    const-string v0, "extra_unlock_method_intent"

    .line 117
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->b:Landroid/content/Intent;

    .line 119
    iget v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->c:I

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_5

    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_2

    const/high16 v2, 0x30000

    if-eq v0, v2, :cond_2

    if-eqz p2, :cond_0

    const p2, 0x7f1208e2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const p2, 0x7f1208e1

    goto :goto_0

    :cond_1
    const p2, 0x7f1208e0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const p2, 0x7f1208e8

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const p2, 0x7f1208e7

    goto :goto_0

    :cond_4
    const p2, 0x7f1208e6

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    const p2, 0x7f1208e5

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    const p2, 0x7f1208e4

    goto :goto_0

    :cond_7
    const p2, 0x7f1208e3

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a067a

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "extra_require_password"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 1211
    iput-boolean p2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a:Z

    .line 149
    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 152
    const-class p2, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/a;

    .line 153
    new-instance p2, Lcom/google/android/setupcompat/template/FooterButton$a;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1208e9

    .line 155
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object p2

    new-instance v0, Lcom/android/settings/-$$Lambda$EncryptionInterstitial$EncryptionInterstitialFragment$f7pgrLniZ4ZF_17wVHyJA8WKMD0;

    invoke-direct {v0, p0}, Lcom/android/settings/-$$Lambda$EncryptionInterstitial$EncryptionInterstitialFragment$f7pgrLniZ4ZF_17wVHyJA8WKMD0;-><init>(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;)V

    .line 1347
    iput-object v0, p2, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v0, 0x7

    .line 1353
    iput v0, p2, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v0, 0x7f13027f

    .line 1359
    iput v0, p2, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 159
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p2

    .line 153
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/a;->b(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 162
    new-instance p2, Lcom/google/android/setupcompat/template/FooterButton$a;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1208ea

    .line 164
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object p2

    new-instance v0, Lcom/android/settings/-$$Lambda$EncryptionInterstitial$EncryptionInterstitialFragment$9NkoOUor2-MKms2ahypSEhXNh90;

    invoke-direct {v0, p0}, Lcom/android/settings/-$$Lambda$EncryptionInterstitial$EncryptionInterstitialFragment$9NkoOUor2-MKms2ahypSEhXNh90;-><init>(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;)V

    .line 2347
    iput-object v0, p2, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v0, 0x5

    .line 2353
    iput v0, p2, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v0, 0x7f13027e

    .line 2359
    iput v0, p2, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 168
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method
