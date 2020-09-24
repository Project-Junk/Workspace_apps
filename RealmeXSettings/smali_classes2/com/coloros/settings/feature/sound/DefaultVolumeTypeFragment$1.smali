.class final Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment$1;
.super Ljava/lang/Object;
.source "DefaultVolumeTypeFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment$1;->a:Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 66
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result p1

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment$1;->a:Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->a(Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_volume_type_coloros_six"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment$1;->a:Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "default_volume_type"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment$1;->a:Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->a(Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;I)V

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment$1;->a:Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/sound/DefaultVolumeTypeFragment;->finish()V

    const/4 p1, 0x1

    return p1
.end method
