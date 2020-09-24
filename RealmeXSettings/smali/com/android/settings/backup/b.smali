.class public final Lcom/android/settings/backup/b;
.super Lcom/android/settingslib/core/a;
.source "BackupSettingsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Intent;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/android/settings/backup/a;

    invoke-direct {v0, p1}, Lcom/android/settings/backup/a;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0}, Lcom/android/settings/backup/a;->b()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/b;->a:Landroid/content/Intent;

    .line 1096
    invoke-virtual {v0}, Lcom/android/settings/backup/a;->g()Ljava/lang/CharSequence;

    move-result-object p1

    .line 1097
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    iget-object p1, v0, Lcom/android/settings/backup/a;->a:Landroid/content/Context;

    const v1, 0x7f121112

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/android/settings/backup/b;->b:Ljava/lang/CharSequence;

    .line 1111
    invoke-virtual {v0}, Lcom/android/settings/backup/a;->h()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1113
    iget-object p1, v0, Lcom/android/settings/backup/a;->a:Landroid/content/Context;

    const v1, 0x7f1202b5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/android/settings/backup/b;->c:Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Lcom/android/settings/backup/a;->d()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/b;->d:Landroid/content/Intent;

    .line 1137
    iget-object p1, v0, Lcom/android/settings/backup/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1205eb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/settings/backup/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "backup_settings"

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "manufacturer_backup"

    .line 52
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 53
    iget-object v1, p0, Lcom/android/settings/backup/b;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 54
    iget-object v1, p0, Lcom/android/settings/backup/b;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/android/settings/backup/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/backup/b;->d:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/backup/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
