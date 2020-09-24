.class public final Lcom/android/settings/deletionhelper/b;
.super Ljava/lang/Object;
.source "AutomaticStorageManagerSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$a;


# instance fields
.field a:Lcom/android/settings/widget/SwitchBar;

.field private b:Landroid/content/Context;

.field private c:Lcom/android/settingslib/core/instrumentation/d;

.field private d:Landroidx/preference/Preference;

.field private e:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/instrumentation/d;Landroidx/preference/Preference;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings/deletionhelper/b;->b:Landroid/content/Context;

    .line 52
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/deletionhelper/b;->a:Lcom/android/settings/widget/SwitchBar;

    .line 53
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/instrumentation/d;

    iput-object p1, p0, Lcom/android/settings/deletionhelper/b;->c:Lcom/android/settingslib/core/instrumentation/d;

    .line 54
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iput-object p1, p0, Lcom/android/settings/deletionhelper/b;->d:Landroidx/preference/Preference;

    .line 55
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentManager;

    iput-object p1, p0, Lcom/android/settings/deletionhelper/b;->e:Landroidx/fragment/app/FragmentManager;

    .line 1061
    iget-object p1, p0, Lcom/android/settings/deletionhelper/b;->a:Lcom/android/settings/widget/SwitchBar;

    iget-object p2, p0, Lcom/android/settings/deletionhelper/b;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settingslib/l;->r(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1062
    iget-object p1, p0, Lcom/android/settings/deletionhelper/b;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method


# virtual methods
.method public final onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 67
    iget-object p1, p0, Lcom/android/settings/deletionhelper/b;->c:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/deletionhelper/b;->b:Landroid/content/Context;

    const/16 v1, 0x1e9

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/deletionhelper/b;->d:Landroidx/preference/Preference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/deletionhelper/b;->b:Landroid/content/Context;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "automatic_storage_manager_enabled"

    .line 69
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const-string p2, "ro.storage_manager.enabled"

    .line 1086
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1089
    invoke-static {}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->a()Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    move-result-object p1

    .line 1090
    iget-object p2, p0, Lcom/android/settings/deletionhelper/b;->e:Landroidx/fragment/app/FragmentManager;

    const-string v0, "ActivationWarningFragment"

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
