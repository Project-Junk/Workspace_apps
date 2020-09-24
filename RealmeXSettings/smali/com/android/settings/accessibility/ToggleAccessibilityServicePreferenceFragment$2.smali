.class final Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;
.super Ljava/lang/Object;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;
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

    .line 157
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 161
    invoke-static {}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->b(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-static {p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->a(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Z)V

    .line 168
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->c(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/content/Context;Z)V

    return-void

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Z)V

    .line 172
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;->a:Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->d(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->a(Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/content/Context;Z)V

    return-void
.end method
