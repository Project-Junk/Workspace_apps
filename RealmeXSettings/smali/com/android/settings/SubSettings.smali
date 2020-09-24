.class public Lcom/android/settings/SubSettings;
.super Lcom/android/settings/SettingsActivity;
.source "SubSettings.java"


# static fields
.field private static final EXTRA_ATTACH_TO_BASE_LAYOUT:Ljava/lang/String; = "attach_to_base_layout"


# instance fields
.field private mAttachToBaseLayout:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/settings/SubSettings;->mAttachToBaseLayout:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected attachFragmentToBaseLayout()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/settings/SubSettings;->mAttachToBaseLayout:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/settings/SubSettings;->mAttachToBaseLayout:Ljava/lang/Boolean;

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "attach_to_base_layout"

    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SubSettings;->mAttachToBaseLayout:Ljava/lang/Boolean;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SubSettings;->mAttachToBaseLayout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launching fragment "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/SubSettings;->finish()V

    const/4 v0, 0x1

    return v0
.end method
