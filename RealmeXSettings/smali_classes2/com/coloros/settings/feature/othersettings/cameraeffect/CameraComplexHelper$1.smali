.class final Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper$1;
.super Ljava/lang/Object;
.source "CameraComplexHelper.java"

# interfaces
.implements Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f120490

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f12047f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper$1;->a:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraComplexHelper;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraEffectFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method
