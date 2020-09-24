.class public Lcom/android/settings/core/f;
.super Ljava/lang/Object;
.source "SubSettingLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/f$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/settings/core/f$a;

.field private final b:Landroid/content/Context;

.field private c:Z

.field private d:Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lcom/android/settings/core/f;->b:Landroid/content/Context;

    .line 49
    new-instance p1, Lcom/android/settings/core/f$a;

    invoke-direct {p1}, Lcom/android/settings/core/f$a;-><init>()V

    iput-object p1, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must be non-null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/settings/core/f;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/high16 v0, 0x10000000

    .line 179
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v0, 0x8000

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lcom/android/settings/core/f;->b:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static a(Landroid/content/Intent;Landroid/os/UserHandle;Landroidx/fragment/app/Fragment;I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 187
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p0, p3, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v0, v0, Lcom/android/settings/core/f$a;->k:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v0, v0, Lcom/android/settings/core/f$a;->k:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private c()Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/settings/core/f;->d:Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;

    if-nez v0, :cond_0

    .line 226
    const-class v0, Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;

    iput-object v0, p0, Lcom/android/settings/core/f;->d:Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;

    .line 227
    iget-object v0, p0, Lcom/android/settings/core/f;->d:Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;->bind(Ljava/lang/Object;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/f;->d:Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/android/settings/core/f;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iput p1, v0, Lcom/android/settings/core/f$a;->e:I

    return-object p0
.end method

.method public final a(Landroid/os/Bundle;)Lcom/android/settings/core/f;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iput-object p1, v0, Lcom/android/settings/core/f$a;->j:Landroid/os/Bundle;

    return-object p0
.end method

.method public final a(Landroid/os/UserHandle;)Lcom/android/settings/core/f;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iput-object p1, v0, Lcom/android/settings/core/f$a;->i:Landroid/os/UserHandle;

    return-object p0
.end method

.method public final a(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/f;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iput p2, v0, Lcom/android/settings/core/f$a;->h:I

    .line 109
    iput-object p1, v0, Lcom/android/settings/core/f$a;->g:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public final a(Landroidx/preference/Preference;)Lcom/android/settings/core/f;
    .locals 1

    .line 233
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 2144
    iget-object p1, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->j:Ljava/lang/String;

    .line 234
    iput-object p1, v0, Lcom/android/settings/core/f$a;->l:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/android/settings/core/f;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iput-object p1, v0, Lcom/android/settings/core/f$a;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/settings/core/f;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iput-object p1, v0, Lcom/android/settings/core/f$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lcom/android/settings/core/f;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iput-object p1, v0, Lcom/android/settings/core/f$a;->c:Ljava/lang/String;

    .line 74
    iput p2, v0, Lcom/android/settings/core/f$a;->b:I

    const/4 p1, 0x0

    .line 75
    iput-object p1, v0, Lcom/android/settings/core/f$a;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final a()V
    .locals 5

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/core/f;->c:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/settings/core/f;->c:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v2, v2, Lcom/android/settings/core/f$a;->i:Landroid/os/UserHandle;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v2, v2, Lcom/android/settings/core/f$a;->i:Landroid/os/UserHandle;

    .line 133
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v2, v4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 134
    :goto_0
    iget-object v4, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v4, v4, Lcom/android/settings/core/f$a;->g:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v0, v0, Lcom/android/settings/core/f$a;->i:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v2, v2, Lcom/android/settings/core/f$a;->g:Landroidx/fragment/app/Fragment;

    iget-object v3, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget v3, v3, Lcom/android/settings/core/f$a;->h:I

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/core/f;->a(Landroid/content/Intent;Landroid/os/UserHandle;Landroidx/fragment/app/Fragment;I)V

    return-void

    :cond_2
    if-eqz v2, :cond_3

    .line 139
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v0, v0, Lcom/android/settings/core/f$a;->i:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/core/f;->a(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v0, v0, Lcom/android/settings/core/f$a;->g:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget v2, v2, Lcom/android/settings/core/f$a;->h:I

    .line 1191
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 143
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/core/f;->a(Landroid/content/Intent;)V

    return-void

    .line 125
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This launcher has already been executed. Do not reuse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Landroid/content/Intent;
    .locals 5

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, v0}, Lcom/android/settings/core/f;->b(Landroid/content/Intent;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/core/f;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/core/f;->c()Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/core/f;->b:Landroid/content/Context;

    const-class v4, Lcom/android/settings/SubSettings;

    invoke-virtual {v2, v3, v4}, Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;->getTargetClazz(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v1, v1, Lcom/android/settings/core/f$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v1, v1, Lcom/android/settings/core/f$a;->a:Ljava/lang/String;

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v1, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget v1, v1, Lcom/android/settings/core/f$a;->e:I

    if-ltz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget v1, v1, Lcom/android/settings/core/f$a;->e:I

    const-string v2, ":settings:source_metrics"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    iget-object v1, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v1, v1, Lcom/android/settings/core/f$a;->j:Landroid/os/Bundle;

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v1, v1, Lcom/android/settings/core/f$a;->c:Ljava/lang/String;

    const-string v2, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v1, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget v1, v1, Lcom/android/settings/core/f$a;->b:I

    const-string v2, ":settings:show_fragment_title_resid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v1, v1, Lcom/android/settings/core/f$a;->d:Ljava/lang/CharSequence;

    const-string v2, ":settings:show_fragment_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget v1, v1, Lcom/android/settings/core/f$a;->f:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source metrics category must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination fragment must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(I)Lcom/android/settings/core/f;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget v1, v0, Lcom/android/settings/core/f$a;->f:I

    or-int/2addr p1, v1

    iput p1, v0, Lcom/android/settings/core/f$a;->f:I

    return-object p0
.end method
