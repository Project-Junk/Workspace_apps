.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$1;
.super Ljava/lang/Object;
.source "ColorToggleFeaturePreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;Z)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$1;->b:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$1;->b:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$1;->b:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment$1;->a:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method
