.class public Lcom/android/settings/development/DevelopmentSwitchBarController;
.super Ljava/lang/Object;
.source "DevelopmentSwitchBarController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field protected final a:Z

.field public final b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final c:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->c:Lcom/android/settings/widget/SwitchBar;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 38
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    iput-boolean p3, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->a:Z

    .line 39
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 41
    iget-boolean p1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->a:Z

    if-eqz p1, :cond_1

    .line 42
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->c:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->c:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 54
    invoke-virtual {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->c:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->c:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSwitchBarController;->b:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    :cond_0
    return-void
.end method
