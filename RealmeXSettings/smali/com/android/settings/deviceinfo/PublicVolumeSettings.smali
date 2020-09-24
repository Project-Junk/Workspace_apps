.class public Lcom/android/settings/deviceinfo/PublicVolumeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PublicVolumeSettings.java"


# instance fields
.field private a:Landroid/os/storage/StorageManager;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/storage/VolumeInfo;

.field private d:Landroid/os/storage/DiskInfo;

.field private e:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

.field private f:Landroidx/preference/Preference;

.field private g:Landroidx/preference/Preference;

.field private h:Landroidx/preference/Preference;

.field private i:Landroid/widget/Button;

.field private j:Z

.field private final k:Landroid/view/View$OnClickListener;

.field private final l:Landroid/os/storage/StorageEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 237
    new-instance v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;-><init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->k:Landroid/view/View$OnClickListener;

    .line 244
    new-instance v0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings$2;-><init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->l:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method private a(I)Landroidx/preference/Preference;
    .locals 2

    .line 198
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-object v0
.end method

.method private a(Landroidx/preference/Preference;)V
    .locals 1

    const v0, 0x7fffffff

    .line 193
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method static synthetic b(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->b:Ljava/lang/String;

    return-object p0
.end method

.method private b()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    .line 75
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a:Landroid/os/storage/StorageManager;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 152
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 164
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->e:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a(Landroidx/preference/Preference;)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v3

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v5

    sub-long v5, v3, v5

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5, v6, v2}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 173
    iget-object v7, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->e:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v8, 0x7f12159f

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/CharSequence;

    iget-object v10, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v10, v9, v2

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->e:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const v7, 0x7f1215b0

    new-array v8, v10, [Ljava/lang/Object;

    .line 176
    invoke-static {v0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 175
    invoke-virtual {p0, v7, v8}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->e:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {v0, v5, v6, v3, v4}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;->a(JJ)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->f:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a(Landroidx/preference/Preference;)V

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->g:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a(Landroidx/preference/Preference;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->d:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->j:Z

    if-eqz v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->h:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a(Landroidx/preference/Preference;)V

    :cond_4
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 136
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->b()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07075a

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 145
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 146
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->i:Landroid/widget/Button;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 89
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->j:Z

    .line 92
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a:Landroid/os/storage/StorageManager;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.provider.action.DOCUMENT_ROOT_SETTINGS"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 97
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    .line 106
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->b()Z

    move-result p1

    if-nez p1, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->d:Landroid/os/storage/DiskInfo;

    .line 112
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->d:Landroid/os/storage/DiskInfo;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->b:Ljava/lang/String;

    const p1, 0x7f15008e

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->addPreferencesFromResource(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 119
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->e:Lcom/android/settings/deviceinfo/StorageSummaryPreference;

    const p1, 0x7f121589

    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a(I)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->f:Landroidx/preference/Preference;

    .line 122
    new-instance p1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->i:Landroid/widget/Button;

    .line 123
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->i:Landroid/widget/Button;

    const v0, 0x7f12158c

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f121583

    .line 125
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a(I)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->g:Landroidx/preference/Preference;

    .line 126
    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->j:Z

    if-eqz p1, :cond_4

    const p1, 0x7f121584

    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a(I)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->h:Landroidx/preference/Preference;

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 220
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 221
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->l:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->f:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 227
    new-instance v0, Lcom/android/settings/deviceinfo/StorageSettings$a;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageSettings$a;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->g:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->d:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->h:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->d:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->b(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 234
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 205
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 208
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->c:Landroid/os/storage/VolumeInfo;

    .line 209
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->l:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->a()V

    return-void
.end method
