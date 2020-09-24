.class public abstract Lcom/android/settings/accounts/AccountPreferenceBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccountPreferenceBase.java"

# interfaces
.implements Lcom/android/settingslib/b/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountPreferenceBase$a;
    }
.end annotation


# static fields
.field protected static final a:Z


# instance fields
.field protected b:Lcom/android/settingslib/b/a;

.field public c:Landroid/os/UserHandle;

.field protected d:Lcom/android/settings/accounts/e;

.field public e:Ljava/text/DateFormat;

.field public f:Ljava/text/DateFormat;

.field private g:Landroid/os/UserManager;

.field private h:Ljava/lang/Object;

.field private i:Landroid/content/SyncStatusObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "AccountPreferenceBase"

    const/4 v1, 0x2

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/accounts/AccountPreferenceBase;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 117
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceBase$a;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/AccountPreferenceBase$a;-><init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->i:Landroid/content/SyncStatusObserver;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->b:Lcom/android/settingslib/b/a;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settingslib/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method

.method protected final b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->b:Lcom/android/settingslib/b/a;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settingslib/b/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->b:Lcom/android/settingslib/b/a;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/b/a;->a(Landroid/content/Context;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->a()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->e:Ljava/text/DateFormat;

    .line 97
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->f:Ljava/text/DateFormat;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "user"

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->g:Landroid/os/UserManager;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->g:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 61
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/m;->a(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->c:Landroid/os/UserHandle;

    .line 63
    new-instance v0, Lcom/android/settingslib/b/a;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->c:Landroid/os/UserHandle;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/settingslib/b/a;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/b/a$a;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->b:Lcom/android/settingslib/b/a;

    .line 64
    new-instance p1, Lcom/android/settings/accounts/e;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->b:Lcom/android/settingslib/b/a;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->c:Landroid/os/UserHandle;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/accounts/e;-><init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/b/a;Landroid/os/UserHandle;)V

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->d:Lcom/android/settings/accounts/e;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->h:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->i:Landroid/content/SyncStatusObserver;

    const/16 v1, 0xd

    invoke-static {v1, v0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceBase;->h:Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->b()V

    return-void
.end method
