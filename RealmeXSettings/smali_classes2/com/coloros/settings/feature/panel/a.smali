.class public final Lcom/coloros/settings/feature/panel/a;
.super Ljava/lang/Object;
.source "VolumeKeyInterceptor.java"


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/media/AudioManager;

.field c:I

.field d:I

.field e:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

.field f:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

.field g:Z

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/coloros/settings/feature/panel/a;->h:I

    .line 39
    iput v0, p0, Lcom/coloros/settings/feature/panel/a;->i:I

    .line 52
    iput-object p1, p0, Lcom/coloros/settings/feature/panel/a;->a:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Lcom/coloros/settings/feature/panel/a;->e:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    .line 54
    iput-object p3, p0, Lcom/coloros/settings/feature/panel/a;->f:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    const-string p2, "audio"

    .line 56
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/panel/a;->b:Landroid/media/AudioManager;

    .line 57
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/a;->b:Landroid/media/AudioManager;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/panel/a;->c:I

    .line 58
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/a;->b:Landroid/media/AudioManager;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/panel/a;->d:I

    .line 60
    invoke-direct {p0}, Lcom/coloros/settings/feature/panel/a;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    .line 145
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/panel/a;->h:I

    .line 146
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/a;->a:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 148
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 150
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.android.systemui"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v0, p0, Lcom/coloros/settings/feature/panel/a;->i:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/a;->b:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "get_pid"

    .line 122
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, ":"

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 127
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 128
    iget v6, p0, Lcom/coloros/settings/feature/panel/a;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, p0, Lcom/coloros/settings/feature/panel/a;->i:I

    .line 129
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    :goto_2
    if-nez v0, :cond_6

    .line 136
    iget-object v3, p0, Lcom/coloros/settings/feature/panel/a;->a:Landroid/app/Activity;

    if-eqz v3, :cond_6

    .line 137
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "default_volume_type_coloros_six"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    return v0
.end method
