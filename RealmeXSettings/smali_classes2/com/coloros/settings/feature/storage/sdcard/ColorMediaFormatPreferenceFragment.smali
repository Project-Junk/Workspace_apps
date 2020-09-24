.class public Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;
.super Lcom/color/support/preference/ColorPreferenceFragment;
.source "ColorMediaFormatPreferenceFragment.java"

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

    .line 40
    invoke-direct {p0}, Lcom/color/support/preference/ColorPreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Landroidx/fragment/app/FragmentActivity;Landroid/os/storage/VolumeInfo;Landroid/view/View;)V
    .locals 1

    .line 92
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_PRE_SHARED"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    .line 95
    iget-object p3, p2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->g:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 98
    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object p3

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->g:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 103
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Format : "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ColorMediaFormat"

    invoke-static {p3, p2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$-FxtDMODcvqCAqIm9yyQvZy6M8k(Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;Landroidx/fragment/app/FragmentActivity;Landroid/os/storage/VolumeInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->a(Landroidx/fragment/app/FragmentActivity;Landroid/os/storage/VolumeInfo;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->b:[Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->c:[Ljava/lang/String;

    .line 86
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->g:Landroid/os/storage/StorageManager;

    .line 87
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 90
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->e:Landroid/widget/Button;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->e:Landroid/widget/Button;

    new-instance v2, Lcom/coloros/settings/feature/storage/sdcard/-$$Lambda$ColorMediaFormatPreferenceFragment$-FxtDMODcvqCAqIm9yyQvZy6M8k;

    invoke-direct {v2, p0, p1, v0}, Lcom/coloros/settings/feature/storage/sdcard/-$$Lambda$ColorMediaFormatPreferenceFragment$-FxtDMODcvqCAqIm9yyQvZy6M8k;-><init>(Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;Landroidx/fragment/app/FragmentActivity;Landroid/os/storage/VolumeInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->b:[Ljava/lang/String;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 1113
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1114
    new-instance v2, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1115
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1116
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1117
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    if-nez v1, :cond_0

    const v3, 0x7f0d0280

    .line 1119
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_1

    :cond_0
    const v3, 0x7f0d027b

    .line 1121
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const-string v3, "exFAT"

    .line 1122
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1124
    :goto_1
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f150032

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const p3, 0x7f0d005e

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a05fe

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->e:Landroid/widget/Button;

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->a:Landroidx/preference/PreferenceScreen;

    .line 70
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->a:Landroidx/preference/PreferenceScreen;

    const-string p3, "preference_formattype_category"

    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    iput-object p2, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->d:Landroidx/preference/PreferenceCategory;

    .line 71
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->a:Landroidx/preference/PreferenceScreen;

    const-string p3, "preference_information_category"

    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceCategory;

    const-string p3, "preference_information_description"

    .line 72
    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    const p3, 0x7f12106b

    .line 73
    invoke-virtual {p2, p3}, Landroidx/preference/Preference;->setSummary(I)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 150
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 153
    :cond_0
    invoke-super {p0, p1}, Lcom/color/support/preference/ColorPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 133
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    const v3, 0x7f0d027b

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0280

    .line 136
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 137
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->f:Ljava/lang/String;

    .line 140
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 141
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 142
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatPreferenceFragment;->d:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x1

    return p1
.end method
