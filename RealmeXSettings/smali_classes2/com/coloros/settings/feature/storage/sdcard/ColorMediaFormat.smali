.class public Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;
.super Landroid/preference/PreferenceActivity;
.source "ColorMediaFormat.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Landroidx/preference/PreferenceScreen;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Landroidx/preference/PreferenceCategory;

.field private e:Landroid/widget/Button;

.field private f:Ljava/lang/String;

.field private g:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->g:Landroid/os/storage/StorageManager;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030094

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->b:[Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030095

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->c:[Ljava/lang/String;

    .line 73
    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->g:Landroid/os/storage/StorageManager;

    .line 74
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    const v0, 0x7f12134e

    .line 76
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->setTitle(I)V

    const v0, 0x7f0d005e

    .line 78
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->setContentView(I)V

    const v0, 0x7f0a05fe

    .line 79
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->e:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->e:Landroid/widget/Button;

    new-instance v1, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat$1;-><init>(Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f150032

    .line 101
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->addPreferencesFromResource(I)V

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->a:Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "preference_formattype_category"

    .line 108
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->d:Landroidx/preference/PreferenceCategory;

    .line 109
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->a:Landroidx/preference/PreferenceScreen;

    const-string v0, "preference_information_category"

    .line 110
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const-string v0, "preference_information_description"

    .line 112
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const v0, 0x7f12106b

    .line 113
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->b:[Ljava/lang/String;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 1119
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1120
    new-instance v2, Landroidx/preference/Preference;

    invoke-direct {v2, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1121
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1122
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    if-nez v1, :cond_2

    const v3, 0x7f0d0280

    .line 1126
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_1

    :cond_2
    const v3, 0x7f0d027b

    .line 1129
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const-string v3, "exFAT"

    .line 1130
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1132
    :goto_1
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->finish()V

    .line 172
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 148
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    const v3, 0x7f0d027b

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0280

    .line 151
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 152
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->f:Ljava/lang/String;

    .line 155
    new-instance p1, Landroidx/preference/Preference;

    invoke-direct {p1, p0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 157
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormat;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x1

    return p1
.end method
