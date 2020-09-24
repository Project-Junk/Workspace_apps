.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$1;
.super Ljava/lang/Object;
.source "ColorTtsEnginePreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 48
    instance-of v0, p1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    if-eqz v0, :cond_0

    .line 49
    check-cast p1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    .line 50
    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->isChecked()Z

    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->setChecked(Z)V

    .line 52
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;

    invoke-static {v1, p1, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;Lcom/coloros/settings/feature/othersettings/accessibility/ColorTtsEnginePreference;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
