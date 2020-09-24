.class public Lcom/android/settings/MasterClearConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MasterClearConfirm.java"


# instance fields
.field a:Landroid/view/View;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 76
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$1;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/MasterClearConfirm;)V
    .locals 3

    .line 4143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 4144
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    .line 4146
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4147
    iget-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->c:Z

    const-string v2, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4148
    iget-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->b:Z

    const-string v2, "com.android.internal.intent.extra.WIPE_ESIMS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4149
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$c6Y2K9NEj9p9KdJXFSvyIjUzU78(Lcom/android/settings/MasterClearConfirm;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/MasterClearConfirm;->a(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x43

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "erase_sd"

    .line 232
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->c:Z

    if-eqz p1, :cond_1

    const-string v2, "erase_esim"

    .line 234
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->b:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string v0, "no_factory_reset"

    .line 188
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p2

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 191
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 190
    invoke-static {p3, v0, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const p2, 0x7f0d01bb

    .line 192
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 194
    new-instance p1, Lcom/android/settings/enterprise/a;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/android/settings/enterprise/a;-><init>(Landroid/app/Activity;)V

    .line 195
    invoke-virtual {p1, v0, p2}, Lcom/android/settings/enterprise/a;->a(Ljava/lang/String;Lcom/android/settingslib/g$a;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/-$$Lambda$MasterClearConfirm$c6Y2K9NEj9p9KdJXFSvyIjUzU78;

    invoke-direct {p2, p0}, Lcom/android/settings/-$$Lambda$MasterClearConfirm$c6Y2K9NEj9p9KdJXFSvyIjUzU78;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    .line 196
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    .line 198
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    const p2, 0x7f0d01ba

    .line 200
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm;->a:Landroid/view/View;

    .line 1171
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "MasterClearConfirm"

    if-nez p1, :cond_2

    const-string p1, "No activity attached, skipping setUpActionBarAndTitle"

    .line 1173
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1176
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p1, "No actionbar, skipping setUpActionBarAndTitle"

    .line 1178
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1181
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 1182
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2157
    :goto_0
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm;->a:Landroid/view/View;

    const p3, 0x7f0a05f8

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 2159
    const-class p3, Lcom/google/android/setupcompat/template/a;

    invoke-virtual {p1, p3}, Lcom/google/android/setupdesign/GlifLayout;->a(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/a;

    .line 2160
    new-instance p3, Lcom/google/android/setupcompat/template/FooterButton$a;

    .line 2161
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120d2e

    .line 2162
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$a;->a(I)Lcom/google/android/setupcompat/template/FooterButton$a;

    move-result-object p3

    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->d:Landroid/view/View$OnClickListener;

    .line 2347
    iput-object v0, p3, Lcom/google/android/setupcompat/template/FooterButton$a;->a:Landroid/view/View$OnClickListener;

    .line 2353
    iput p2, p3, Lcom/google/android/setupcompat/template/FooterButton$a;->b:I

    const p2, 0x7f13027e

    .line 2359
    iput p2, p3, Lcom/google/android/setupcompat/template/FooterButton$a;->c:I

    .line 2166
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterButton$a;->a()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p2

    .line 2160
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/a;->a(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 3209
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 3210
    iget-object p2, p0, Lcom/android/settings/MasterClearConfirm;->a:Landroid/view/View;

    const p3, 0x7f0a067a

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    .line 3212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3213
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    .line 3212
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3214
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/settings/m;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3220
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/MasterClearConfirm;->b:Z

    if-eqz p1, :cond_5

    .line 3221
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm;->a:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f120d3a

    .line 3222
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :cond_5
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm;->a:Landroid/view/View;

    return-object p1
.end method
