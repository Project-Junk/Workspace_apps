.class public Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;
.super Lcom/android/settingslib/core/a;
.source "ColorExternalVolumeListController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/storage/StorageManager;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/storage/VolumeInfo;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/android/settings/SettingsPreferenceFragment;

.field private e:Landroidx/preference/PreferenceCategory;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/storage/StorageEventListener;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance v0, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$BWkLe0mBuoy04WNlnzHP1m11azQ;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$BWkLe0mBuoy04WNlnzHP1m11azQ;-><init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->h:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->d:Lcom/android/settings/SettingsPreferenceFragment;

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a:Ljava/util/List;

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->c:Ljava/util/Map;

    .line 72
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->b:Landroid/os/storage/StorageManager;

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->f:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a(Landroid/os/storage/VolumeInfo;)V
    .locals 1

    .line 77
    new-instance v0, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$x0oxnCtrTmjY6wSvfWL_mmO66wA;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$x0oxnCtrTmjY6wSvfWL_mmO66wA;-><init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;Landroid/os/storage/VolumeInfo;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic a(Landroid/os/storage/VolumeInfo;J)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e:Landroidx/preference/PreferenceCategory;

    if-eqz p2, :cond_0

    .line 1184
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 1185
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a(Landroid/os/storage/VolumeInfo;Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/storage/VolumeInfo;Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->mContext:Landroid/content/Context;

    const v0, 0x7f120d60

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-boolean p1, Lcom/coloros/settings/a;->h:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v1, v2, v3, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->mContext:Landroid/content/Context;

    const v1, 0x7f120a24

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$-9CYVJ0uqSMZd13isSHIy3dCQQA;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$-9CYVJ0uqSMZd13isSHIy3dCQQA;-><init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic b(Landroid/os/storage/VolumeInfo;)V
    .locals 3

    .line 78
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    .line 80
    new-instance v2, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$Zee2LSjwtIW92tbXHVBiI2hd4hM;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/coloros/settings/feature/storage/external/-$$Lambda$ColorExternalVolumeListController$Zee2LSjwtIW92tbXHVBiI2hd4hM;-><init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;Landroid/os/storage/VolumeInfo;J)V

    invoke-static {v2}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->b:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 91
    invoke-static {v1}, Lcom/coloros/settings/feature/storage/b/d;->b(Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()V
    .locals 4

    .line 150
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e:Landroidx/preference/PreferenceCategory;

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e:Landroidx/preference/PreferenceCategory;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setOrder(I)V

    .line 154
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->d:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 157
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 158
    new-instance v2, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setKey(Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->b:Landroid/os/storage/StorageManager;

    invoke-static {v3, v1}, Lcom/coloros/settings/feature/storage/b/d;->a(Landroid/os/storage/StorageManager;Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 161
    invoke-direct {p0, v1, v2}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a(Landroid/os/storage/VolumeInfo;Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;)V

    .line 162
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e:Landroidx/preference/PreferenceCategory;

    new-instance v1, Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->d:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e:Landroidx/preference/PreferenceCategory;

    :cond_3
    return-void
.end method

.method private synthetic e()V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->c()V

    .line 196
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->d()V

    .line 197
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->b()V

    return-void
.end method

.method public static synthetic lambda$-9CYVJ0uqSMZd13isSHIy3dCQQA(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method public static synthetic lambda$BWkLe0mBuoy04WNlnzHP1m11azQ(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->e()V

    return-void
.end method

.method public static synthetic lambda$Zee2LSjwtIW92tbXHVBiI2hd4hM(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;Landroid/os/storage/VolumeInfo;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a(Landroid/os/storage/VolumeInfo;J)V

    return-void
.end method

.method public static synthetic lambda$x0oxnCtrTmjY6wSvfWL_mmO66wA(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->b(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->d()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 127
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 129
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/android/settings/core/f;

    iget-object v2, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/CharSequence;)Lcom/android/settings/core/f;

    move-result-object p1

    const-class v1, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeDetailFragment;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v1, 0x2e9

    .line 135
    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 136
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->b:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->g:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->g:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->g:Landroid/os/storage/StorageEventListener;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController$a;-><init>(Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->g:Landroid/os/storage/StorageEventListener;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->b:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->g:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 103
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->c()V

    .line 104
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->d()V

    .line 105
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/external/ColorExternalVolumeListController;->b()V

    return-void
.end method
