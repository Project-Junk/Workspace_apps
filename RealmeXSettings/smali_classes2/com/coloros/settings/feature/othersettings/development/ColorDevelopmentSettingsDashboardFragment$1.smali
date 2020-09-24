.class final Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment$1;
.super Lcom/android/settings/development/j;
.source "ColorDevelopmentSettingsDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;->a(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment;Lcom/android/settings/development/f;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 317
    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final m_()V
    .locals 2

    .line 320
    invoke-super {p0}, Lcom/android/settings/development/j;->m_()V

    .line 323
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorDevelopmentSettingsDashboardFragment$1;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;ZZ)V

    :cond_0
    return-void
.end method
