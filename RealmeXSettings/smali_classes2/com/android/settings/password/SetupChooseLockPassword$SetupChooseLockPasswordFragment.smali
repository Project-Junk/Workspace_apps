.class public Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/settings/password/ChooseLockTypeDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# instance fields
.field private g:Landroid/widget/Button;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 2

    .line 100
    iget p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->a:I

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->a(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    move-result-object p1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "skip_screen_lock_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$FGjhVmhq2pY4fJhL6rDmqWCUB00(Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    .line 130
    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->a(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Landroid/view/View;)V
    .locals 5

    .line 107
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->h:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ":settings:frp_supported"

    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-boolean v1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->e:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "for_fingerprint"

    .line 114
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "for_face"

    .line 117
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 108
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/settings/password/SetupSkipDialog;->a(ZZZZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "skip_dialog"

    .line 1115
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/android/settings/password/f;)V
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/password/f;->e:Lcom/android/settings/password/f;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/password/f;->d:Lcom/android/settings/password/f;

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->a(Lcom/android/settings/password/f;Landroid/app/Activity;)V

    return-void
.end method

.method protected final b()V
    .locals 4

    .line 153
    invoke-super {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->b()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->a:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f1214eb

    invoke-virtual {v0, v1, v3}, Lcom/google/android/setupcompat/template/FooterButton;->a(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->h:Z

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v3, 0x7f120c93

    invoke-virtual {v0, v1, v3}, Lcom/google/android/setupcompat/template/FooterButton;->a(Landroid/content/Context;I)V

    .line 160
    iput-boolean v2, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->h:Z

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->g:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 164
    iget-object v1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    sget-object v3, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->a:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 86
    new-instance v0, Lcom/android/settings/password/a;

    iget v1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->a:I

    invoke-direct {v0, p2, v1}, Lcom/android/settings/password/a;-><init>(Landroid/content/Context;I)V

    .line 88
    invoke-virtual {v0}, Lcom/android/settings/password/a;->a()Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 90
    :goto_0
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v2, "show_options_button"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez v0, :cond_1

    const-string v2, "SetupChooseLockPassword"

    const-string v3, "Visible screen lock types is empty!"

    .line 93
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    const p2, 0x7f0a05a8

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->g:Landroid/widget/Button;

    .line 98
    iget-object p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->g:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->g:Landroid/widget/Button;

    new-instance p2, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPassword$SetupChooseLockPasswordFragment$FGjhVmhq2pY4fJhL6rDmqWCUB00;

    invoke-direct {p2, p0}, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPassword$SetupChooseLockPasswordFragment$FGjhVmhq2pY4fJhL6rDmqWCUB00;-><init>(Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
