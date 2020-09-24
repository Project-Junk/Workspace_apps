.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorMemInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final b:Ljava/lang/String; = "ColorMemInfoPreferenceController"


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Landroidx/preference/PreferenceFragmentCompat;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    const-string v0, "mem_info"

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->c:Landroid/os/Handler;

    .line 58
    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->d:Landroidx/preference/PreferenceFragmentCompat;

    .line 59
    invoke-static {}, Lcom/coloros/settings/utils/ai;->a()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->f:Z

    return-void
.end method

.method private a(Lcom/android/settingslib/deviceinfo/b;)V
    .locals 12

    if-nez p1, :cond_0

    .line 87
    sget-object p1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->b:Ljava/lang/String;

    const-string v0, "storageInfo is null"

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    iget-wide v0, p1, Lcom/android/settingslib/deviceinfo/b;->b:J

    .line 92
    iget-wide v2, p1, Lcom/android/settingslib/deviceinfo/b;->a:J

    .line 93
    sget-object p1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "storageInfo : totalBytes = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", freeBytes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    .line 100
    :try_start_0
    new-instance p1, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {p1, v6}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    .line 102
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v6}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    sget-object p1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->b:Ljava/lang/String;

    const-string v6, "SDcard is removed!"

    invoke-static {p1, v6}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v6, v4

    :goto_0
    cmp-long p1, v6, v4

    if-eqz p1, :cond_1

    cmp-long p1, v6, v2

    if-eqz p1, :cond_1

    move-wide v2, v6

    .line 2030
    :cond_1
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    .line 1034
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f120796

    .line 111
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v4

    .line 2034
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120795

    .line 113
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 p1, 0x0

    const-string v4, "persist.version.confidential"

    .line 3395
    invoke-static {v4, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 116
    iget-object v5, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {v5, v0, v1}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 4395
    invoke-static {v4, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ro.product.romsize"

    .line 3418
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object v10, v0

    goto :goto_2

    .line 117
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {p1, v0, v1, v6}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v10, p1

    .line 120
    :goto_2
    iget-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->f:Z

    if-eqz p1, :cond_4

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/coloros/settings/utils/ad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u200f "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 124
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v7, p1

    .line 128
    sget-boolean p1, Lcom/coloros/settings/a;->h:Z

    if-eqz p1, :cond_5

    .line 129
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v3}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 131
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v3, v6}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v8, p1

    .line 135
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->c:Landroid/os/Handler;

    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/controller/-$$Lambda$ColorMemInfoPreferenceController$fDB3mvAP4mCuSQH3YKrRq8RSqBo;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/coloros/settings/feature/deviceinfo/controller/-$$Lambda$ColorMemInfoPreferenceController$fDB3mvAP4mCuSQH3YKrRq8RSqBo;-><init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "persist.version.confidential"

    .line 5395
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "\u200f "

    if-eqz v1, :cond_1

    .line 137
    iget-boolean p2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->f:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->e:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x2

    .line 141
    new-array v1, v1, [Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/coloros/settings/utils/ai;->a()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/coloros/settings/utils/ad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lcom/coloros/settings/utils/ad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    goto :goto_0

    .line 150
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    .line 153
    :goto_0
    aget-object p2, v1, v0

    .line 154
    iget-boolean p3, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->f:Z

    if-eqz p3, :cond_3

    .line 155
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 158
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    :goto_1
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->e:Ljava/lang/String;

    .line 162
    :goto_2
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->d:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->a(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public static synthetic lambda$SHxQg8cavBAhJ4g6U151XPGWAp4(Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;Lcom/android/settingslib/deviceinfo/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->a(Lcom/android/settingslib/deviceinfo/b;)V

    return-void
.end method

.method public static synthetic lambda$fDB3mvAP4mCuSQH3YKrRq8RSqBo(Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->e:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->d:Landroidx/preference/PreferenceFragmentCompat;

    .line 71
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/coloros/settings/feature/deviceinfo/controller/-$$Lambda$ColorMemInfoPreferenceController$SHxQg8cavBAhJ4g6U151XPGWAp4;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/-$$Lambda$ColorMemInfoPreferenceController$SHxQg8cavBAhJ4g6U151XPGWAp4;-><init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorMemInfoPreferenceController;)V

    .line 70
    invoke-static {v0, v1, v2, v3}, Lcom/coloros/settings/utils/ad;->a(Landroidx/lifecycle/LifecycleOwner;Landroid/os/Bundle;Landroid/content/Context;Lcom/coloros/settings/utils/ad$b;)V

    return-void
.end method
