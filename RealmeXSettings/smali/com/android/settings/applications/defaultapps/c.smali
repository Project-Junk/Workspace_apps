.class public final Lcom/android/settings/applications/defaultapps/c;
.super Lcom/android/settings/applications/defaultapps/b;
.source "DefaultWorkAutofillPreferenceController.java"


# instance fields
.field private final d:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/b;-><init>(Landroid/content/Context;)V

    .line 35
    iget-object p1, p0, Lcom/android/settings/applications/defaultapps/c;->b:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/m;->a(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/c;->d:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/settingslib/applications/b;)Landroid/content/Intent;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 73
    :cond_0
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$a;

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/c;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/c;->d:Landroid/os/UserHandle;

    .line 75
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/settingslib/applications/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$a;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$a;->a()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected final a()Lcom/android/settingslib/applications/b;
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/c;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/c;->d:Landroid/os/UserHandle;

    .line 56
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-string v2, "autofill_service"

    .line 53
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/android/settingslib/applications/b;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/c;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/c;->a:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/c;->d:Landroid/os/UserHandle;

    .line 61
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 62
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settingslib/applications/b;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Landroid/content/Intent;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/c;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/c;->d:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "default_autofill_work"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/c;->d:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 43
    :cond_0
    invoke-super {p0}, Lcom/android/settings/applications/defaultapps/b;->isAvailable()Z

    move-result v0

    return v0
.end method
