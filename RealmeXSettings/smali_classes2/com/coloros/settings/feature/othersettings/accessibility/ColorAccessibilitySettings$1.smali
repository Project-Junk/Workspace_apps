.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$1;
.super Ljava/lang/Object;
.source "ColorAccessibilitySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorAccessibilitySettings;)V

    :cond_0
    return-void
.end method
