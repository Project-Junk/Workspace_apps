.class public abstract Lcom/android/settings/RestrictedSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RestrictedSettingsFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Z

.field c:Lcolor/support/v7/app/AlertDialog;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Landroid/os/UserManager;

.field private g:Landroid/content/RestrictionsManager;

.field private final h:Ljava/lang/String;

.field private i:Lcom/android/settingslib/g$a;

.field private j:Z

.field private k:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->b:Z

    .line 81
    new-instance v0, Lcom/android/settings/RestrictedSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RestrictedSettingsFragment$1;-><init>(Lcom/android/settings/RestrictedSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->k:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->h:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RestrictedSettingsFragment;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/settings/RestrictedSettingsFragment;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/android/settings/RestrictedSettingsFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/RestrictedSettingsFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->e:Z

    return v0
.end method

.method public static synthetic lambda$Q7tUjcqw4C2NcFSAFAokKm22ISo(Lcom/android/settings/RestrictedSettingsFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->a(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/settingslib/g$a;
    .locals 3

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->h:Ljava/lang/String;

    .line 223
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 222
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->i:Lcom/android/settingslib/g$a;

    .line 224
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->i:Lcom/android/settingslib/g$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->i:Lcom/android/settingslib/g$a;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->i:Lcom/android/settingslib/g$a;

    return-object v0
.end method

.method protected final b()Z
    .locals 4

    .line 3193
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->h:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "restrict_if_overridable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->f:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/RestrictedSettingsFragment;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->g:Landroid/content/RestrictionsManager;

    .line 3197
    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_6

    .line 3201
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->d:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->e:Z

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    .line 259
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->j:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->b:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    return v2

    :cond_6
    :goto_3
    return v1
.end method

.method protected final c()Z
    .locals 3

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->f:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->h:Ljava/lang/String;

    .line 265
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->j:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->b:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1217
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 125
    iput-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->a:Landroid/widget/TextView;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3015

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->d:Z

    .line 158
    iput-boolean p3, p0, Lcom/android/settings/RestrictedSettingsFragment;->e:Z

    .line 159
    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->c:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->c:Lcolor/support/v7/app/AlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 161
    iget-object p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->c:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void

    .line 164
    :cond_0
    iput-boolean p3, p0, Lcom/android/settings/RestrictedSettingsFragment;->d:Z

    :cond_1
    return-void

    .line 169
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "restrictions"

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->g:Landroid/content/RestrictionsManager;

    const-string/jumbo v0, "user"

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->f:Landroid/os/UserManager;

    .line 110
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->f:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->j:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "chsc"

    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->d:Z

    const-string v1, "chrq"

    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/RestrictedSettingsFragment;->e:Z

    .line 117
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDataSetChanged()V
    .locals 3

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->highlightPreferenceIfNeeded()V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->c:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->a()Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/android/settings/enterprise/a;

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/a;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->h:Ljava/lang/String;

    .line 241
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/enterprise/a;->a(Ljava/lang/String;Lcom/android/settingslib/g$a;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/-$$Lambda$RestrictedSettingsFragment$Q7tUjcqw4C2NcFSAFAokKm22ISo;

    invoke-direct {v1, p0}, Lcom/android/settings/-$$Lambda$RestrictedSettingsFragment$Q7tUjcqw4C2NcFSAFAokKm22ISo;-><init>(Lcom/android/settings/RestrictedSettingsFragment;)V

    .line 242
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->c:Lcolor/support/v7/app/AlertDialog;

    .line 244
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;->setEmptyView(Landroid/view/View;)V

    .line 248
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 140
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->h:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, "restrict_if_overridable"

    .line 2211
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->f:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/RestrictedSettingsFragment;->h:Ljava/lang/String;

    .line 2212
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 2213
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->g:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    .line 3173
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->d:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->g:Landroid/content/RestrictionsManager;

    .line 3174
    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3175
    iget-object v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->g:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3177
    iput-boolean v1, p0, Lcom/android/settings/RestrictedSettingsFragment;->e:Z

    .line 3178
    iput-boolean v2, p0, Lcom/android/settings/RestrictedSettingsFragment;->d:Z

    .line 3179
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 3181
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121257

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.request.mesg"

    .line 3180
    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.content.extra.REQUEST_BUNDLE"

    .line 3182
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x3015

    .line 3183
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/RestrictedSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->e:Z

    const-string v1, "chrq"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    iget-boolean v0, p0, Lcom/android/settings/RestrictedSettingsFragment;->d:Z

    const-string v1, "chsc"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
