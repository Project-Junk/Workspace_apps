.class public abstract Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;
    }
.end annotation


# static fields
.field public static final d:Z


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;

.field protected e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field

.field protected f:Landroid/service/notification/ZenModeConfig;

.field protected g:I

.field protected h:Ljava/lang/String;

.field protected i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/coloros/settings/utils/al;->h()Z

    move-result v0

    sput-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "no_adjust_volume"

    .line 67
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->a:Landroid/os/Handler;

    .line 49
    new-instance v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->b:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->h:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Z)V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->g:I

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->g:I

    if-ne v0, v1, :cond_0

    return-void

    .line 102
    :cond_0
    iput v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->g:I

    .line 103
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateZenMode mZenMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->f()V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;)V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->a(Z)V

    return-void
.end method

.method private c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    .line 162
    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected static p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final b(Z)V
    .locals 2

    .line 174
    invoke-direct {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->e:Ljava/util/Set;

    .line 175
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Refresh_mChangeConfigWay = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fireChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRules = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->g()V

    :cond_1
    return-void
.end method

.method protected abstract f()V
.end method

.method protected abstract g()V
.end method

.method protected abstract h()V
.end method

.method protected final o()Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->a(Z)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->b(Z)V

    .line 78
    sget-boolean p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Loaded mRules="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->e:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZenModeSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onPause()V

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->b:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;

    .line 3203
    iget-object v1, v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    .line 4041
    invoke-virtual {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3203
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 83
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->a(Z)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->b(Z)V

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->b:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;

    .line 1195
    iget-object v1, v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    .line 2041
    invoke-virtual {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1195
    iget-object v2, v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1196
    iget-object v1, v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    .line 3041
    invoke-virtual {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1196
    iget-object v2, v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->finish()V

    :cond_0
    return-void
.end method
