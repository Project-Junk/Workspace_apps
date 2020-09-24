.class public abstract Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RestrictedDashboardFragment.java"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/os/UserManager;

.field private d:Landroid/content/RestrictionsManager;

.field private final e:Ljava/lang/String;

.field private f:Lcom/android/settingslib/g$a;

.field private g:Z

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Lcolor/support/v7/app/AlertDialog;

.field protected n:Landroid/widget/TextView;

.field protected o:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->o:Z

    .line 82
    new-instance v0, Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;-><init>(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->h:Landroid/content/BroadcastReceiver;

    .line 100
    iput-object p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->e:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->a:Z

    return v0
.end method

.method static synthetic c(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->b:Z

    return v0
.end method

.method public static synthetic lambda$0Q9L9Pq5kuhwiqe0YM2NXaeYOC4(Lcom/android/settings/dashboard/RestrictedDashboardFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->a(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method protected final l()Z
    .locals 4

    .line 4188
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->e:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "restrict_if_overridable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4191
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->c:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->d:Landroid/content/RestrictionsManager;

    .line 4192
    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    .line 4196
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->a:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->b:Z

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    .line 255
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->g:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->o:Z

    if-eqz v0, :cond_6

    .line 256
    :cond_5
    invoke-static {}, Lcom/coloros/settings/e/a;->b()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method protected final m()Z
    .locals 3

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->c:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->e:Ljava/lang/String;

    .line 261
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->o:Z

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    invoke-static {}, Lcom/coloros/settings/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1212
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 124
    iput-object p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->n:Landroid/widget/TextView;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x3015

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    const/4 p3, 0x0

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->a:Z

    .line 157
    iput-boolean p3, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->b:Z

    return-void

    .line 159
    :cond_0
    iput-boolean p3, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->a:Z

    return-void

    .line 164
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "restrictions"

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->d:Landroid/content/RestrictionsManager;

    const-string/jumbo v0, "user"

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->c:Landroid/os/UserManager;

    .line 109
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->c:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->g:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "chsc"

    .line 112
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->a:Z

    const-string v1, "chrq"

    .line 113
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->b:Z

    .line 116
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->highlightPreferenceIfNeeded()V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->i:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3217
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->e:Ljava/lang/String;

    .line 3218
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 3217
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->f:Lcom/android/settingslib/g$a;

    .line 3219
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->f:Lcom/android/settingslib/g$a;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    if-nez v0, :cond_1

    .line 3220
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->f:Lcom/android/settingslib/g$a;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    .line 3222
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->f:Lcom/android/settingslib/g$a;

    if-nez v0, :cond_2

    return-void

    .line 236
    :cond_2
    new-instance v1, Lcom/android/settings/enterprise/a;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/a;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->e:Ljava/lang/String;

    .line 237
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/enterprise/a;->a(Ljava/lang/String;Lcom/android/settingslib/g$a;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dashboard/-$$Lambda$RestrictedDashboardFragment$0Q9L9Pq5kuhwiqe0YM2NXaeYOC4;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/-$$Lambda$RestrictedDashboardFragment$0Q9L9Pq5kuhwiqe0YM2NXaeYOC4;-><init>(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)V

    .line 238
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->i:Lcolor/support/v7/app/AlertDialog;

    .line 240
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setEmptyView(Landroid/view/View;)V

    .line 244
    :cond_4
    :goto_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 139
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 141
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->e:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, "restrict_if_overridable"

    .line 2206
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->c:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->e:Ljava/lang/String;

    .line 2207
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

    .line 2208
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->d:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    .line 3168
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->a:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->d:Landroid/content/RestrictionsManager;

    .line 3169
    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3170
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->d:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3172
    iput-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->b:Z

    .line 3173
    iput-boolean v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->a:Z

    .line 3174
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 3176
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f121257

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.request.mesg"

    .line 3175
    invoke-virtual {v1, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.content.extra.REQUEST_BUNDLE"

    .line 3177
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x3015

    .line 3178
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->b:Z

    const-string v1, "chrq"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->a:Z

    const-string v1, "chsc"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
