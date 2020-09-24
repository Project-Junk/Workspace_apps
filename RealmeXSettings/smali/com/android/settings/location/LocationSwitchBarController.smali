.class public Lcom/android/settings/location/LocationSwitchBarController;
.super Ljava/lang/Object;
.source "LocationSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/location/LocationEnabler$a;
.implements Lcom/android/settings/widget/SwitchBar$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field private final a:Lcom/android/settings/widget/SwitchBar;

.field private final b:Landroid/widget/Switch;

.field private final c:Lcom/android/settings/location/LocationEnabler;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->a:Lcom/android/settings/widget/SwitchBar;

    .line 38
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->b:Landroid/widget/Switch;

    .line 39
    new-instance p2, Lcom/android/settings/location/LocationEnabler;

    invoke-direct {p2, p1, p0, p3}, Lcom/android/settings/location/LocationEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$a;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->c:Lcom/android/settings/location/LocationEnabler;

    if-eqz p3, :cond_0

    .line 41
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->c:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {v0, p1}, Lcom/android/settings/location/LocationEnabler;->a(I)Z

    move-result p1

    .line 67
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/android/settings/location/LocationSwitchBarController;->c:Lcom/android/settings/location/LocationEnabler;

    .line 69
    invoke-virtual {v1, v0}, Lcom/android/settings/location/LocationEnabler;->b(I)Lcom/android/settingslib/g$a;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/android/settings/location/LocationSwitchBarController;->c:Lcom/android/settings/location/LocationEnabler;

    .line 71
    invoke-virtual {v2, v0}, Lcom/android/settings/location/LocationEnabler;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 75
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, v1}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/g$a;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->a:Lcom/android/settings/widget/SwitchBar;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 80
    :goto_0
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->b:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 82
    iget-boolean p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->d:Z

    if-eqz p2, :cond_1

    .line 83
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 85
    :cond_1
    iget-object p2, p0, Lcom/android/settings/location/LocationSwitchBarController;->b:Landroid/widget/Switch;

    invoke-virtual {p2, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 86
    iget-boolean p1, p0, Lcom/android/settings/location/LocationSwitchBarController;->d:Z

    if-eqz p1, :cond_2

    .line 87
    iget-object p1, p0, Lcom/android/settings/location/LocationSwitchBarController;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->d:Z

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->d:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->d:Z

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/settings/location/LocationSwitchBarController;->d:Z

    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 97
    iget-object p1, p0, Lcom/android/settings/location/LocationSwitchBarController;->c:Lcom/android/settings/location/LocationEnabler;

    .line 1112
    iget-object v0, p1, Lcom/android/settings/location/LocationEnabler;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1115
    invoke-virtual {p1}, Lcom/android/settings/location/LocationEnabler;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p2, 0x4

    const-string v1, "LocationEnabler"

    .line 1118
    invoke-static {v1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Restricted user, not setting location mode"

    .line 1119
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_0
    iget-object p2, p1, Lcom/android/settings/location/LocationEnabler;->d:Lcom/android/settings/location/LocationEnabler$a;

    if-eqz p2, :cond_1

    .line 1122
    iget-object p1, p1, Lcom/android/settings/location/LocationEnabler;->d:Lcom/android/settings/location/LocationEnabler$a;

    const/4 p2, 0x1

    invoke-interface {p1, v0, p2}, Lcom/android/settings/location/LocationEnabler$a;->a(IZ)V

    :cond_1
    return-void

    .line 1126
    :cond_2
    iget-object v0, p1, Lcom/android/settings/location/LocationEnabler;->b:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/android/settingslib/l;->a(Landroid/content/Context;ZI)V

    .line 1128
    invoke-virtual {p1}, Lcom/android/settings/location/LocationEnabler;->a()V

    return-void
.end method
