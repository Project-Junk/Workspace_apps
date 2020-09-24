.class public Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;
.super Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.source "SetupChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/password/ChooseLockTypeDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPatternFragment"
.end annotation


# instance fields
.field private l:Landroid/widget/Button;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 2

    .line 82
    iget p1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->i:I

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->a(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "skip_screen_lock_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$81cctUHlMLO4EnwUkDxRYyVKBZ8(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->c(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x1

    .line 151
    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->a(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Landroid/view/View;)V
    .locals 5

    .line 92
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->m:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ":settings:frp_supported"

    .line 95
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x1

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "for_fingerprint"

    .line 99
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "for_face"

    .line 102
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 93
    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/settings/password/SetupSkipDialog;->a(ZZZZZ)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "skip_dialog"

    .line 1115
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method protected final a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V
    .locals 3

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->l:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 124
    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->b:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->d:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    :cond_2
    iget-object v0, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->k:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;

    if-ne p1, v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->a(I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1214eb

    invoke-virtual {v0, v1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->a(Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->m:Z

    goto :goto_2

    .line 135
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->m:Z

    .line 140
    :goto_2
    iget v0, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 141
    iget-object p1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->c:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->c:Landroid/widget/TextView;

    iget p1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$c;->j:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final a(Lcom/android/settings/password/f;)V
    .locals 1

    .line 113
    sget-object v0, Lcom/android/settings/password/f;->c:Lcom/android/settings/password/f;

    if-ne v0, p1, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->a(Lcom/android/settings/password/f;Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050014

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x7f0a05a8

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->l:Landroid/widget/Button;

    .line 81
    iget-object p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->l:Landroid/widget/Button;

    new-instance p3, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$81cctUHlMLO4EnwUkDxRYyVKBZ8;

    invoke-direct {p3, p0}, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$81cctUHlMLO4EnwUkDxRYyVKBZ8;-><init>(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->f:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance p3, Lcom/android/settings/password/-$$Lambda$lZ-72bnSrz4bZsJXTfyJEHkiW0c;

    invoke-direct {p3, p0}, Lcom/android/settings/password/-$$Lambda$lZ-72bnSrz4bZsJXTfyJEHkiW0c;-><init>(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;)V

    .line 1098
    iput-object p3, p2, Lcom/google/android/setupcompat/template/FooterButton;->f:Landroid/view/View$OnClickListener;

    return-object p1
.end method
