.class public Lcom/android/settings/users/UserDetailsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final e:Ljava/lang/String; = "UserDetailsSettings"


# instance fields
.field public a:Landroid/os/UserManager;

.field protected b:Landroidx/preference/Preference;

.field protected c:Landroid/content/pm/UserInfo;

.field protected d:Z

.field private f:Landroidx/preference/TwoStatePreference;

.field private g:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 3

    .line 2237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2238
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->c:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2239
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->c:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2240
    iget-object p0, p0, Lcom/android/settings/users/UserDetailsSettings;->mContext:Landroid/content/Context;

    const-string v1, "20120"

    const-string v2, "remove_user"

    invoke-static {p0, v1, v2, v0}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 1

    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "checked"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->mContext:Landroid/content/Context;

    const-string v1, "20120"

    const-string v2, "enable_calling"

    invoke-static {p1, v1, v2, v0}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const v0, 0x7f150132

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method final a(Z)V
    .locals 6

    .line 150
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 151
    iget-boolean v0, p0, Lcom/android/settings/users/UserDetailsSettings;->d:Z

    const-string v1, "no_sms"

    const-string v2, "no_outgoing_calls"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->g:Landroid/os/Bundle;

    xor-int/2addr p1, v3

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->a:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->setDefaultGuestRestrictions(Landroid/os/Bundle;)V

    .line 160
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {p1, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 162
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->g:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->a:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->g:Landroid/os/Bundle;

    .line 166
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 165
    invoke-virtual {v3, v2, v4, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->c:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 172
    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->a:Landroid/os/UserManager;

    xor-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v2, v5, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 174
    iget-object v2, p0, Lcom/android/settings/users/UserDetailsSettings;->a:Landroid/os/UserManager;

    xor-int/2addr p1, v3

    invoke-virtual {v2, v1, p1, v0}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    return-void
.end method

.method protected b()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->a:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->c:Landroid/content/pm/UserInfo;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->finishFragment()V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x251

    return p1

    :cond_1
    const/16 p1, 0x250

    return p1

    :cond_2
    const/16 p1, 0x24f

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x62

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "user"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->a:Landroid/os/UserManager;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->a()V

    const-string v0, "enable_calling"

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->f:Landroidx/preference/TwoStatePreference;

    const-string v0, "remove_user"

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->b:Landroidx/preference/Preference;

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "guest_user"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/UserDetailsSettings;->d:Z

    .line 93
    iget-boolean v1, p0, Lcom/android/settings/users/UserDetailsSettings;->d:Z

    const-string v2, "no_outgoing_calls"

    if-nez v1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, -0x1

    const-string v4, "user_id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->c:Landroid/content/pm/UserInfo;

    .line 100
    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->f:Landroidx/preference/TwoStatePreference;

    iget-object v4, p0, Lcom/android/settings/users/UserDetailsSettings;->a:Landroid/os/UserManager;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->b:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Arguments to this fragment must contain the user id"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    .line 107
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->f:Landroidx/preference/TwoStatePreference;

    const v3, 0x7f121823

    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setTitle(I)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getDefaultGuestRestrictions()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->g:Landroid/os/Bundle;

    .line 109
    iget-object v1, p0, Lcom/android/settings/users/UserDetailsSettings;->f:Landroidx/preference/TwoStatePreference;

    iget-object v3, p0, Lcom/android/settings/users/UserDetailsSettings;->g:Landroid/os/Bundle;

    .line 110
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 109
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 113
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_remove_user"

    .line 112
    invoke-static {p1, v2, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->removePreference(Ljava/lang/String;)Z

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->f:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    const/high16 v2, 0x1040000

    const v3, 0x7f120f1b

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$3;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    .line 2128
    new-instance v4, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f121825

    .line 2129
    invoke-virtual {v4, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v4, 0x7f121824

    .line 2130
    invoke-virtual {p1, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 2131
    invoke-virtual {p1, v3, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 2132
    invoke-virtual {p1, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 2133
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 208
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported dialogId "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserDetailsSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserDetailsSettings$2;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    .line 1143
    new-instance v4, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f121827

    .line 1144
    invoke-virtual {v4, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v4, 0x7f121826

    .line 1145
    invoke-virtual {p1, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1146
    invoke-virtual {p1, v3, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1147
    invoke-virtual {p1, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1148
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/users/UserDetailsSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->c:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    new-instance v1, Lcom/android/settings/users/UserDetailsSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserDetailsSettings$1;-><init>(Lcom/android/settings/users/UserDetailsSettings;)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/g;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 139
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 140
    iget-boolean p1, p0, Lcom/android/settings/users/UserDetailsSettings;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    return v0

    .line 144
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserDetailsSettings;->a(Z)V

    .line 145
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->b(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings;->b:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 128
    iget-object p1, p0, Lcom/android/settings/users/UserDetailsSettings;->a:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserDetailsSettings;->showDialog(I)V

    return p1

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Only admins can remove a user"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
