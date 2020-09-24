.class public final Lcom/android/settings/widget/f;
.super Lcom/android/settings/widget/g;
.source "SwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$a;


# instance fields
.field private final b:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SwitchBar;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/widget/g;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/widget/f;->b:Lcom/android/settings/widget/SwitchBar;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settings/widget/f;->b:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method

.method public final a(Lcom/android/settingslib/g$a;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/widget/f;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/g$a;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/widget/f;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/widget/f;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/settings/widget/f;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/widget/f;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/widget/f;->b:Lcom/android/settings/widget/SwitchBar;

    .line 1220
    iget-object v0, v0, Lcom/android/settings/widget/SwitchBar;->a:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/settings/widget/f;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->a()V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/settings/widget/f;->b:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->b()V

    return-void
.end method

.method public final onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/android/settings/widget/f;->a:Lcom/android/settings/widget/g$a;

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/android/settings/widget/f;->a:Lcom/android/settings/widget/g$a;

    invoke-interface {p1, p2}, Lcom/android/settings/widget/g$a;->onSwitchToggled(Z)Z

    :cond_0
    return-void
.end method
