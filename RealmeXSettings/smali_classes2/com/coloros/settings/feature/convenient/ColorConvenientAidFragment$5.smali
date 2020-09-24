.class final Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$5;
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

    .line 183
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_assistant_red_envelope_category"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 2

    .line 186
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$5;->mContext:Landroid/content/Context;

    const-string v1, "oppo.intent.action.ENVELOP_SETTINGS"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
