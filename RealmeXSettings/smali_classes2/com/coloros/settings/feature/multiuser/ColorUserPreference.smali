.class public Lcom/coloros/settings/feature/multiuser/ColorUserPreference;
.super Lcom/android/settings/users/UserPreference;
.source "ColorUserPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/multiuser/ColorUserPreference$f;,
        Lcom/coloros/settings/feature/multiuser/ColorUserPreference$d;,
        Lcom/coloros/settings/feature/multiuser/ColorUserPreference$c;,
        Lcom/coloros/settings/feature/multiuser/ColorUserPreference$e;,
        Lcom/coloros/settings/feature/multiuser/ColorUserPreference$b;,
        Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;
    }
.end annotation


# instance fields
.field c:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$e;

.field d:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$c;

.field e:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$d;

.field f:Landroid/widget/CheckBox;

.field private final g:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$b;

.field private h:Z

.field private i:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 7

    .line 75
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance p3, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$b;

    invoke-direct {p3, p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$b;-><init>(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;)V

    iput-object p3, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->g:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$b;

    const p3, 0x7f0d0105

    .line 76
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->setLayoutResource(I)V

    const p3, 0x7f0d00d6

    .line 77
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->setWidgetLayoutResource(I)V

    .line 78
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->h:Z

    .line 79
    new-instance p2, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$Q7afwf8NaUgyw6GV0UYf7dW0M68;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$Q7afwf8NaUgyw6GV0UYf7dW0M68;-><init>(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->c:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$e;

    .line 80
    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->i:Landroidx/preference/PreferenceFragmentCompat;

    return-void
.end method

.method private synthetic a(ILandroid/content/DialogInterface;I)V
    .locals 1

    .line 185
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "handleUserSwitch: use old guest and switch id: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ColorUserPreference"

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "users_overwrite_original_data"

    const-string v0, "1"

    .line 187
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->i:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 189
    invoke-static {p1}, Lcom/coloros/settings/feature/multiuser/d;->a(I)Z

    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "ColorUserPreference"

    const-string p1, "handleUserSwitch: cancel switch to guest user;"

    .line 192
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 371
    instance-of v0, p1, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 372
    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 374
    :cond_0
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 375
    move-object v1, p1

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->h:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 378
    check-cast p1, Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->g:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$b;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;Z)V
    .locals 1

    .line 4348
    iget-boolean v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->h:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4350
    iput-boolean p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->h:Z

    .line 4351
    iget-object p0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->d:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$c;

    if-eqz p0, :cond_1

    .line 4352
    invoke-interface {p0, p1}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$c;->onCheckedChanged(Z)Z

    :cond_1
    return-void
.end method

.method private static synthetic a(IZ)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 152
    invoke-static {p0}, Lcom/coloros/settings/feature/multiuser/d;->a(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 79
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3131
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "handleUserSwitch start handleUserSwitch, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ColorUserPreference"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3132
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->d()I

    move-result p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x1

    if-ne p2, v1, :cond_0

    .line 3133
    iput-boolean p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->h:Z

    const-string p1, "handleUserSwitch can not switch as same user id"

    .line 3134
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 3139
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    .line 3140
    invoke-virtual {p1}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const-string p1, "handleUserSwitch do not allow to switch users."

    .line 3141
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3145
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->d()I

    move-result p2

    const/16 v0, -0xa

    const/16 v3, -0xb

    if-eq p2, v0, :cond_4

    if-eq p2, v3, :cond_4

    .line 3147
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3397
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-nez v2, :cond_3

    .line 3149
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->e:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$d;

    if-eqz v0, :cond_8

    .line 3150
    new-instance v2, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$rsPDrxzcypY-iYB-UXwcrTatcH0;

    invoke-direct {v2, p2}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$rsPDrxzcypY-iYB-UXwcrTatcH0;-><init>(I)V

    invoke-interface {v0, p1, v2}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$d;->showUserInitializeDialog(Landroid/content/pm/UserInfo;Lcom/coloros/settings/feature/multiuser/ColorUserPreference$f;)Z

    goto/16 :goto_2

    .line 3160
    :cond_3
    invoke-static {p2}, Lcom/coloros/settings/feature/multiuser/d;->a(I)Z

    move-result v1

    goto/16 :goto_2

    :cond_4
    if-ne p2, v3, :cond_8

    .line 3164
    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 3165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, p2

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3166
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_5

    .line 3167
    iget v0, v4, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1

    :cond_6
    if-eq v0, v3, :cond_7

    .line 3172
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3173
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f12182f

    .line 3174
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f12182e

    new-instance v4, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$_qyGNU5JgdVdyR2VsVoHfQ-tuO8;

    invoke-direct {v4, p0, v0}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$_qyGNU5JgdVdyR2VsVoHfQ-tuO8;-><init>(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;I)V

    .line 3175
    invoke-virtual {p1, v2, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f121830

    new-instance v4, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$HoUNzc-98SUTAQ39x2qQhqXeiD8;

    invoke-direct {v4, p0, v0}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$HoUNzc-98SUTAQ39x2qQhqXeiD8;-><init>(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;I)V

    .line 3184
    invoke-virtual {p1, v2, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    sget-object v2, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$icO993Gvsqdq5jhc1-p0ov_YMac;->INSTANCE:Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$icO993Gvsqdq5jhc1-p0ov_YMac;

    .line 3191
    invoke-virtual {p1, v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 3196
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 3197
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3198
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 3199
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->i:Landroidx/preference/PreferenceFragmentCompat;

    if-eqz v0, :cond_8

    .line 3200
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 3201
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3202
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    goto :goto_2

    .line 3206
    :cond_7
    new-instance p1, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->i:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;-><init>(Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v1, [Ljava/lang/Void;

    .line 3207
    invoke-virtual {p1, v0, v2}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3210
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p2, :cond_9

    const-string p2, "0"

    goto :goto_3

    :cond_9
    if-ne p2, v3, :cond_a

    const-string p2, "2"

    goto :goto_3

    :cond_a
    const-string p2, "1"

    :goto_3
    const-string v0, "switch_user"

    const-string v2, "user_type"

    invoke-static {p1, v0, v2, p2}, Lcom/coloros/settings/utils/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private synthetic b(ILandroid/content/DialogInterface;I)V
    .locals 2

    .line 176
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "handleUserSwitch: cover and create new guest id: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ColorUserPreference"

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "users_overwrite_original_data"

    const-string v0, "0"

    .line 178
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->i:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 180
    new-instance p2, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;

    iget-object p3, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->i:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;-><init>(Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;II)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Void;

    .line 182
    invoke-virtual {p2, p1, p3}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "user_me"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2358
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 363
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 367
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->f:Landroid/widget/CheckBox;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$F9NPmBHYrvabdiQmy0aZIKCeWKA(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$HoUNzc-98SUTAQ39x2qQhqXeiD8(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->a(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$Q7afwf8NaUgyw6GV0UYf7dW0M68(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$_qyGNU5JgdVdyR2VsVoHfQ-tuO8(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->b(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$icO993Gvsqdq5jhc1-p0ov_YMac(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$rsPDrxzcypY-iYB-UXwcrTatcH0(IZ)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->a(IZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final c()I
    .locals 2

    .line 331
    iget v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->b:I

    if-eqz v0, :cond_1

    .line 1383
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 332
    iget v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->b:I

    if-eqz v0, :cond_2

    .line 1390
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_2

    const v0, -0x7fffffff

    return v0

    :cond_2
    const/high16 v0, -0x80000000

    return v0

    .line 334
    :cond_3
    invoke-super {p0}, Lcom/android/settings/users/UserPreference;->c()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/users/UserPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 87
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 88
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->m()Z

    move-result v0

    const v1, 0x1020001

    .line 89
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object v1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->f:Landroid/widget/CheckBox;

    if-nez v0, :cond_5

    .line 91
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const v1, 0x7f0a03ca

    .line 92
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    const v2, 0x7f0a020f

    .line 94
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->d()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v0, :cond_0

    const v2, 0x7f0804e7

    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->d()I

    move-result v2

    const/16 v4, -0xb

    if-eq v2, v4, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 111
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_4

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1358
    :cond_4
    invoke-direct {p0}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->e()V

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->f:Landroid/widget/CheckBox;

    new-instance v0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$F9NPmBHYrvabdiQmy0aZIKCeWKA;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$ColorUserPreference$F9NPmBHYrvabdiQmy0aZIKCeWKA;-><init>(Lcom/coloros/settings/feature/multiuser/ColorUserPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 126
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->f:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
