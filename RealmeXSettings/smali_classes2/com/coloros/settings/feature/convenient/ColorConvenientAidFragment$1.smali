.class final Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$1;
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


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 84
    iput-object p2, p0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$1;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "navigation_bar"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$1;->mContext:Landroid/content/Context;

    const-string v1, "oppo.intent.action.NAVIGATION_BAR_SETTINGS"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/ColorConvenientAidFragment$1;->a:Landroid/content/Context;

    .line 88
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
