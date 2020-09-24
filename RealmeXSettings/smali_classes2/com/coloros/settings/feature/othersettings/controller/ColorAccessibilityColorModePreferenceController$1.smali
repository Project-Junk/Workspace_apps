.class final Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController$1;
.super Ljava/lang/Object;
.source "ColorAccessibilityColorModePreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;->setChecked(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;Z)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController$1;->b:Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;

    iput-boolean p2, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 46
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController$1;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 2045
    :goto_0
    invoke-static {}, Lcom/color/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2048
    invoke-static {v1, v0}, Lcom/color/compat/content/res/ConfigurationNative;->setAccessibleChanged(Landroid/content/res/Configuration;I)V

    .line 2049
    invoke-static {v1}, Lcom/color/compat/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 47
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController$1;->b:Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController$1;->a:Z

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/controller/ColorAccessibilityColorModePreferenceController;->dcsState(Z)V

    return-void
.end method
