.class public Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RedactionInterstitial.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedactionInterstitialFragment"
.end annotation


# instance fields
.field private a:Landroid/widget/RadioGroup;

.field private b:Lcom/android/settings/RestrictedRadioButton;

.field private c:Lcom/android/settings/RestrictedRadioButton;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->a(Landroid/content/Context;Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/RedactionInterstitial;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->setResult(ILandroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->finish()V

    :cond_0
    return-void
.end method

.method private a(Lcom/android/settings/RestrictedRadioButton;I)V
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->d:I

    .line 170
    invoke-static {v0, p2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;II)Lcom/android/settingslib/g$a;

    move-result-object p2

    .line 172
    invoke-virtual {p1, p2}, Lcom/android/settings/RestrictedRadioButton;->setDisabledByAdmin(Lcom/android/settingslib/g$a;)V

    return-void
.end method

.method public static synthetic lambda$QApkO40l6tGjLeI36mi_QrQnRHs(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4a

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    const/4 p1, 0x1

    const/4 v0, 0x0

    const v1, 0x7f0a0602

    if-ne p2, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v2, 0x7f0a02fd

    if-eq p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 201
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->d:I

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {p2, v2, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->d:I

    const-string v1, "lock_screen_show_notifications"

    invoke-static {p2, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0299

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 6

    .line 157
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->b:Lcom/android/settings/RestrictedRadioButton;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->a(Lcom/android/settings/RestrictedRadioButton;I)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->c:Lcom/android/settings/RestrictedRadioButton;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->a(Lcom/android/settings/RestrictedRadioButton;I)V

    .line 2176
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->d:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2180
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->d:I

    const-string v4, "lock_screen_show_notifications"

    .line 2179
    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 2182
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->d:I

    const-string v5, "lock_screen_allow_private_notifications"

    .line 2181
    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    const v2, 0x7f0a02fd

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 2186
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->b:Lcom/android/settings/RestrictedRadioButton;

    .line 3080
    iget-boolean v0, v0, Lcom/android/settings/RestrictedRadioButton;->a:Z

    if-nez v0, :cond_3

    const v2, 0x7f0a0602

    goto :goto_2

    .line 2188
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->c:Lcom/android/settings/RestrictedRadioButton;

    .line 4080
    iget-boolean v0, v0, Lcom/android/settings/RestrictedRadioButton;->a:Z

    if-nez v0, :cond_4

    const v2, 0x7f0a054e

    .line 2193
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 115
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a053d

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->a:Landroid/widget/RadioGroup;

    const p2, 0x7f0a0602

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/RestrictedRadioButton;

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->b:Lcom/android/settings/RestrictedRadioButton;

    const p2, 0x7f0a054e

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/RestrictedRadioButton;

    iput-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->c:Lcom/android/settings/RestrictedRadioButton;

    .line 121
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->a:Landroid/widget/RadioGroup;

    invoke-virtual {p2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    invoke-static {p2, v0}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->d:I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->d:I

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0a067a

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f120c5b

    .line 126
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->b:Lcom/android/settings/RestrictedRadioButton;

    const v0, 0x7f120c62

    invoke-virtual {p2, v0}, Lcom/android/settings/RestrictedRadioButton;->setText(I)V

    .line 128
    iget-object p2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->c:Lcom/android/settings/RestrictedRadioButton;

    const v0, 0x7f120c60

    .line 129
    invoke-virtual {p2, v0}, Lcom/android/settings/RestrictedRadioButton;->setText(I)V

    const p2, 0x7f0a02fd

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_0
    const p2, 0x7f0a05f8

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 135
    const-class p2, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/a;

    .line 136
    new-instance p2, Lcom/google/android/setupcompat/template/FooterButton$a;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1201e3

    .line 138
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object p2

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$RedactionInterstitial$RedactionInterstitialFragment$QApkO40l6tGjLeI36mi_QrQnRHs;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$RedactionInterstitial$RedactionInterstitialFragment$QApkO40l6tGjLeI36mi_QrQnRHs;-><init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V

    .line 1347
    iput-object v0, p2, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    const/4 v0, 0x5

    .line 1353
    iput v0, p2, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const v0, 0x7f13027e

    .line 1359
    iput v0, p2, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 142
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p2

    .line 136
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method
