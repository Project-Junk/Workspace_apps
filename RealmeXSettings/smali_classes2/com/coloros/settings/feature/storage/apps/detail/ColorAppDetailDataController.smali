.class public Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;
.super Lcom/android/settingslib/core/a;
.source "ColorAppDetailDataController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final a:Ljava/lang/String; = "ColorAppDetailDataController"

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;


# instance fields
.field private e:Lcom/coloros/settings/feature/storage/apps/usage/b;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/app/Activity;

.field private j:Landroidx/preference/PreferenceScreen;

.field private k:Landroidx/preference/PreferenceCategory;

.field private l:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->b:Landroid/net/Uri;

    .line 56
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->c:Landroid/net/Uri;

    .line 57
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->d:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/coloros/settings/feature/storage/apps/usage/b;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->i:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    .line 77
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->mContext:Landroid/content/Context;

    const p2, 0x7f120df8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->f:Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->mContext:Landroid/content/Context;

    const p2, 0x7f120722

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->g:Ljava/lang/String;

    .line 79
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->mContext:Landroid/content/Context;

    const p2, 0x7f121880

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.filemanager"

    const-string v3, "com.coloros.filemanager.view.category.CategoryFileBrowser"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->j:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "navigate_title_text"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 153
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "SQL"

    .line 154
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "TITLE"

    .line 155
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "CATEGORY_TYPE"

    .line 156
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->i:Landroid/app/Activity;

    invoke-virtual {p1, v0, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->a()V

    .line 178
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const v0, 0x7f0d00a7

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setLayoutResource(I)V

    return-void
.end method

.method private b()Z
    .locals 3

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.tencent.tvoem"

    const/16 v2, 0x2200

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->a:Ljava/lang/String;

    const-string v2, "OPPO_VEDIO_PKG is installed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 170
    :catch_0
    sget-object v0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->a:Ljava/lang/String;

    const-string v1, "OPPO_VEDIO_PKG is uninstalled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v2, v2, Lcom/coloros/settings/feature/storage/apps/usage/b;->l:J

    .line 184
    invoke-static {v1, v2, v3}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 95
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 96
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->j:Landroidx/preference/PreferenceScreen;

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->k:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    const-string v0, "app_date_category"

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->k:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_app_date_application"

    .line 99
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->l:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, "key_app_date_storage"

    .line 100
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v0, "key_app_media_date_storage"

    .line 101
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->l:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v2, v2, Lcom/coloros/settings/feature/storage/apps/usage/b;->i:J

    invoke-static {v1, v2, v3}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->k:J

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-wide v2, v2, Lcom/coloros/settings/feature/storage/apps/usage/b;->j:J

    add-long/2addr v0, v2

    .line 105
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const-string v1, "com.oppo.music"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->f:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const-string v1, "com.coloros.gallery3d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const-string v1, "com.tencent.tvoem"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 116
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->h:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const v0, 0x7f0d00a7

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setLayoutResource(I)V

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->k:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    .line 122
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-boolean p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->n:Z

    if-eqz p1, :cond_5

    .line 123
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->k:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->l:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->n:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-ne p1, v0, :cond_2

    .line 130
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const-string v0, "com.oppo.music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    sget-object v1, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->c:Landroid/net/Uri;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->f:Ljava/lang/String;

    const/4 v4, 0x2

    const/16 v5, 0x37

    const-string v2, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const-string v0, "com.coloros.gallery3d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    sget-object v1, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->d:Landroid/net/Uri;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->g:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v5, 0x38

    const-string v2, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->e:Lcom/coloros/settings/feature/storage/apps/usage/b;

    iget-object p1, p1, Lcom/coloros/settings/feature/storage/apps/usage/b;->b:Ljava/lang/String;

    const-string v0, "com.tencent.tvoem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 140
    sget-object v1, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->h:Ljava/lang/String;

    const/4 v4, 0x4

    const/16 v5, 0x39

    const-string v2, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/storage/apps/detail/ColorAppDetailDataController;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
