.class public final Lcom/coloros/settings/feature/storage/controller/c;
.super Lcom/android/settingslib/core/a;
.source "ColorVolumeUsagePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private a:Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;

.field private b:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/controller/c;->b:Landroid/os/storage/VolumeInfo;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/c;->a:Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;

    if-eqz v0, :cond_0

    .line 1092
    iput-wide p1, v0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->b:J

    .line 1093
    iput-wide p3, v0, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->c:J

    .line 1094
    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/c;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p3, p4, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/controller/c;->mContext:Landroid/content/Context;

    sub-long/2addr p3, p1

    sget-boolean p1, Lcom/coloros/settings/a;->h:Z

    xor-int/2addr p1, v1

    invoke-static {v2, p3, p4, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p1

    .line 76
    sput-object v0, Lcom/coloros/settings/feature/storage/b/b;->a:Ljava/lang/String;

    .line 77
    sput-object p1, Lcom/coloros/settings/feature/storage/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/c;->a:Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/controller/c;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/controller/c;->a:Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;

    .line 50
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/c;->a:Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/controller/c;->b:Landroid/os/storage/VolumeInfo;

    .line 1082
    iput-object v0, p1, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->a:Landroid/os/storage/VolumeInfo;

    .line 1083
    invoke-virtual {p1}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->b()V

    .line 51
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/controller/c;->a:Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/storage/preferences/ColorVolumeUsagePreference;->setEnabled(Z)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_usage"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
