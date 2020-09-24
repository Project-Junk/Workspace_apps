.class public Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;
.super Lcom/android/settings/users/UserDetailsSettings;
.source "ColorUserDetailsSettings.java"


# static fields
.field private static final e:Ljava/lang/String; = "ColorUserDetailsSettings"


# instance fields
.field private f:Landroid/view/Menu;

.field private g:Landroid/view/MenuItem;

.field private h:I

.field private i:Z

.field private j:Lcom/coloros/settings/feature/multiuser/a;

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/os/UserHandle;

.field private n:Lcom/android/settings/users/c$a;

.field private o:Lcom/color/support/preference/ColorInputPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/users/UserDetailsSettings;-><init>()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->h:I

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;)Landroid/view/MenuItem;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->g:Landroid/view/MenuItem;

    return-object p0
.end method

.method private static synthetic a(Landroidx/fragment/app/FragmentActivity;Lcom/color/support/widget/ColorEditText;)V
    .locals 0

    .line 173
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;)Landroid/os/UserHandle;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->m:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;)Lcom/coloros/settings/feature/multiuser/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->j:Lcom/coloros/settings/feature/multiuser/a;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;)Landroid/os/UserManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->a:Landroid/os/UserManager;

    return-object p0
.end method

.method public static synthetic lambda$ZP1K7or8UP47GpPCg8-DloHwP-s(Landroidx/fragment/app/FragmentActivity;Lcom/color/support/widget/ColorEditText;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->a(Landroidx/fragment/app/FragmentActivity;Lcom/color/support/widget/ColorEditText;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const v0, 0x7f15006e

    .line 142
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->c:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5293
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5294
    sget-object v0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->e:Ljava/lang/String;

    const-string v1, "Cannot remove current user when switching is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5298
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 5299
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5301
    :catch_0
    sget-object v0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->e:Ljava/lang/String;

    const-string v1, "Unable to remove self user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->a:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->c:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 289
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->finishFragment()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x62

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 263
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/users/UserDetailsSettings;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->i:Z

    .line 265
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->j:Lcom/coloros/settings/feature/multiuser/a;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/multiuser/a;->a(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->m:Landroid/os/UserHandle;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "key_waiting_for_activity_result"

    .line 102
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->i:Z

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "current_user_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->k:Ljava/lang/String;

    const-string p1, "input_user_name"

    .line 107
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/color/support/preference/ColorInputPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->o:Lcom/color/support/preference/ColorInputPreference;

    .line 109
    iget-boolean p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->d:Z

    const/4 v1, 0x0

    const-string v2, "remove_user_divider_category"

    const-string v3, "edit_user_info_category"

    if-nez p1, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v4, -0x1

    const-string v5, "user_id"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->h:I

    .line 112
    iget p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->h:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-ne p1, v4, :cond_1

    const-string p1, "enable_calling"

    .line 113
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    .line 116
    iput-object v1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->o:Lcom/color/support/preference/ColorInputPreference;

    .line 118
    :goto_0
    iget p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->h:I

    if-nez p1, :cond_2

    const-string p1, "remove_user_category"

    .line 119
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    .line 120
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    .line 1146
    :cond_2
    iget p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->h:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 1149
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 1150
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->a:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const-string v2, "edit_info"

    .line 1152
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/LayoutPreference;

    const v3, 0x7f0a0777

    .line 1153
    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/color/support/widget/ColorRoundImageView;

    const/4 v2, 0x1

    .line 1154
    invoke-virtual {v5, v2}, Lcom/color/support/widget/ColorRoundImageView;->setClickable(Z)V

    .line 1160
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 1161
    iget-object v4, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    const v4, 0x410547ae    # 8.33f

    .line 1359
    iget-object v6, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v2, v4, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    .line 1360
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v3, v4}, Lcom/coloros/settings/feature/multiuser/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;F)Lcom/coloros/settings/feature/multiuser/b;

    move-result-object v3

    .line 1163
    invoke-virtual {v5, v3}, Lcom/color/support/widget/ColorRoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1167
    :cond_3
    invoke-virtual {v5}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 2355
    new-instance v9, Lcom/coloros/settings/feature/multiuser/a;

    const/4 v6, 0x0

    iget-boolean v8, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->i:Z

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/coloros/settings/feature/multiuser/a;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    .line 1166
    iput-object v9, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->j:Lcom/coloros/settings/feature/multiuser/a;

    .line 1169
    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->o:Lcom/color/support/preference/ColorInputPreference;

    if-eqz v3, :cond_4

    .line 3226
    iget-object v3, v3, Lcom/color/support/preference/ColorInputPreference;->a:Lcom/color/support/widget/ColorEditText;

    .line 1171
    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/color/support/widget/ColorEditText;->setText(Ljava/lang/CharSequence;)V

    .line 4179
    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v4, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;-><init>(I)V

    aput-object v4, v1, v0

    invoke-virtual {v3, v1}, Lcom/color/support/widget/ColorEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 4182
    invoke-virtual {v3, v2}, Lcom/color/support/widget/ColorEditText;->setFastDeletable(Z)V

    .line 4183
    new-instance v0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$1;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$1;-><init>(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v3, v0}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1173
    new-instance v0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserDetailsSettings$ZP1K7or8UP47GpPCg8-DloHwP-s;

    invoke-direct {v0, p1, v3}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserDetailsSettings$ZP1K7or8UP47GpPCg8-DloHwP-s;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/color/support/widget/ColorEditText;)V

    invoke-virtual {v3, v0}, Lcom/color/support/widget/ColorEditText;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    .line 125
    :cond_5
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    .line 126
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    .line 127
    iput-object v1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->o:Lcom/color/support/preference/ColorInputPreference;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 213
    iget v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->h:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->f:Landroid/view/Menu;

    const v0, 0x7f0e0005

    .line 217
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0a0774

    .line 218
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->g:Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .line 245
    invoke-super {p0}, Lcom/android/settings/users/UserDetailsSettings;->onDestroyOptionsMenu()V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->f:Landroid/view/Menu;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    .line 230
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->f:Landroid/view/Menu;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 234
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0774

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    goto/16 :goto_4

    .line 4309
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->k:Ljava/lang/String;

    .line 4311
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->o:Lcom/color/support/preference/ColorInputPreference;

    if-eqz v0, :cond_2

    .line 4312
    invoke-virtual {v0}, Lcom/color/support/preference/ColorInputPreference;->a()Ljava/lang/CharSequence;

    move-result-object p1

    .line 4314
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4315
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 4316
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 4317
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->n:Lcom/android/settings/users/c$a;

    if-eqz v0, :cond_4

    .line 4318
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/settings/users/c$a;->a(Ljava/lang/CharSequence;)V

    .line 4320
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->a:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->m:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 4321
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4320
    invoke-virtual {v0, v3, p1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    move p1, v2

    goto :goto_0

    :cond_5
    move p1, v1

    .line 4326
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->j:Lcom/coloros/settings/feature/multiuser/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/multiuser/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4327
    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->j:Lcom/coloros/settings/feature/multiuser/a;

    .line 5176
    iget-object v3, v3, Lcom/coloros/settings/feature/multiuser/a;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    .line 4328
    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->l:Landroid/graphics/drawable/Drawable;

    .line 4329
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 4331
    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->n:Lcom/android/settings/users/c$a;

    if-eqz v3, :cond_6

    .line 4332
    invoke-interface {v3, v0}, Lcom/android/settings/users/c$a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 4334
    :cond_6
    new-instance v0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$2;-><init>(Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    .line 4341
    invoke-virtual {v0, v3, v4}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    .line 4344
    :goto_1
    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->c:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-nez v3, :cond_b

    .line 4345
    iget-object v3, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->mContext:Landroid/content/Context;

    const-string v4, "user_type"

    const-string v5, "edit_name"

    const-string v6, "edit_photo"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->c:Landroid/content/pm/UserInfo;

    .line 4346
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v6

    const-string v7, "0"

    const-string v8, "1"

    if-eqz v6, :cond_8

    move-object v6, v7

    goto :goto_2

    :cond_8
    move-object v6, v8

    :goto_2
    aput-object v6, v5, v1

    if-eqz p1, :cond_9

    move-object p1, v8

    goto :goto_3

    :cond_9
    move-object p1, v7

    :goto_3
    aput-object p1, v5, v2

    const/4 p1, 0x2

    if-eqz v0, :cond_a

    move-object v7, v8

    :cond_a
    aput-object v7, v5, p1

    const-string p1, "edit_user"

    .line 4345
    invoke-static {v3, p1, v4, v5}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 4348
    :cond_b
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->j:Lcom/coloros/settings/feature/multiuser/a;

    .line 5188
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v3, "TakeEditUserPhoto2.jpg"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5189
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v3, "CropEditUserPhoto.jpg"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5192
    iget-object p1, p1, Lcom/coloros/settings/feature/multiuser/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 5193
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5194
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 4349
    :cond_c
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->finishFragment()V

    :goto_4
    return v2
.end method

.method public onPause()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/android/settings/users/UserDetailsSettings;->onPause()V

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->b:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 273
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->c:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Only admins can remove a user"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 276
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->showDialog(I)V

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 223
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->f:Landroid/view/Menu;

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 251
    iget-boolean v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->i:Z

    const-string v1, "key_waiting_for_activity_result"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    invoke-super {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserDetailsSettings;->i:Z

    .line 258
    invoke-super {p0, p1, p2}, Lcom/android/settings/users/UserDetailsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
