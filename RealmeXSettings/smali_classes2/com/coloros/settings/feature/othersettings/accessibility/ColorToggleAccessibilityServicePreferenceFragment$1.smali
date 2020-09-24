.class final Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment$1;
.super Ljava/lang/Object;
.source "ColorToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment$1;->a:Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleAccessibilityServicePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
