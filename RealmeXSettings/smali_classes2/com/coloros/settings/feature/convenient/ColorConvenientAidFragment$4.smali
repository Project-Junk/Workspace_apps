.class final Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$4;
.super Lcom/android/settingslib/core/a;
.source "ColorConvenientAidFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture_control_settings"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$4;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
