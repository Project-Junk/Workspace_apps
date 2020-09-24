.class final Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 2

    .line 369
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->g(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->g(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    const-string p1, "checked"

    if-eqz p2, :cond_1

    .line 371
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object p2, p2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 372
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    iget-object p2, p2, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 376
    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$4;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    :cond_2
    :goto_0
    return v0
.end method
