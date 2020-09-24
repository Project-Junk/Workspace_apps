.class public Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;
.super Lcom/coloros/settings/feature/storage/controller/b;
.source "ColorVolumeSettingsController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Landroid/os/storage/IStorageManager;

.field private h:Landroidx/preference/PreferenceCategory;

.field private i:Landroidx/preference/Preference;

.field private j:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/storage/VolumeInfo;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/controller/b;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/storage/VolumeInfo;)V

    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->g:Landroid/os/storage/IStorageManager;

    .line 56
    iput-boolean p3, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;)Landroid/os/storage/IStorageManager;
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->b()Landroid/os/storage/IStorageManager;

    move-result-object p0

    return-object p0
.end method

.method private a()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/al;->e()Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized b()Landroid/os/storage/IStorageManager;
    .locals 2

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->g:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_1

    const-string v0, "mount"

    .line 236
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->g:Landroid/os/storage/IStorageManager;

    goto :goto_0

    :cond_0
    const-string v0, "ColorVolumeSettingsController"

    const-string v1, "Can\'t get mount service"

    .line 240
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->g:Landroid/os/storage/IStorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic c()V
    .locals 7

    .line 197
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->b()Landroid/os/storage/IStorageManager;

    move-result-object v0

    const-string v1, "ColorVolumeSettingsController"

    if-eqz v0, :cond_4

    .line 201
    :try_start_0
    iget-boolean v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->d:Z

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isUsbDevice mount path="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->b:Landroid/os/storage/VolumeInfo;

    .line 204
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/b/d;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 208
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 209
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v4

    const-string v5, "mount state="

    .line 210
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    const/4 v5, 0x6

    if-ne v5, v4, :cond_1

    .line 213
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mount path="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    :try_start_1
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v3, "mountService.mountVolume error"

    .line 217
    invoke-static {v1, v3}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    const-string v0, "Mount service is null, can\'t mount"

    .line 225
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method public static synthetic lambda$wR_QNSux3cfNwdcDATidsXyyuRM(Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->c()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/storage/controller/b;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->h:Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_8

    .line 79
    new-instance p1, Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->h:Landroidx/preference/PreferenceCategory;

    .line 80
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->h:Landroidx/preference/PreferenceCategory;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setOrder(I)V

    .line 1086
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->h:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_8

    .line 1089
    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 1090
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 1092
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->i:Landroidx/preference/Preference;

    .line 1093
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    .line 1095
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->a()Z

    move-result p1

    const v0, 0x7f0d00b1

    if-eqz p1, :cond_1

    .line 1096
    new-instance p1, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->i:Landroidx/preference/Preference;

    .line 1097
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->i:Landroidx/preference/Preference;

    const v1, 0x7f12134e

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1098
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->i:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 1099
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->i:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1102
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/b/d;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->e:Ljava/util/List;

    .line 1104
    iget-boolean p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->d:Z

    .line 1105
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->i:Landroidx/preference/Preference;

    if-eqz v1, :cond_3

    .line 1106
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    if-eqz p1, :cond_2

    .line 1108
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->i:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 1110
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->h:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->i:Landroidx/preference/Preference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    if-eqz p1, :cond_6

    .line 1113
    new-instance v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    .line 1114
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1115
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1116
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 1118
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->b:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    if-ne v1, v0, :cond_4

    goto :goto_0

    .line 1125
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    const v1, 0x7f121354

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1126
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    const v1, 0x7f121355

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v0, 0x0

    .line 1127
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->f:Z

    goto :goto_1

    .line 1120
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1121
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    const v1, 0x7f121352

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 1122
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    const v1, 0x7f121353

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 1123
    iput-boolean v2, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->f:Z

    :cond_6
    :goto_1
    if-eqz p1, :cond_8

    .line 1130
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    if-eqz p1, :cond_8

    .line 1131
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->i:Landroidx/preference/Preference;

    if-nez p1, :cond_7

    .line 1132
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->c:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->h:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 1134
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->h:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_8
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 141
    iget-boolean p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->f:Z

    if-eqz p1, :cond_0

    .line 1195
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 1196
    new-instance p1, Lcom/coloros/settings/feature/storage/controller/-$$Lambda$ColorVolumeSettingsController$wR_QNSux3cfNwdcDATidsXyyuRM;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/storage/controller/-$$Lambda$ColorVolumeSettingsController$wR_QNSux3cfNwdcDATidsXyyuRM;-><init>(Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2157
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 2158
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->mContext:Landroid/content/Context;

    .line 2159
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f12134d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2160
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->j:Landroidx/preference/Preference;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2161
    new-instance p1, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController$1;-><init>(Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->i:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->b:Landroid/os/storage/VolumeInfo;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/storage/sdcard/ColorMediaFormatActivity;->a(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Landroid/content/Intent;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/ColorVolumeSettingsController;->a:Lcom/android/settings/SettingsPreferenceFragment;

    const/16 v2, 0x382

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return v1
.end method
